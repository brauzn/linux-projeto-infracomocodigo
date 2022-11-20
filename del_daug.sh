echo "Exluindo diretórios e arquivos anteriores"
rm -rf /publico
rm -rf /adm
rm -rf  /ven
rm -rf /sec
echo "Concluído"

echo "Excluindo usuários anteriores"
userdel -rf carlos
userdel -rf maria
userdel -rf joao
userdel -rf debora
userdel -rf sebastiana
userdel -rf roberto
userdel -rf josefina
userdel -rf amanda
userdel -rf rogerio
echo "Concluido"


echo "Excluindo grupos anteriores"
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC
echo "Concluido"


echo "Fim Script"
