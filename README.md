# C-sharp-sample-cicd-deploy

I want to create a ample c# project and dockerize it and push it to azure git and then deploy it on azure app-service

Requirements in ubuntu:
```bash
wget https://packages.microsoft.com/config/ubuntu/24.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get update
sudo apt-get install -y dotnet-sdk-6.0
```

Then we create to cs file : Program.cs and MyWebApp.csproj

Now time to build dotnet application
```bash
dotnet new web -o MyWebApp
cd MyWebApp
dotnet build
```
This would be result in case of succession:
![image](https://github.com/user-attachments/assets/32d72f42-49d3-4c6f-ad6b-058cb531b2b6)

Now we create **Dockerfile**

Let's build our image file
```bash
docker build -t mywebapp .
```
