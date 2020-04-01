
#!/bin/bash

if [ "$1" == "" ]
then
	"ESTE SCRIPT FAZ A VARREDURA EM UM SITE SPECIFICO E VERIFICA SEU DOMINIO E SUBDOMINIOS E TRA A VOCÊ O IP DE CADA UM DA LISTA"
	"Exemplo: www.site.com"
else
	wget $1 1>/dev/null
	clear
	grep href index.html | cut -d "/"  -f3 | grep "\." | cut -d '"' -f1 | uniq -u> lista
	for url in $(cat lista);do host $url;done | grep "has address" 
 
fi
