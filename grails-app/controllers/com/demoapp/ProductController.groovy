package com.demoapp



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import com.demoapp.CategoryService

@Transactional(readOnly = true)
class ProductController {
    
    CategoryService categoryService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index() {
        def categoryList = categoryService.list()

        def productList = Product.findAll("from Product", [offset:1, max: 8] )
        println"productList: "+productList
        render(view:'search', model: [categories: categoryList, products: productList])
    }

    def show(Product productInstance) {
        respond productInstance
    }

    def create() {
        respond new Product(params)
    }
    
    def detail() {
        println "id: "+params.id
        def categoryList = categoryService.list()
        
//        def product = Product.get(params.id)
        def currentProduct = Product.get(1) //Uncomment above and remove this hardcoded line 
        println "pro : " +currentProduct.images[0].product 
        def productList = Product.findAll("from Product", [offset:3, max: 6])
        render(view:'detail', model: [categories: categoryList, currentProduct: currentProduct, productList: productList])
    }
    
    def search() {
        def categoryList = categoryService.list()
        
        def categoryName = params.category
        def category
        if(categoryName && !categoryName.equals("all")) {
            category = Category.findByName(categoryName)
        }
        def searchValue = params.name
        println "searchValue: "+searchValue
        def offset = 0
        def max = 8
        if(params.filter) {
           def range = params.filter.split("-")
           offset = range[0].toInteger() 
           max = (range[1].toInteger() - range[0].toInteger()) + 1
        }
        
//        def products = Product.createCriteria().list(max: max, offset: offset) {
//        }
        def products = Product.createCriteria().list() {
            if(category) {
                eq('category', category)
            }
            if(searchValue) {
                like("name", "%" + searchValue + "%")
            }
        }
//        def products = Product.findAll("from Product", [offset:2, max: 8])
        render(view:'search', model: [categories: categoryList, products: products])
    }

    @Transactional
    def save(Product productInstance) {
        if (productInstance == null) {
            notFound()
            return
        }

        if (productInstance.hasErrors()) {
            respond productInstance.errors, view:'create'
            return
        }

        productInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'product.label', default: 'Product'), productInstance.id])
                redirect productInstance
            }
            '*' { respond productInstance, [status: CREATED] }
        }
    }

    def edit(Product productInstance) {
        respond productInstance
    }

    @Transactional
    def update(Product productInstance) {
        if (productInstance == null) {
            notFound()
            return
        }

        if (productInstance.hasErrors()) {
            respond productInstance.errors, view:'edit'
            return
        }

        productInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Product.label', default: 'Product'), productInstance.id])
                redirect productInstance
            }
            '*'{ respond productInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Product productInstance) {

        if (productInstance == null) {
            notFound()
            return
        }

        productInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Product.label', default: 'Product'), productInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
