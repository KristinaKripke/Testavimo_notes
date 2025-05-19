### FE (front-end) vs BE (back-end)

Client - server architecture

Web app - turi daug interaktyvumo 
Web page - daugiau informacinio turinio, interaktyvumo nera daug


Monolitic architecture - visi programiniai komponentai yra vienoj vietoj. Jei kazkas neveikia, greiciausiai neveiks visa programa. Jei yra atnaujinimas, turi buti atnaujinta visa sistema. Pliusai - viskas veikia greiciau; saugesne sistema.

Microservice architecture - visi programos komponentai yra isskaidyti i mazesnius komponentus, kurie tarpusavyje susikalba API pagalba. Komponentai nepriklauso vienas nuo kito (jei kazkas ir neveikia, tai vis vien veiks visi kiti (buna isimciu)). Kiekviena sistemos komponenta galima atnaujinti atskirai. Minusai - labai svarbu internetinis rysys, kad viskas galetu komunikuoti; saugumas.

### System integrations

API architecture styles:

RESTful API
GraphQL 
SOAP API
RPS (gRPS)

JSON (dazniausiai naudojamas duomenu formatas)

Client -> request 
Server -> response

CRUD -> Create, Read, Update, Delete

**RESTful API** 
REST API - stateless (nesaugo statuso, kiekviena karta kreipiantis i serveri jis gauna kaip nauja uzklausa)
CRUD -> http method 

Veikia su http/https protokolais

base_url + endpoint

Client request messages:
1. starting line
    1. req method: GET, POST, PUT, DELETE
    2. url -> base_url + endpoint
2. header -> metadata (kiek duomenu, kokiu formatu mums reikia)
3. body: JSON (duomenys) -> POST, PUT, PATCH

Server response messages:
1. starting line 
    1. response code: 100 (info), 200 (viskas gerai), 300, 400 (klaida pas klienta), 500 (serverio klaida)
    2. url
2. header -> metadata
3. body -> JSON

http methods:
* GET (read)
* POST (create)
* PUT (update)
* PATCH (update)
* DELETE (delete)

Documentation is mandatory for API.
We must know all the information: where and how to connect, what actions to perform, what kind of metadata to use.
