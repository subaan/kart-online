package com.demoapp

import grails.transaction.Transactional

@Transactional
class ProductService {
    
    def grailsApplication

    def list(type) {
        
        def products = Product.withCriteria {
            if(type) {
                eq('type', type)
            }
        }
        
        return products;

    }        
    
    def productsInit() {
        
        def description = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas, molestiae odit? Animi eligendi, optio culpa cupiditate, minus, eaque sint delectus non id accusamus suscipit illum quaerat quibusdam expedita dolore quos distinctio corporis quae. Error molestiae consequatur nostrum placeat architecto maiores commodi ipsam incidunt, adipisci tempora ratione soluta aliquam, velit voluptatum dolore reprehenderit quis aut. Obcaecati nam non quis praesentium deserunt qui consequatur illum quae nobis? Optio eos, sit corporis quam distinctio, ad aspernatur quisquam ut, corrupti accusamus saepe labore veritatis sed est rerum. Iste odit reiciendis mollitia culpa illum eligendi, soluta magnam voluptatum ut sequi vitae vel labore quae, ducimus."
        def type = com.demoapp.ProductType.valueOf("NEW");
        
        def newProduct1 = new Product()
        newProduct1.name = "WranglerGrey Printed Slim Fit Round Neck T-Shirt"
        newProduct1.description = description
        newProduct1.price = 15
        newProduct1.oldPrice = 17
        newProduct1.type = type
        newProduct1.offerPercentage = 15
        newProduct1.availabilty = Availabilty.valueOf("READY_STOCK");
        newProduct1.addToImages(new Image(url: "demo/p1-1.jpg", orderNumber: 1))
        newProduct1.addToImages(new Image(url: "demo/p1-2.jpg", orderNumber: 2))
        newProduct1.addToImages(new Image(url: "demo/p1-3.jpg", orderNumber: 3))
        newProduct1.addToImages(new Image(url: "demo/p1-4.jpg", orderNumber: 4))
        newProduct1.addToImages(new Image(url: "demo/p1-large-1.jpg", orderNumber: 1))
        newProduct1.addToImages(new Image(url: "demo/p1-large-2.jpg", orderNumber: 2))
        newProduct1.addToImages(new Image(url: "demo/p1-large-3.jpg", orderNumber: 3))
        newProduct1.addToImages(new Image(url: "demo/p1-large-4.jpg", orderNumber: 4))
        newProduct1.addToSpecifications(new Specification(name: "Lorem", value: "Ipsum"))
        newProduct1.addToSpecifications(new Specification(name: "Dolor", value: "Sit Amet"))
        newProduct1.addToSpecifications(new Specification(name: "Consectetur", value: "Adipisicing"))
        newProduct1.addToSpecifications(new Specification(name: "Excepteur", value: "Occaecat"))
       
        if (!newProduct1.save()) {
                newProduct1.errors.allErrors.each { println it }
        }
        
        println "new product: "+newProduct1.id
        
        def newProduct2 = new Product()
        newProduct2.name = "CelioKhaki Printed Round Neck T-Shirt"
        newProduct2.description = description
        newProduct2.price = 15
        newProduct2.oldPrice = 17
        newProduct2.type = type
        newProduct2.offerPercentage = 15
        newProduct2.addToImages(new Image(
            url: "demo/p2-1.jpg",
            orderNumber: 1
            )
        )
        newProduct2.save(flush: true)
        
        def  newProduct3 = new Product()
         newProduct3.name = "CelioOff White Printed Round Neck T-Shirt"
         newProduct3.description = description
         newProduct3.price = 15
         newProduct3.oldPrice = 17
         newProduct3.type = type
         newProduct3.offerPercentage = 15
         newProduct3.addToImages(new Image(
            url: "demo/p3-1.jpg",
            orderNumber: 1
            )
        )
         newProduct3.save(flush: true)
         
        def typeBestSelling = com.demoapp.ProductType.valueOf("BEST_SELLING");
        
        //New arrival products
        def product1 = new Product()
        product1.name = "IncultAcid Wash Raglan Crew Neck T-Shirt"
        product1.description = description
        product1.price = 15
        product1.oldPrice = 17
        product1.type = typeBestSelling
        product1.offerPercentage = 15
        product1.addToImages(new Image(
                url: "demo/p5-1.jpg",
                orderNumber: 1
            )
        )
        product1.save(flush: true)
        
        def product2 = new Product()
        product2.name = "Avoir EnvieOlive Printed Round Neck T-Shir"
        product2.description = description
        product2.price = 15
        product2.oldPrice = 17
        product2.type = typeBestSelling
        product2.offerPercentage = 15
        product2.addToImages(new Image(
                url: "demo/p6-1.jpg",
                orderNumber: 1
            )
        )
        product2.save(flush: true)
        
        
        def product3 = new Product()
        product3.name = "ElaboradoBrown Printed Round Neck T-Shirt"
        product3.description = description
        product3.price = 15
        product3.oldPrice = 17
        product3.type = typeBestSelling
        product3.offerPercentage = 15
        product3.addToImages(new Image(
                url: "demo/p7-1.jpg",
                orderNumber: 1
            )
        )
        product3.save(flush: true)
        
        //Featured products
        def typeFeatured = com.demoapp.ProductType.valueOf("FEATURED");
        def product4 = new Product()
        product4.name = "IncultGeo Print Polo T-Shirt"
        product4.description = description
        product4.price = 13.50
        product4.oldPrice = 15
        product4.type = typeFeatured
        product4.offerPercentage = -10
        product4.addToImages(new Image(
                url: "demo/polo1.jpg",
                orderNumber: 1
            )
        )
        product4.save(flush: true)
        
        def product5 = new Product()
        product5.name = "Tommy HilfigerNavy Blue Printed Polo T-Shirt"
        product5.description = description
        product5.price = 13.50
        product5.oldPrice = 15
        product5.type = typeFeatured
        product5.offerPercentage = -10
        product5.addToImages(new Image(
                url: "demo/polo2.jpg",
                orderNumber: 1
            )
        )
        product5.save(flush: true)
        
        
        def product6 = new Product()
        product6.name = "WranglerNavy Blue Solid Polo T-Shirt"
        product6.description = description
        product6.price = 13.50
        product6.oldPrice = 15
        product6.type = typeFeatured
        product6.offerPercentage = -10
        product6.addToImages(new Image(
                url: "demo/polo3.jpg",
                orderNumber: 1
            )
        )
        product6.save(flush: true)
        
        def product7 = new Product()
        product7.name = "NikeAs Matchup -Pq Grey Polo T-Shirt"
        product7.description = description
        product7.price = 13.50
        product7.oldPrice = 15
        product7.type = typeFeatured
        product7.offerPercentage = -10
        product7.addToImages(new Image(
                url: "demo/polo4.jpg",
                orderNumber: 1
            )
        )
        product7.save(flush: true)
        
        //Collection
        def typeAvailable = com.demoapp.ProductType.valueOf("AVAILABLE");
                
        def product8 = new Product()
        product8.name = "PhosphorusGrey Melange Printed V Neck T-Shirt"
        product8.description = description
        product8.price = 13.50
        product8.oldPrice = 15
        product8.type = typeAvailable
        product8.offerPercentage = -10
        product8.addToImages(new Image(
                url: "demo/vneck1.jpg",
                orderNumber: 1
            )
        )
        product8.save(flush: true)
        
        
        def product9 = new Product()
        product9.name = "PhosphorusGrey Melange Printed V Neck T-Shirt"
        product9.description = description
        product9.price = 13.50
        product9.oldPrice = 15
        product9.type = typeAvailable
        product9.offerPercentage = -10
        product9.addToImages(new Image(
                url: "demo/vneck2.jpg",
                orderNumber: 1
            )
        )
        product9.save(flush: true)
        
        def product10 = new Product()
        product10.name = "United Colors of BenettonNavy Blue Solid V Neck T Shirt"
        product10.description = description
        product10.price = 13.50
        product10.oldPrice = 15
        product10.type = typeAvailable
        product10.offerPercentage = -10
        product10.addToImages(new Image(
                url: "demo/vneck3.jpg",
                orderNumber: 1
            )
        )
        product10.save(flush: true)
        
        
        def product11 = new Product()
        product11.name = "WranglerBlack V Neck T Shirt"
        product11.description = description
        product11.price = 13.50
        product11.oldPrice = 15
        product11.type = typeAvailable
        product11.offerPercentage = -10
        product11.addToImages(new Image(
                url: "demo/vneck4.jpg",
                orderNumber: 1
            )
        )
        product11.save(flush: true)
        
        def product12 = new Product()
        product12.name = "United Colors of BenettonNavy Blue Solid V Neck T Shirt"
        product12.description = description
        product12.price = 13.50
        product12.oldPrice = 15
        product12.type = com.demoapp.ProductType.valueOf("POPULAR")
        product12.offerPercentage = -10
        product12.addToImages(new Image(
                url: "demo/vneck5.jpg",
                orderNumber: 1
            )
        )
        product12.save(flush: true)
        
        
        def product13 = new Product()
        product13.name = "Tagd New YorkGrey Printed V Neck T-Shirts"
        product13.description = description
        product13.price = 13.50
        product13.oldPrice = 15
        product13.type = com.demoapp.ProductType.valueOf("POPULAR")
        product13.offerPercentage = -10
        product13.addToImages(new Image(
                url: "demo/vneck6.jpg",
                orderNumber: 1
            )
        )
        product13.save(flush: true)
        
        
    } 
    
