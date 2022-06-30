#!/bin/bash
VERDE="\033[32;1m"

function instalar {

	echo "Removendo duplicatas"
	rm -rf bkpp
	rm -f configuracao.txt
	echo "criando pastas"
	mkdir bkpp
	touch configuracao.txt
	sleep 5
	echo "instalação concluida com sucessor"
}
function confgarq {
	
clear && echo -e "${VERDE}digite o IP da máquina de bkp: (Ex: caso não lembrar ..hostename -I)\n " && tput sgr0
	read ip
	echo "IP de exibição: $ip"

	echo "nome da maquina de bkp: (ex:isasatu)"
	read nome
	echo "nome da maquina: $nome"

	echo " nome do arquivo que deseja fazer bkp:"
	read arq
	echo "arquivo de bkp: $arq"
	 
	echo "digite a senha: "
	read -s senha
									
	echo "arquivos de configuração criados com sucesso! "
	echo "$ $ip $nome $arq $senha"


	
	scp  $nome@$ip:$arq $bkpp
	data=$(date "+%d-%m-%y")				
	fim=" $bkpp-$data_format.tar.gz"

}
																		
function sair {
	exit 1
}

echo "digite a opção desejada:
1 = remocao
2 = arqconfg
3= sair"

read ok
case $ok in 
	"1") remocao;;
	"2") confgarq ;;
	"3") sair;;
esac
