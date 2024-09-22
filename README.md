# Angular Projects
NPM Project

1. Angular Version  
2. Select Node Version from https://v17.angular.io/guide/versions  
Check Node version
```bash
node -v                      
v21.5.0
```
3. Instal Node
```bash
nvm install node
nvm install 18
```  
4. list  
```bash
nvm list      
->     v18.20.4
        v22.9.0
         system
default -> node (-> v22.9.0)
iojs -> N/A (default)
unstable -> N/A (default)
node -> stable (-> v22.9.0) (default)
stable -> 22.9 (-> v22.9.0) (default)
lts/* -> lts/iron (-> N/A)
lts/argon -> v4.9.1 (-> N/A)
lts/boron -> v6.17.1 (-> N/A)
lts/carbon -> v8.17.0 (-> N/A)
lts/dubnium -> v10.24.1 (-> N/A)
lts/erbium -> v12.22.12 (-> N/A)
lts/fermium -> v14.21.3 (-> N/A)
lts/gallium -> v16.20.2 (-> N/A)
lts/hydrogen -> v18.20.4
lts/iron -> v20.17.0 (-> N/A)
```
## set default versions
```console
nvm alias default v18.20.4
default -> v18.20.4
```  

## Install Angular   
```console
npm install -g @angular/cli
```


## Install specific version  
```console
npm install -g @angular/cli@16
```  

## Angular Version  
```console
ng version
```  

## Create new angular project
```console
ng new hello-world
```  

## To run the app
```console
ng serve
```  

## To add the new component
```console
ng generate component home
```  


## References:  
1. https://v17.angular.io/guide/versions    
2. https://v17.angular.io/guide/releases  

