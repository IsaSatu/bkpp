
function executando {
	./exect.sh

} 

function exibicao {
	a=$(ls -lh ./bkp)
	echo "Os arquivos em exibição são: $a"
} 

echo "Digite a função que você deseja executar: 
Opção 1 -> executando
Opção 2 -> exibicao
Opção 3 -> sair" 

read q
case $q in 
	"1") executando	;;
	"2") exibicao;;
	"3") exit 1;;
esac
