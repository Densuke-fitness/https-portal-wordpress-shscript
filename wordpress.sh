#!/bin/sh
#docker-compose関連
echo "docker-compose up -d --build"
docker-compose up -d --build

#ホストファイルの対策
ip_address="::1"
Host_name="wordpress.example.com"


echo "Please enter your password"
Sudo -- sh -c -e "echo '${ip_address} ${Host_name}' >> /etc/hosts";
echo "Added -> ${ip_address} ${Host_name}'"
echo ""
echo "please wait 30sec because of lssuing SSL"
echo "if you want to see the lssuing SSL logs ,Enter 'docker logs -f https-portal'"
echo ""
echo "after 30sec, you type 'wordpress.example.com' on your web browser "
echo "And you have to type  'thisisunsafe' after pushing '詳細設定'  "