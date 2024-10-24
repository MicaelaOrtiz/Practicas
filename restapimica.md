# RestApi
## Micaela Ortiz 

### 1. GET 

##### Request
```
GET : https://instagram.com/user?id=1
```
##### Response 

```
{
    "status": 100,
    "users" :{
        "id": 1,
        "nombre": "@Micaortizz_",
         "email": "Micaelaortiz018@gmail.com"
         } 
}
```
### PUT 


```
PUT https://instagram.com/user?id=1
```
```
{
    "email": "MicaOrtiz@gmail.com",
    "password": "1234555"
}
```
##### Response
```
{
    "status": 100,
    "message": "Correo electrónico actualizado exitosamente",
    "user": {
        "id": 1,
        "nombre": "@Micaortizz_",
        "email": "MicaOrtiz@gmail.com"
    }
}
```
### POST 

##### Request 
```
POST : https://instagram.com/login

{
    "nombre": "@Micaortizz_",
    "password": "1234555"
}

```
##### Response 
```
{
    "status": 100,
    "message": "inicio de sesion exitosa ",
    "user": {
        "id": 1,
        "nombre": "@Micaortizz_",
        "email": "MicaOrtiz@gmail.com"
    },
    "token": "eyJhbGciOiJIUzI1NiIsInR"
}

```
### DELETE 
``` 
```
##### Request

```
DELETE https://www.instagram.com/users?id=1
```
```
{
    "nombre": "@Micaortizz_",
    "password": "1234555"
}

```
##### Response 

```
{
    "status":105,
    "message":"usuario de instagram eliminado con exito",

}
```

