#!data/data/com.termux/files/usr/bin/bash
clear
apt install toilet -y
clear
toilet -f letter MENU --filter gay
sleep 2
echo ""
echo ""
while :
do
echo -e "\e[1;33m Seleccione una opcion\e[0m"
echo ""
echo -e "\e[1;36m1>\e[0m Crear Payload Android. "
echo ""
echo -e "\e[1;36m2>\e[0m Abrir MsfConsole. "
echo ""
echo -e "\e[1;36m3>\e[0m Salir. "
echo ""
echo -e -n "\e[1;33mOpcion:\e[0m "
read opcion
echo ""
case $opcion in
1) echo "Generador de Payloads.";
sleep 2
cd auto
bash payload.sh;;
2) echo "Abriendo msfconsole.";
sleep 2
cd auto
bash db.sh;;
3) toilet -f wideterm Hasta la Proxima!! --filter metal;
echo ""
echo ""
exit;;
*) echo -e "\e[1;31mOpcion no valida!\e[0m"
echo ""

esac
done
