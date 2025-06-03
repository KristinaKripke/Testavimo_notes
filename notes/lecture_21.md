Base URL: 
http://localhost:3011/

Endpoints:

GET:
    /users -> list of users
    /users/:userId  -> by user id

Examples: 
    userId = 2
    http://localhost:3011/somename/:userId/users -> http://localhost:3011/somename/2/users 
    http://localhost:3011/somename/{userId}/users -> http://localhost:3011/somename/2/users

POST:
    /users 

PUT
    /users/:userId

PATCH
    /users/:userId

DELETE
    /users/:userId

Breaking change - pakeitimai kai vartotojas nebegali pasiekti puslapio