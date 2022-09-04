# 4. Authentication

## Add columns to Users table
```ps
API $ dotnet ef migrations add UserPasswordAdded
API $ dotnet ef database update
```

## Clear out data from the database
```ps
API $ dotnet ef database drop
API $ dotnet ef database update
```

## Install token package
```ps
API $ dotnet add package System.IdentityModel.Tokens.Jwt -v 6.22.1 -s https://api.nuget.org/v3/index.json
API $ dotnet add package Microsoft.AspNetCore.Authentication.JwtBearer -v 6.0.8 -s https://api.nuget.org/v3/index.json
```