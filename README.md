# C-sharp-sample-cicd-deploy

I want to create a ample c# project and dockerize it and push it to azure git and then deploy it on azure app-service


We create **Dockerfile** beside .cs and .csproj

Let's build our image file
```bash
docker build -t my-csharp-app .
```

To run container:
```bash
docker run -p 8080:80 my-csharp-app
```

Now you should see a "Hello World" page on localhost:8080 like this:

![image](https://github.com/user-attachments/assets/2e3215af-04ad-4840-8d08-822c7fbdd8cd)
 
