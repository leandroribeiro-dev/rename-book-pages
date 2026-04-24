#!/bin/bash
# Criado por Shaos
# Criado em  09/11/2022
# Renomear as Folhas do Livro Digitalizadas

echo -e "\n ### Coletando Dados  ### \n"

Folha=1
Livro=100
total=`ls *.jpg | wc -l`
echo "  $total arquivos para Renomear - Numerando..."
echo "Layot de Saída 'Livro $1 - Folha $2'"
verso=0
if [ -z "$1" ]; then
    Livro=598
    echo "Parametro NÃO Informado - Livro recebe $Livro.\n"
else
    Livro=$1
    echo "Livro Informado -> $Livro.\n"
fi

if [ -z "$2" ]
then
    echo "Parametro NÃO Informado - Folha recebe $Folha.\n"
    num=$Folha
else
    Folha=$2
    echo "Folha Inicial Informada -> $Folha.\n"
    num=$Folha
fi


echo -e "\n ### Processo de Backups - SECURITY ### \n"
cp ZYB/*.jpg ZYB/000/
rm -f ZYB/*.jpg
cp *.jpg ZYB/


echo -e "\n ### Renomeando arquivos ### \n"

for i in `seq $total`
 do
   nome=`ls -1 *.jpg | head -n $i | tail -n 1`

if [ $verso = 0 ]; then
    mv "$nome" "Livro $Livro - Folha $(printf "%03d" $num).jpg"
    echo "Renomeando $nome - para --> Livro $Livro - Folha $(printf "%03d" $num).jpg"
    verso=1
else
    mv "$nome" "Livro $Livro - Folha $(printf "%03d" $num)v.jpg"
    echo "Renomeando $nome - para --> Livro $Livro - Folha $(printf "%03d" $num)v.jpg"
    verso=0
    let num++;
fi

done

