# 8. Extending the API

## Extend the user table
```s
API $ dotnet ef migrations add ExtendedUserEntity
```

## Undo the last migration and repeat for the new schema
```s
API $ dotnet ef migrations remove
API $ dotnet ef migrations add ExtendedUserEntity
API $ dotnet ef database update
```
