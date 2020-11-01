#!/bin/bash
cd
sed -i '$ i\screen -AmdS limit /root/limit.sh' /etc/rc.local
sed -i '$ i\screen -AmdS ban /root/ban.sh' /etc/rc.local
sed -i '$ i\screen -AmdS limit /root/limit.sh' /etc/rc.d/rc.local
sed -i '$ i\screen -AmdS ban /root/ban.sh' /etc/rc.d/rc.local
echo "0 0 * * * root /usr/local/bin/user-expire" > /etc/cron.d/user-expire
echo "0 0 * * * root /usr/local/bin/user-expire-pptp" > /etc/cron.d/user-expire-pptp

cat > /root/ban.sh <<END3
#!/bin/bash
#/usr/local/bin/user-ban
END3

cat > /root/limit.sh <<END3
#!/bin/bash
#/usr/local/bin/user-limit
END3

cd /usr/local/bin
wget -O menu.tar.gz "http://teamcreator.gluweb.nl/SC/menu.tar.gz"
tar -xvf menu.tar.gz
rm -f menu.tar.gz

chmod +x /usr/local/bin/*
chmod +x *
chmod +x /root/*

screen -AmdS limit /root/limit.sh
screen -AmdS ban /root/ban.sh
clear
cd
echo " "
echo " "
echo "Premium Script Menu Berhasil Di install"
echo "Restarting all services..."
echo "Tunggu Beberapa Detik..."
echo " VPN SAKTI INDONESIA"
echo " "
