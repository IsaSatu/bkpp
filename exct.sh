#!/bin/bash
while true; do
	read p
	case $p in
		"1")
			echo -e "${VERDE}digite o IP da máquina de bkp: (Ex: caso não lembrar ..hostename -I)\n " && tput sgr0
			read ip
			echo "IP de exibição: $ip"
		
			echo "nome da maquina de bkp: (ex:isasatu)"
			read nome
			echo "nome da maquina: $nome"
			echo " nome do arquivo que deseja fazer bkp:"
			read arq
			echo "arquivo de bkp: $arq"
			p=$(pwd)
			cd bkp
			mkdir $nome$ip'('$(date +%d-%h-%y-%H:%M)')'
			sos=$nome$ip'('$(date +%d-%h-%y-%H:%M)')'
			scp -r $nome@$ip:$arq $p/$bkp/$sos
			zip -r $sos.zip $sos
			rm -r $sos
			;;

		"2") exit 1;;


