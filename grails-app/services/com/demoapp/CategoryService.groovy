package com.demoapp

import grails.transaction.Transactional

@Transactional
class CategoryService {

    def list() {
        def categoryList = [:]
        categoryList["1"] = "Dresses"
        categoryList["2"] = "Tops"
        categoryList["3"] = "Bottoms"
        categoryList["4"] = "Jackets"
        categoryList["5"] = "Sweaters"
        categoryList["6"] = "Gym Wear"
        categoryList["7"] = "Others"
        return categoryList

    }
}
