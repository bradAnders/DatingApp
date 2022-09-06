# Quick Start - Development

## Development machine

[Asp.Net](https://dotnet.microsoft.com/en-us/download/dotnet/6.0)
- Release `6.0.8`
- SDK `6.0.400`

[Node.js](https://nodejs.org/en/download/)
- Release `16.17.0`

[Angular](https://angular.io/)
- Release `8.15.0`

## Project 
```s
$ dotnet restore
```

## API
```s
$ cd API/
API $ dotnet tool install --global dotnet-ef --version 7.0.0-preview.7.22376.2
API $ dotnet ef database update
API $ dotnet dev-certs https --trust
API $ dotnet watch run
```

## Client
```s
$ cd client/ssl
ssl $ ./generate_cert_*OPERATING_SYSTEM*
ssl $ cd ..
client $ npm install
client $ ng serve
```

Documentation sections
1. [Development setup and framework versions](./01_development_setup/)
2. [Initial Asp.Net API and database setup](./02_api_setup/)
3. [Initial Angular client setup](./03_client_setup/)
4. [Basic authentication, backend](./04_authentication/)
5. [Basic authentication, frontend](./05_client_register_and_login/)
