
#!/bin/bash

if [ "$1" == "" ]
then
echo "O SCRIPT ABAIXO FAZ A VARREDURA DE HOSTS ATIVOS NA SUA REDE!"
echo "Exmplo de uso: $0 10.0.0"
else
for host in {1..254};do
	ping -c1 $1.$host   | grep "64 bytes" | cut -d " " -f 4 | sed 's/.$//'
done
fi

