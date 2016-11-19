package com.demoapp

import com.demoapp.CategoryService
import com.demoapp.ProductService

class HomeController {
    
    CategoryService categoryService
    ProductService productService

    def index() { 
        
        def categoryList = categoryService.list()
        def newProducts = productService.list(ProductType.valueOf("NEW"))
        def bestSellingProducts = productService.list(ProductType.valueOf("BEST_SELLING"))
        def featuredProducts = productService.list(ProductType.valueOf("FEATURED"))
        def availableProducts = productService.list(ProductType.valueOf("AVAILABLE"))
        println("Products: "+ newProducts)
        println("BestSellingProducts: "+ bestSellingProducts)
        println("featuredProducts: "+ featuredProducts)
        println("availableProducts: "+ availableProducts)
        render(view:'index', model: [categories: categoryList, newProducts: newProducts, bestSellingProducts: bestSellingProducts,
            featuredProducts: featuredProducts, availableProducts: availableProducts])
    }
}
