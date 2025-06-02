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
    

console.log(doSomethingA());
doSomethingB('Koks nuostabus rytas');
doSomethingC('Labas rytas');
doSomethingD('Labas vakaras');
doSomethingDd('Viso gero');





