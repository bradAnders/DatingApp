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

## Generate random json data
Navigate to [Json Generator](https://json-generator.com/) and paste the following json.
Copy and paste the output to [API/Data/UserSeedData.json](../../API/Data/UserSeedData.json)
```json
[
  '{{repeat(5)}}',
  {
    UserName: '{{firstName("female")}}',
    Gender: 'female',
    DateOfBirth: '{{date(new Date(1950,0,1), new Date(1999, 11, 31), "YYYY-MM-dd")}}',
    KnownAs: function(){ return this.UserName; },
    Created: '{{date(new Date(2019, 0, 1), new Date(2020,5,30), "YYYY-MM-dd")}}',
    LastActive: '{{date(new Date(2020, 4, 1), new Date(2020,5,30), "YYYY-MM-dd")}}',
    Introduction: '{{lorem(1, "paragraphs")}}',
    LookingFor: '{{lorem(1, "paragraphs")}}',
    Interests: '{{lorem(1, "sentences")}}',
    City: '{{city()}}',
    Country: '{{country()}}',
    Photos: [
        {
          Url: function(num) {
          return 'https://randomuser.me/api/portraits/women/' + num.integer(1,99) + '.jpg';
        },
        IsMain: true
      }
    ]
  }
]
```

## Drop the existing database and restart the API to rehydrate
```s
API $ dotnet ef database drop
API $ dotnet watch run
```

## Install AutoMapper
```s
API $ dotnet add package AutoMapper.Extensions.Microsoft.DependencyInjection -v 8.0.1 -s https://api.nuget.org/v3/index.json
```
