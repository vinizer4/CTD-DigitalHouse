
const formulario = document.querySelector('form')
const contas = document.querySelector('.container');
const contasCriadas = []

formulario.addEventListener('submit', function (event) {

    const dados = Object.fromEntries(new FormData(formulario).entries())

    adicionarCard(dados);
    event.preventDefault();
})



function adicionarCard(dados) {


    contasCriadas.push(dados);

    contas.innerHTML = ""
    contasCriadas.forEach((conta) => {
        const card = document.createElement('div')
        card.innerHTML = `<p>  ${conta.primeiroNome}   </p>
 <p>  ${conta.ultimoNome}   </p>
 <p>  ${conta.email}   </p>
 <p>  ${conta.apelido}   </p>`
        card.setAttribute("class", "card");
        contas.appendChild(card);

    });
}




