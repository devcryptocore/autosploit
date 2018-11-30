clear
echo "Iniciando MsfConsole..."
echo ""
echo ""
sleep 2

cd $HOME/metasploit-framework/config
curl -LO https://Auxilus.github.io/database.yml
mkdir -p $PREFIX/var/lib/postgresql
initdb $PREFIX/var/lib/postgresql
pg_ctl -D $PREFIX/var/lib/postgresql start
createuser msf
createdb msf_database

clear

sleep 1

cd $HOME/metasploit-framework
clear
./msfconsole
exit
