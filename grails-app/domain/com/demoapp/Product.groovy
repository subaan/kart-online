package com.demoapp

class Product {

    String name;
    
    String description;
    
    Double price;
    
    Double oldPrice;
    
    Double offerPercentage;
    
    Category category;
    
    String skuNumber;
    
    Availabilty availabilty;
    
    ProductType type = ProductType.valueOf("AVAILABLE")
    
    static hasMany = [specifications: Specification, images: Image]
    
    static constraints = {
        
        category(nullable: true, blank: true)
        skuNumber(nullable: true, blank: true)
        availabilty(nullable: true, blank: true)
    }
    
    static mapping = {      
      title column: "description", sqlType: "varchar(32767)"
    }
}

enum ProductType {
    NEW,
    FEATURED,
    OLD,
    POPULAR,
    BEST_SELLING,
    AVAILABLE
}
