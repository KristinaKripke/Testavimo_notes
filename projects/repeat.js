function doSomethingA (){
    return "Function doSomethingA in action...";
};

function doSomethingB (text){
    console.log(text);
};

const doSomethingC = function (text){
    console.log(text);
    
};

const doSomethingD = (text) => {
    console.log(text);
    
};

const doSomethingDd = text => console.log(text);

const doSomethingDdd = text => text.toLowerCase();

const doSomethingDddd = text => {
    return text.toLowerCase();
};

console.log(doSomethingA());
doSomethingB('Koks nuostabus rytas');
doSomethingC('Labas rytas');
doSomethingD('Labas vakaras');
doSomethingDd('Viso gero');
console.log(doSomethingDdd('PIRMADIENIS'));
console.log(doSomethingDddd('ANTRADIENIS'));

console.log('\n'+ '='.repeat(100) + '\n');

const calculate = (a, b) => a + b;
console.log(calculate(3, 8));

const calcAdv = (func, a1, b1, c) => func(a1, b1) + c;
console.log(calcAdv(calculate, 2, 3, 4));

const calcAdvA = (func, c, ...args) => {
    return func(...args) + c;
};
console.log(calcAdvA(calculate, 2, 2, 2, 2, 2));

console.log('\n'+ '='.repeat(100) + '\n');


const car1 = {
    type: "audi",
    year: 2000,
    engine:{
        kw: 80,
        cap: 1120,
        fuelType: "Diesel"
    }
};

const car2 = {
    type: "toyota",
    year: 2015,
    engine:{
        kw: 200,
        cap: 4254,
        fuelType: "98"
    }
};

cars = [car1, car2];

console.log(cars);
console.log('Object:\n', cars[1]);
console.log(`type is ${cars[1].type}`);
console.log(cars[1].engine);
console.log(`kw is ${cars[1].engine.kw}`);

cars.forEach((e, index) => {
    console.log(`NO: ${index + 1} | ${e.type} | ${e.year} | ${e.engine.kw}`);
});

const printData = ((e, index) => {
    console.log(`NO: ${index + 1} | ${e.type} | ${e.year} | ${e.engine.kw}`);
});

cars.forEach(printData);