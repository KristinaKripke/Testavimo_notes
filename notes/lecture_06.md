## 1. Testing levels and boxing

Testing levels:
    1. Unit tests
    2. Integration tests
    3. System tests
    4.UAT/E2E (User acceptance testing/end to end)

Unit and integration tests performed by developers
System, E2E, UAT tests perfromed by QA.

UAT - user acceptance tests
Alfa tests - by QA team 
Beta tests - by customer team

BE - backend
FE - frontend

BOXING
White box: 
    All tests arranged by coding
        - unit and integration tests
        - reqiure BE 

Grey box: 
    - we understand validation based on app code
    - system testing require BE
    - E2E require FE

Black box:
    - require FE (UI/UX)
    - E2E, UAT 
    - System testing (require BE; using tools such as POSTMAN, newman) with REST API style


## 2. Software dev. methodologies: Waterfall, Agile

SDLC - software development lifecycle
STLC - software testing lifecycle

PO - project owner 

Product and project companies

Requirements:
    1. Customer requirements
    2. System requirements
    3. Programming specification

build v0.0.1 
 > registration fn

 build v0.0.2 
 > registration fn (old)
 > fixed bugs
 > login fn

 build v0.0.3
 > registration fn (old)
 > login fn (old)
 > fixed bugs
 > item catalog fn

Waterfall: linear and sequential. Each phase (e.g. requirements -> design -> implementation -> testing -> maintenance) must be completed before the next one begins.

Agile: Iterative and incremental. Development is done in small cycles (sprints), and features are delivered continuously.

Testing: 
> Waterfall: Testing happens after development is complete 
> Agile: Testing happens continously during development



