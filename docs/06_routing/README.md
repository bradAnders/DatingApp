# 6. Routing in Angular

## Install Ngx-Toastr
```s
client $ npm install ngx-toastr@13.0.0
```

## Add route guard
```s
client $ cd app/src/_guards
_guards $ ng g guard auth --skip-tests
? Which interfaces would you like to implement? CanActivate
CREATE src/app/_guards/auth.guard.ts (457 bytes)
```

## Install bootswatch
```s
_guards $ cd ../..
client $ npm install bootswatch
```

## Create a new shared module
```s
client $ cd src/app
app $ mkdir _modules
app $ cd _modules
_modules $ ng g m shared --flat
```
