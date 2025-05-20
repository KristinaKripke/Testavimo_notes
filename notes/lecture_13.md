## HTTP/HTTPS

Hypertext Transfer Protocol - skirta perduoti informacija (tekstas, vaizdas, garsas, paveiksliukai ir t.t.)
Http turi kelias versijas, dazniausiai naudojama Http/1.x

Sniffing attack - skanuojama tinklapio informacija ir i ja bandoma isilauzti. 

https://www.okta.com/identity-101/sniffing-attack/  
https://www.greycampus.com/opencampus/ethical-hacking/sniffing-and-its-types  
https://developer.mozilla.org/en-US/docs/Web/HTTP/Guides/Evolution_of_HTTP  

Https - duomenys matomi, bet uzkoduoti (secure)

## Request methods and response codes

[Request methods](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Methods)  
[Response codes](https://developer.mozilla.org/en-US/docs/Web/HTTP/Reference/Status)   
https://httpstatusdogs.com/  

## API documentation

[news api](https://newsapi.org/docs)  
[jsonplaceholder](https://jsonplaceholder.typicode.com)  
[Petstore api](https://petstore.swagger.io/) 

https://newsapi.org/docs
https://newsapi.org/v2/everything?q=keyword&apiKey=e0a3607fc5434618980712ba0796d335

```json
{
    "id": 456,
    "name": "Some name",
    "key01": "value01",
}
```

baseUrl = example.com
{baseUrl}/v1/booking/:id
{baseUrl}/v1/booking/{id}

{baseUrl}/v1/{id}/booking/
example.com/v1/456/booking/


## Request queries

https://newsapi.org/v2/everything?q=keyword&apiKey=144e0c5c31324ea199b7e9cb410e96d0
https://newsapi.org/v2/everything

? -> indicates query
& -> 'and' require to combine different request into one query

1st parameter: q=keyword -> parameter that contains two parts:
    1. key -> q
    2. value -> continue after '=' -> keyword

2nd parameter:
    1. key -> apiKey
    2. value -> e0a3607fc5434618980712ba0796d335

