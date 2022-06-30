#!/bin/bash
function arqConfig {
	mkdir bkpp
	echo "digite o IP da máquina de bkp: (Ex: caso não lembrar ..hostename -I) "
	read ip
	echo "IP de exibição: $ip"

	echo "nome da maquina de bkp: (ex:isasatu)"
	read nome
	echo "nome da maquina: $nome"
	
	echo " /home/diretorio da maquina de bkp:"
	read maquina
	echo "o arq virá de $maquina"

	echo "Nome da maquina que irá receber o bkp: (Ex:/home/isasatu)"
	read receberbkp
	echo "Receber bkp: $receberbkp"

	echo " nome do arquivo que deseja fazer bkp:"
	read arq
	echo "arquivo de bkp: $arq"
									
	echo "arquivos de configuração criados com sucesso! "
	echo "$ $pasta $usuario1 $senha bkp$pastabkp"
	
	scp -r $nome"@"$ip":"$maquina$arq $bkpp
	data=$(date "+%d-%m-%y")				
	fim=" $bkpp-$data_format.tar.gz"
	#zip -r $fim.zip $pastabkp
	#mv $fim.zip bkp
}
																		
function sair {
	exit 1
}
