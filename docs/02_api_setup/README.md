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
API $ dotnet add package Microsoft.EntityFrameworkCore.Sqlite -v 6.0.8 -s https://api.nuget.org/v3/index.json
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