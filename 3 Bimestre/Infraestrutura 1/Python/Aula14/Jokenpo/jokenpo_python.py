#encoding:UTF-8
import random

while True: 
    aleatorio = random.randrange(0, 5)
    escolhaPc = ""
    print("1)pedra")
    print("2)papel")
    print("3)tesoura")
    print("4)lagarto")
    print("5)spock")
    print("6)Sair do Programa")
    opcao = int(input("O que voce escolhe: "))
    
    if opcao == 1:
        escolhaUsuario = "pedra"
    elif opcao == 2:
        escolhaUsuario = "papel"
    elif opcao == 3:
        escolhaUsuario = "tesoura"
    elif opcao == 4:
        escolhaUsuario = "lagarto"
    elif opcao == 5:
        escolhaUsuario = "spock"
    elif opcao == 6:
        print ("Nos vemos!")
        break
    else:
        print ("Valor Invalido")
        continue
        
    print("Tua escolha: ", escolhaUsuario)   
    if aleatorio == 0:
        escolhaPc = "pedra"
    elif aleatorio == 1:
        escolhaPc = "papel"
    elif aleatorio == 2:
        escolhaPc = "tesoura"
    elif aleatorio == 3:
        escolhaPc = "lagarto"
    elif aleatorio == 4:
        escolhaPc = "spock"
    print("PC escolheu: ", escolhaPc)
    print("...")

    #Escolhas PC
    if escolhaPc == "pedra" and escolhaUsuario == "papel":
        print("PC perdeu, papel cobre pedra")
    elif escolhaPc == "Pedra" and escolhaUsuario == "Tesoura":
        print("PC ganhou, pedra amassa tesoura")
    elif escolhaPc == "pedra" and escolhaUsuario == "lagarto":
        print("PC ganhou, pedra esmaga lagarto")
    elif escolhaPc == "pedra" and escolhaUsuario == "Spock":
        print("PC ganhou, pedra vaporiza Spock")
    elif escolhaPc == "papel" and escolhaUsuario == "tesoura":
        print("PC perdeu, tesoura corta papel")
    elif escolhaPc == "papel" and escolhaUsuario == "lagarto":
        print("PC perdeu, lagarto come papel")
    elif escolhaPc == "papel" and escolhaUsuario == "spock":
        print("PC ganhou, papel refuta Spock")
    elif escolhaPc == "tesoura" and escolhaUsuario == "pedra":
        print("PC perdeu, pedra amassa tesoura")
    elif escolhaPc == "lagarto" and escolhaUsuario == "papel":
        print("PC ganhou, lagarto come papel")
    elif escolhaPc == "lagarto" and escolhaUsuario == "tesoura":
        print("PC perdeu, tesoura decapta lagarto")
    elif escolhaPc == "lagarto" and escolhaUsuario == "spock":
        print("PC ganhou, lagarto envenena spock")
    elif escolhaPc == "lagarto" and escolhaUsuario == "pedra":
        print("PC perdeu, pedra decapta lagarto")
    elif escolhaPc == "spock" and escolhaUsuario == "pedra":
        print("PC ganhou, Spock vaporiza pedra")
    elif escolhaPc == "spock" and escolhaUsuario == "papel":
        print("PC perdeu, papel refuta Spock")
    elif escolhaPc == "spock" and escolhaUsuario == "tesoura":
        print("PC ganhou, Spock quebra tesoura")
    elif escolhaPc == "spock" and escolhaUsuario == "lagarto":
        print("PC perdeu, lagarto envenena spock")


    #Escolhas Usuario
    if escolhaUsuario == "pedra" and escolhaPc == "papel":
        print("Usuario perdeu, papel cobre pedra")
    elif escolhaUsuario == "Pedra" and escolhaPc == "Tesoura":
        print("Usuario perdeu, pedra amassa tesoura")
    elif escolhaUsuario == "pedra" and escolhaPc == "lagarto":
        print("Usuario perdeu, pedra esmaga lagarto")
    elif escolhaUsuario == "pedra" and escolhaPc == "spock":
        print("Usuario ganhou, pedra vaporiza Spock")
    elif escolhaUsuario == "papel" and escolhaPc == "tesoura":
        print("Usuario perdeu, tesoura corta papel")
    elif escolhaUsuario == "papel" and escolhaPc == "lagarto":
        print("Usuario perdeu, lagarto come papel")
    elif escolhaUsuario == "papel" and escolhaPc == "spock":
        print("Usuario ganhou, papel refuta Spock")
    elif escolhaUsuario == "tesoura" and escolhaPc == "pedra":
        print("Usuario perdeu, pedra amassa tesoura")
    elif escolhaUsuario == "lagarto" and escolhaPc == "papel":
        print("Usuario ganhou, lagarto come papel")
    elif escolhaUsuario == "lagarto" and escolhaPc == "tesoura":
        print("Usuario perdeu, tesoura decapta lagarto")
    elif escolhaUsuario == "Lagarto" and escolhaPc == "spock":
        print("Usuario perdeu, lagarto envenena spock")
    elif escolhaUsuario == "lagarto" and escolhaPc == "pedra":
        print("Usuario perdeu, pedra decapta lagarto")
    elif escolhaUsuario == "spock" and escolhaPc == "pedra":
        print("Usuario ganhou, Spock vaporiza pedra")
    elif escolhaUsuario == "spock" and escolhaPc == "papel":
        print("Usuario perdeu, papel refuta Spock")
    elif escolhaUsuario == "spock" and escolhaPc == "tesoura":
        print("Usuario ganhou, tesoura quebra Spock")	
    elif escolhaUsuario == "spock" and escolhaPc == "lagarto":
        print("Usuario perdeu, lagarto envenena spock")
    
    #Empate
    elif escolhaPc == escolhaUsuario:
        print("Empate")

    #Jogar novamente
    again = input("Jogar novamente? s/n: ")
    if 's' in again:
        continue
    elif 'n' in again:
        print("Nos vemos!")
        break
    else:
        print("Valor Invalido")