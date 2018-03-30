## Overview
The main idea of the sdk test can be described by next img: 
```
|-----------------|--|
|   test-xxx.xml  |A |
|-----------------|N |
|test-scenario.xml|T |
|--------------------|
           |   
           v
|--------------------|
|  XXX-sdk-examples  |
|--------------------| 
           |   
           v
|--------------------|
|      XXX-sdk       |
|--------------------|
           |   
           v   
|--------------------|
|Hyperwallet REST API|
|--------------------|            
```
## How to run the test

Prerequisites: docker should be installed.

1. create image:
```
docker build -t hyperwallet/test .
```
2. run container and attach to it:
```
docker run -it --name test hyperwallet/test 
``` 

3. run test for XXX platform (where XXX is one of java|node):
```
cd app

ant -f test-XXX.xml -Dhw.username=??? -Dhw.password=??? -Dhw.programToken=???
```
4. BUILD SUCCESSFUL - a sign that the test passed successfully
