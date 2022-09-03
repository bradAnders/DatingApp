# DatingApp

A mirror of the Udemy course [Build an app with ASPNET Core and Angular from scratch](https://www.udemy.com/course/build-an-app-with-aspnet-core-and-angular-from-scratch/)

# 1. Prerequsites

## Install dotnet
```ps
$ dotnet --version
6.0.400
```

## Install node.js
```ps
$ node --version
v16.17.0
```

## Install angular
```ps
$ npm install -g @angular/cli@12
$ npm @angular --version
8.15.0
$ ng --version

     _                      _                 ____ _     ___
    / \   _ __   __ _ _   _| | __ _ _ __     / ___| |   |_ _|
   / △ \ | '_ \ / _` | | | | |/ _` | '__|   | |   | |    | |
  / ___ \| | | | (_| | |_| | | (_| | |      | |___| |___ | |
 /_/   \_\_| |_|\__, |\__,_|_|\__,_|_|       \____|_____|___|
                |___/


Angular CLI: 12.2.18
Node: 16.17.0 (Unsupported)
Package Manager: npm 8.19.1
OS: win32 x64

Angular:
...

Package                      Version
------------------------------------------------------
@angular-devkit/architect    0.1202.18 (cli-only)
@angular-devkit/core         12.2.18 (cli-only)
@angular-devkit/schematics   12.2.18 (cli-only)
@schematics/angular          12.2.18 (cli-only)

Warning: The current version of Node (16.17.0) is not supported by Angular.
```

# 2. Asp.Net API Setup

## New dotnet solution
```ps
$ dotnet new sln
```

## New api project called API
```ps
$ dotnet new webapi -o API
```

## Add the API project to the solution
```ps
$ dotnet sln add API/
```

## Nuget package install
```ps
API $ dotnet add package Swashbuckle.AspNetCore --version 6.2.3
API $ dotnet add package Microsoft.EntityFrameworkCore.Sqlite -v 6.0.4 -s https://api.nuget.org/v3/index.json
```

## Run the api
```ps
API $ dotnet run
```

## Entity framework setup, data migrations 

Install dotnet entity framework
```ps
API $ dotnet tool install --global dotnet-ef --version 7.0.0-preview.7.22376.2
```

Parse the API/Entities classes to generate entity framework migrations
```ps
API $ dotnet ef migrations add InitialCreate -o Data/Migrations
```

Migrate the sqlite server
```ps
API $ dotnet ef database update
```

## Run the api, reloading for changes
```ps
API $ dotnet watch
```

# 3. Angular View Setup

## New angular client
```ps
client $ ng new client --strict false
? Would you like to add Angular routing? Yes
? Which stylesheet format would you like to use? CSS
```

## Run the client
```ps
client $ ng serve
```

## Install Angular bootstrap
```ps
client $ ng add ngx-bootstrap
```