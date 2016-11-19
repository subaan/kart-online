//dataSource {
//    pooled = true
//    jmxExport = true
//    driverClassName = "org.h2.Driver"
//    username = "sa"
//    password = ""
//}
//hibernate {
//    cache.use_second_level_cache = true
//    cache.use_query_cache = false
//    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
////    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
//    singleSession = true // configure OSIV singleSession mode
//}

// environment specific settings
environments {
    development {
         dataFolder = "/home/gemini01/data/migration/"
        uploadFolder = "/home/gemini01/data/upload/images/"
        dataSource
       {
           dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
           pooled = true
           url = "jdbc:db2://50.23.58.135:50000/shopcart"
           driverClassName = "com.ibm.db2.jcc.DB2Driver"
           connectionProperties="useUnicode=yes;characterEncoding=utf8;"
           username = "db2inst1"
           password = "db2inst1"
//            dialect = "org.hibernate.dialect.DB2400Dialect.class"
           dialect = "org.hibernate.dialect.DB2Dialect"
//            properties{                      
//                defaultTransactionIsolation = 0
//            }
       }
    }
    test {
        dataFolder = "/opt/data/migration/"
        uploadFolder = "/opt/data/upload/images/"
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=100000;DB_CLOSE_ON_EXIT=FALSE"
        }
    }
    production {
        dataFolder = "/opt/data/migration/"
        uploadFolder = "/opt/data/upload/images/"
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
           pooled = true
           url = "jdbc:db2://50.23.58.135:50000/shopcart"
           driverClassName = "com.ibm.db2.jcc.DB2Driver"
           connectionProperties="useUnicode=yes;characterEncoding=utf8;"
           username = "db2inst1"
           password = "db2inst1"
//            dialect = "org.hibernate.dialect.DB2400Dialect.class"
           dialect = "org.hibernate.dialect.DB2Dialect"
//            properties{                      
//                defaultTransactionIsolation = 0
//            }
            properties {
               // See http://grails.org/doc/latest/guide/conf.html#dataSource for documentation
               jmxEnabled = true
               initialSize = 5
               maxActive = 50
               minIdle = 5
               maxIdle = 25
               maxWait = 10000
               maxAge = 10 * 60000
               timeBetweenEvictionRunsMillis = 5000
               minEvictableIdleTimeMillis = 60000
               validationQuery = "SELECT 1"
               validationQueryTimeout = 3
               validationInterval = 15000
               testOnBorrow = true
               testWhileIdle = true
               testOnReturn = false
               jdbcInterceptors = "ConnectionState"
               defaultTransactionIsolation = java.sql.Connection.TRANSACTION_READ_COMMITTED
            }
        }
    }
}