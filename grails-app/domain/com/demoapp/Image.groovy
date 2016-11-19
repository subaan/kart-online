package com.demoapp

class Image {   
    
    String url;
    
    String description;    
    
    int orderNumber;
    
    static belongsTo = [product:Product]  
    
    static constraints = {
        description(nullable: true, blank: true)
    }
    
    static mapping = {
        title column: "description", sqlType: "varchar(32767)"
    }
}
