#!/bin/bash

echo "Criar diretórios."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


echo "Criar grupos de usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criar usuários"

useradd carlos -m -c "Carlos Henrique" -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd maria -m -c "Maria Santos" -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM
useradd joao -m -c "João Henrique" -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_ADM


useradd debora -m -c "Debora Sousa" -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana de Jesus" -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN
useradd roberto -m -c "Roberto Abreu" -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_VEN


useradd josefina -m -c "josefina batista" -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd amanda -m -c "Amanda Castro" -s /bin/bash -p $(openssl passwd -6 Senha123) -G GRP_SEC
useradd rogerio -m -c "Rogerio Braga" -s /bin/bash -p $(openssl passwd  -6 Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Infraestrutura provisionada com sucesso."









