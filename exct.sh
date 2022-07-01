#!/bin/bash
function criacao {
	echo "Analisando"
	rm -rf bkp
	rm -f configuracao.txt
	echo "Criando"
	mkdir bkp
	touch configuracao.txt
	sleep 5
	echo "Criação concluida" 
}

function bkpremoto {
	echo "Digite o IP da máquina de bkp: (Ex: caso não lembrar ..hostename -I)"
       	read ip
	echo "IP de exibição: $ip"
	echo "Nome da maquina de bkp: (ex:isasatu)"
	read nome
	echo "Nome da maquina: $nome"
	echo "Nome do arquivo que deseja fazer bkp: "
     	read arq
	echo "Arquivo de bkp: $arq"
								
	p=$(pwd)
	cd bkp
	mkdir $nome$ip'('$(date +%d-%h-%y-%H:%M)')'
	sos=$nome$ip'('$(date +%d-%h-%y-%H:%M)')'
	scp -r $nome@$ip:$arq $p/$bkp/$sos
	zip -r $sos.zip $sos
	rm -r $sos
}
function sair {
	exit 1
}
echo "escolha uma opção:
1 = Criação da pasta de backup.
2 = Backup remoto.
3 = Sair da interação." 
read q
case $q in
	"1") 
		criacao
		;;
	"2") 
		bkpremoto
		;;
	"3") 
		sair
		;;

esac



