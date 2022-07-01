#!/bin/bash
function executar {
	./exct.sh
}
function listagem_de_arquivos {
	arq=$(ls -lh ./bkp)
}

function sair {
	exit 1
}
 read -p "Olá! Essas são as opções disponíveis:
 1 = Executar o programa.
 2 = Fazer listagens dos backups que ja foram feitos.
 3 = Sair da interação." o

 case $o in
	 "1") executar;;
	 "2") listagem_de_arquivos;;
	 "3") sair;;
 esac

