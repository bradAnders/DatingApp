# DatingApp

A mirror of the Udemy course [Build an app with ASPNET Core and Angular from scratch](https://www.udemy.com/course/build-an-app-with-aspnet-core-and-angular-from-scratch/)

# 1. Prerequsites

## Install dotnet
dotnet --version
```ps
$ dotnet --version
6.0.400
```

# 2. Asp.Net API Setup

## Nuget package install
```ps
$ dotnet add package Swashbuckle.AspNetCore --version 6.2.3
$ dotnet add package Microsoft.EntityFrameworkCore.Sqlite -v 6.0.4 -s https://api.nuget.org/v3/index.json
```

## Entity framework setup, data migrations 

Install dotnet entity framework
```ps
$ dotnet tool install --global dotnet-ef --version 7.0.0-preview.7.22376.2
```

Parse the API/Entities classes to generate entity framework migrations
```ps
$ dotnet ef migrations add InitialCreate -o Data/Migrations
```

Migrate the sqlite server
```ps
$ dotnet ef database update
```