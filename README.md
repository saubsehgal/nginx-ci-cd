# Ubuntu Nginx App

This project contains a simple Ubuntu docker image configured with Nginx and Flask to serve a simple 
get endpoint that returns ```CI/CD Demo 1```. 

### To run the image 


1. Build the image

  ```
  $ docker build -t image-name .
  ```

3. Launch a container and exposing the port.

  ```
  $ docker run --name container-name -p 8080:80 -d image-name
  ```
  Then you can access `http://localhost:8080`



### CI-CD using Jenkins
The main aim of this exercise is to demonstrate how one can continuously 
build and test his/her changes with ease (Devs should focus on writing awesome code. 
Rest the library will do) This is achieved by - 
- Abstracting all the stages 
  in a ```shared-library``` which one can reference in the pipeline with the parameters. 
- The library contains stages to Build -> Test -> Scan -> Push the image to registry.
- Push stage only executes when the changes are merged to master.

```Library is made extensible and one can easily add stages according to requirments.```



