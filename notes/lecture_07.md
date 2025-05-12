## 1. Regression, Smoke, Exploratory, Ad-hoc testing

 -  Regression - new code damages old code. 

Regresion test: tai testavimas, kurio tikslas įsitikinti, kad nauji pakeitimai programoje nesugadino jau anksčiau veikusių funkcijų. Kitaip tariant, po kodo pekeitimų (pvz. naujos funkcijos, klaidų pataisymų, refaktoringo), testuojama, ar visa likusi sistema vis dar veikia kaip turėtų.

Refactoring - kodo optimatizacija (nėra naujų funkcijų, jos tiesiog gerinamos).

Regresija gaudoma automatiniais testais.

Kai automatiniai testai randa klaidas, reikia jas pertikrinti rankiniu būdu.

Core and secondary functionalities

 - Smoke test:
Tikslas - patikrinti ar produktas yra tinkamas testavimui, tikrinant tik pagrindines funkcijas.

Happy path -> only positive tests in core functionalities
(atliekami po kievieno build'o, dazniausiai automatizuoti)

- Exploratory testing
Atliekami neturint jokios dokumentacijos.
Remiamės savo patirtimi ir žiniomis.
Pirma susipažįstam su programine įranga, pasirašom kažkokią dokumentaciją.
Registruojam defektus.

- Ad-hoc testai:
Jie taip pat neturi dokumentacijos, bet mes jos taip pat neruošiam.
Neformalus, neplanuotas testavimas.
Remiasi tik savo patirtimi, žiniomis, intuicija.

## 3. TC managment systems (Testomat)







