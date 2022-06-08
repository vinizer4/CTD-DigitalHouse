let nome = 'Ivin Rodrigues'

// Assim criamos um array(lista)
var frutas = ['banana', 'tomato', 'laranja', 'limão']

console.log(nome);
console.log(frutas);

// Metodo for..of

for (let fruta of frutas) {
    
    console.log('A fruta atual é: '+ fruta);

}

let numbers = [1, 2, 4, 8]
var soma = 0

for(var i = 0; i < numbers.length; i++) {

    soma += numbers[i];
    console.log(soma);
}


