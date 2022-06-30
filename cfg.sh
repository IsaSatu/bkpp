#!/bin/bash
function remocao {
	echo "removendo duplicatas"
	rm -rf bkp
	rm -f configuracao.txt
	echo " criando"
	mkdir bkp
	touch configuracao.txt
	sleep 5
	echo "criação concluida"
}

function arqConfig {
	echo "digite o IP da máquina: "
	read ip
	echo "IP de exibição: $ip"

	echo "digite a pasta que deve receber o backup: "
	read pasta
	echo "Pasta de exibição: $pasta"

	echo "digite o usuario: "
	read usuario
	echo "usuario de exibição: $usuario"

	echo "digite a senha: "
	read -s senha



	echo "arquivos de configuração criados com sucesso! "
	echo "$ip $pasta $usuario $senha bkp$pastabkp"
	pastabkp=$ip$user
	mkdir $pastabkp
	p=$(pwd)
	

	scp -r $usuario@$ip:$pasta $p/$pastabkp
	data=$(date "+%d-%m-%y")
	
	fim="$pastabkp-$data"
	zip -r $fim.zip $pastabkp
	mv $fim.zip bkp
	rm -rf $pastabkp
}
function sair {
	exit 1
}
echo "digite a opção desejada:
1 = remocao
2 = arqconfg
3 = sair"

read ok
case $ok in 
	"1") remocao;;
	"2") arqConfig ;;
	"3") sair;;
esac
