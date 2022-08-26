#!/bin/bash

echo "criando diretórios..."
mkdir /publico /adm /ven /sec

echo "criando grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuários..."
useradd carlos -c "Carlos Silva" -m -s /bin/bash -p (openssl passwd -1 123456) -G GRP_ADM
useradd maria -c "Maria da Silva" -m -s /bin/bash -p (openssl passwd -1 123456) -G GRP_ADM
useradd joao -c "João da Silva" -m -s /bin/bash -p (openssl passwd -1 123456) -G GRP_ADM

useradd debora -c "Débora dos Santos" -m -s /bin/bash -p (openssl passwd -1 123456) -G GRP_VEN
useradd sebastiana -c "Sebastiana dos Santos" -m -s /bin/bash -p (openssl passwd -1 123456) -G GRP_VEN
useradd roberto -c "Roberto dos Santos" -m -s /bin/bash -p (openssl passwd -1 123456) -G GRP_VEN

useradd josefina -c "Josefina Rodrigues" -m -s /bin/bash -p (openssl passwd -1 123456) -G GRP_SEC
useradd amanda -c "Amanda Rodrigues" -m -s /bin/bash -p (openssl passwd -1 123456) -G GRP_SEC
useradd rogerio -c "Rogério Rodrigues" -m -s /bin/bash -p (openssl passwd -1 123456) -G GRP_SEC

echo "Alterando propriedades e grupos..."
chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

echo "Alterando permissões..."
chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/




