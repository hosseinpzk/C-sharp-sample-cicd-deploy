# Stage 1: Build the application
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /app

# Copy the project file and restore dependencies
COPY *.csproj ./
RUN dotnet restore

# Copy the rest of the application source code
COPY . ./
RUN dotnet publish -c Release -o /app/publish

# Stage 2: Create the runtime image
FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS runtime
WORKDIR /app
COPY --from=build /app/publish .

# Expose the application's port
EXPOSE 80

# Specify the entry point for the application
ENTRYPOINT ["dotnet", "MyWebApp.dll"]
