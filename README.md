# Shopping-Cart-Sample

Follow the steps provided to setup your environment, build and test

## Dev Environment Setup

Once you have cloned your code to your local, ensure you have Grails and java 8.

### GVM installation

```
sudo apt get install curl 

curl -s get.gvmtool.net | bash
```

### Install grails

```
gvm install grails 2.3.11
gvm use grails 2.3.11
```

### Upgrade Spring repo

Do the following steps,

* Go to your local Grails lib directory to find springloaded jar. For me that was /usr/local/Cellar/grails/2.3.11/libexec/lib/org.springframework/springloaded/jars/
* Remove existing 1.2.1 jars (I removed pom file, too, but not necessary)
* Download latest springloaded jar and place into the jars subdir:

```
wget http://repo.spring.io/libs-snapshot-local/org/springframework/springloaded/1.2.2.BUILD-SNAPSHOT/springloaded-1.2.2.BUILD-SNAPSHOT.jar
```

### Copy sample images to your local/remote machine location

* Copy the 'demo' directory from resource images path(/web-app/images/) and paste it to '/opt/data/migration/' directory
* Copy the 'products.xml' file from path (/Sample-data/)and paste it to same '/opt/data/migration/' directory
* Make directory '/opt/data/upload/images/'.  

If you want to change the directory path, use 'DataSource.groovy' (grails-app/conf/DataSource.groovy)
 
## Running the App

navigate to the cloned directory execute the following commands

```
grails run-app
```
