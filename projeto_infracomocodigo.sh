#!/bin/bash

#Excluir diretórios, arquivos, grupos e usuários criados anteriormente;
#Todo provisionamento deve ser feito em um arquivo do tipo Bash Script
#O dono de todos os diretórios criados será o usuário root
#Todos os usuários terão permissão total dentro do diretório publico
#Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório
#Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem
#Subir arquivo de script criado para a sua conta no GitHub

echo "Inicio Script"

echo "Criando diretórios"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "Concluido"

echo "Criando grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Concluido"

echo "Criando usuários e associando aos seus grupos"
useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM
passwd carlos -e
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM
passwd maria -e
useradd joao -c "Joao" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_ADM
passwd joao -e
useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN
passwd debora -e
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN
passwd sebastiana -e
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_VEN
passwd roberto -e
useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC
passwd josefina -e
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC
passwd amanda -e
useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd -1 senha123) -G GRP_SEC
passwd rogerio -e

echo "Definindo o root como dono de todos os diretorios e associando os diretorios aos seus respectivos grupos "
chown root:root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
echo "Concluido"

echo "Dando permissão total a todos os usuários no diretório /publico"
chmod 777 /publico
echo "Concluido"

echo "Definindo que os usuário de cada grupo terão acesso total aos seus respectivos grupos"
echo "Definindo que usuarios não poderao ler, escrever ou executar em diretorios de outros departamentos que eles nao pertencem"
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
echo "Concluido"
echo "Fim Script"









 
