package com.demoapp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SpecificationController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Specification.list(params), model:[specificationInstanceCount: Specification.count()]
    }

    def show(Specification specificationInstance) {
        respond specificationInstance
    }

    def create() {
        respond new Specification(params)
    }

    @Transactional
    def save(Specification specificationInstance) {
        if (specificationInstance == null) {
            notFound()
            return
        }

        if (specificationInstance.hasErrors()) {
            respond specificationInstance.errors, view:'create'
            return
        }

        specificationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'specification.label', default: 'Specification'), specificationInstance.id])
                redirect specificationInstance
            }
            '*' { respond specificationInstance, [status: CREATED] }
        }
    }

    def edit(Specification specificationInstance) {
        respond specificationInstance
    }

    @Transactional
    def update(Specification specificationInstance) {
        if (specificationInstance == null) {
            notFound()
            return
        }

        if (specificationInstance.hasErrors()) {
            respond specificationInstance.errors, view:'edit'
            return
        }

        specificationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Specification.label', default: 'Specification'), specificationInstance.id])
                redirect specificationInstance
            }
            '*'{ respond specificationInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Specification specificationInstance) {

        if (specificationInstance == null) {
            notFound()
            return
        }

        specificationInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Specification.label', default: 'Specification'), specificationInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'specification.label', default: 'Specification'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