    def importProductsFromXml(String xmlFilePath){
        
        def dataFolderPath = grailsApplication.config.dataFolder;
        def uploadFolderPath = grailsApplication.config.uploadFolder;
        
        println("XmlFilePath : "+xmlFilePath)
        def products = new XmlParser().parse(new File(xmlFilePath))        
        products.product.each() {p ->   
            
            def product = Product.findBySkuNumber(p.skuNumber.text());
            if(!product) {
                product = new Product()
            } else {
                //Deleting old images and specifications associated to Product
                def images = Image.withCriteria {
                    eq('product', product)
                }
                for (def image: images) {            
                    image.delete(flush:true)
                }
                
                def specifications = Specification.withCriteria {
                    eq('product', product)
                }
                for (def specf: specifications) {                                      
                    specf.delete(flush:true)
                }
                
            }            
            product.name = p.name.text();
            product.description = p.description.text();
            product.price = new Double (p.price.text());
            product.oldPrice = new Double (p.oldPrice.text());
            product.offerPercentage = new Double (p.offerPercentage.text());
//            product.category = p.category.text();
            product.skuNumber = p.skuNumber.text();
            product.availabilty = Availabilty.valueOf(p.availabilty.text())
            product.type = ProductType.valueOf(p.type.text()) 
            
            p.specifications.specification.each() {s ->
                product.addToSpecifications(new Specification(name : s.name.text(), value : s.value.text()))
            }
            
            if (!product.save()) {
                product.errors.allErrors.each { println it }
            }
            
            println "New product: "+product.id;
            
            p.images.image.each() {i ->            
                
                def sourceImagePath = dataFolderPath + i.url.text();
                def image = new File(sourceImagePath);
                if(image) {
                              
                    println "SourceImagePath : "+sourceImagePath;
                    
                    String sudDirectory = Integer.toString((int) Math.floor(product.id / 100));
                    String filePath = sudDirectory + "/" + product.id + "/" + i.url.text();

                    def uploadImagePath = uploadFolderPath + filePath;
                    
                    println "UploadImagePath : "+uploadImagePath;
                    
                    (new AntBuilder()).copy(file: sourceImagePath, tofile: uploadImagePath)
                    
                    product.addToImages(new Image(url : filePath, orderNumber : i.orderNumber.text()))
                }                                
            }  
            
            if (!product.save()) {
                product.errors.allErrors.each { println it }
            }
            
            println "----------------------------------";
                                                
        }
    }
    
}
