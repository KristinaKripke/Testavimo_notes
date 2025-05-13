### Smoke testing autobusubilietai.lt

TC_1. Registracija
TC_2. Prisijungimas
TC_3. Keliones paieska (keliones pasirinkimas: galima skaidyti i viena ir i abi puses)
TC_4. Pirkimas (duomenu pateikimas)
TC_5. Apmokejimas (mokejimo pasirinkimas)
TC_6. Atsijungimas
TC_7. Issiregistravimas
TC_8. UI/UX defektai (tai nera privaloma, kaip papildomas punktas)

Papildomi testai mobiliai aplikacijai:
1. Idiegimas
2. Isdiegimas


Simulate and emulate

### Defects and severities
ISTQB

Keletas poziurio tasku:
1. Programuotojas
2. Testuotojas
3. PO - project owner
4. Klientas

Workaround -> funkcionalumo apejimas

Severities:
* Critical 
    Prie kritiniu defektu workaround nera; kyla tik is pozityviu testu.
    Kritinis defektas, del kurio neimanoma testavimo ar naudoti sistemos. Visa kas susije su saugumu, nuluzimais (crashes), duomenu praradimu ir pan.
    Dazniausiai susije su funkciniais testais, pagrindinemis funkcijomis. Aptinkama atliekant smoke, regression testus. 

* High 
    Dideles itakos turintis defektas, kuris daro didele zala sistemai, bet gali buti tam tikri budai ji apeiti.
    Pvz. duomenu praradimas, sisteminiai klaidingi skaiciavimai.
    Susije su pagrindinemis funkcijomis, workaround vartotojas atlikti pats negali. Dazniausiai susije su funkciniais testais, pagrindinemis funkcijomis.
    Klaidos gaunamos atliekant pozityvius testus.

* Medium 
    Svarbus defektas, kuris daro pastebima itaka sistemos funkcionalumui, bet vis dar imanoma naudotis sistema. 
    Pvz. neveikiantis konkretus funkcionalumas, neteisingai pateikiami duomenys. 
    Dazniausiai susijes su salutinemis funkcijomis, workaround lengvai atlieka pats vartotojas, klaidos gaunamos is negatyviu testu, UI/UX grubios klaidos.

* Low
    Daro minimalia itaka sistemos veikima arba neturi jokios itakos funkcionalumui, bet gali buti vizualine ar kosmetine klaida. 
    Pvz. nedideli UI neatitikimai, neteisingas pranesimu formatavimas, rasybos klaidos, mygtuko isdestumo neatitikimas ir t.t.

### Bug lifecycle

1. New 
2. Assigned 
3. Open
4. Fixed
5. Pending retest
6. Retest
7. Verified
8. Closed (sanity testing must be performed)
