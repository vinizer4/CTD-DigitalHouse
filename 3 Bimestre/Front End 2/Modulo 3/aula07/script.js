const urlImagens = [] 

const urlLinks = []

const imagens = document.querySelectorAll("img");

const links = document.querySelectorAll("img-routes");


imagens.forEach((_, index) => {

const url = prompt(`Adicione o url para a imagem ${index + 1}`);

urlImagens.push(url);

urlLinks.push(url);

});


urlImagens.forEach((url, index) => {


const imagem = document.querySelector(`#imagem-${index + 1}`);
imagem.setAttribute("src", url)

const link = document.querySelector(`#img-routes-${index + 1}`);
    link.setAttribute("href", target="_blank");

})


urlLinks.forEach((index) => {
    
    const link = document.querySelector(`#img-routes-${index + 1}`);
    link.setAttribute("href", target="_blank");
    
})