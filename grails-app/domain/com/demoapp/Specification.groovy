package com.demoapp

class Specification {

    String name;
    
    String value;
    
    static belongsTo = [product:Product]  
    
    static constraints = {
    }
}
