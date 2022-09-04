# 5. Client Login and Register

## Generate a new component with the angular command line tool
```s
client $ cd src/app
app $ ng g c nav --skip-tests
```

## Generate a new service
```s
app $ cd _services
services $ ng g s account --skip-tests
```

## Configure dropdown menu
Get syntax from [Valor Software's `ngx-bootstrap`](https://valor-software.com/ngx-bootstrap/old/7.1.2/#/dropdowns)
```ts
import { BsDropdownModule } from 'ngx-bootstrap/dropdown';
```