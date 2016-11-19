
import com.demoapp.Image
import com.demoapp.Product
import com.demoapp.ProductService

class BootStrap {
    
    ProductService productService
    
    def grailsApplication

    def init = { servletContext ->
        
//        def env = System.getenv()      
//        def filePath = env['DATA_FILE_PATH']
//        
//        if(filePath) {
//            productService.importProductsFromXml(filePath);
//        } else {
//                    //Initial new products for testing
////        productService.productsInit()
//            productService.importProductsFromXml("/home/gemini01/Downloads/products.xml");
//        } 

        
        def dataFolderPath = grailsApplication.config.dataFolder;
          
        new File(dataFolderPath).eachFileMatch(~/.*.xml/) { file ->
            println file.getName()
            productService.importProductsFromXml(dataFolderPath + file.getName());
        }
           
    }
    def destroy = {
    }
}
