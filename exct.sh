#!/bin/bash
function executando {
	./cfg.sh
}

function exibir {
	a=$(ls -a ./bkp)
	echo "os arquivos em exibição são: $a"
}
echo "digite a função que você dseja executar:
1 = executar
2 = exibir
3 = sair"
read r
case $r in
	"1") executando;;
	"2") exibir;;
	"3") exit 1;;
esac
