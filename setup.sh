sudo useradd -m pablogod
sudo adduser pablogod sudo
echo "pablogod:pabloesgod" | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
sudo hostname $LINUX_MACHINE_NAME

if [[ -z "$NGROK_AUTH_TOKEN" ]]; then
  echo "Please set 'NGROK_AUTH_TOKEN'"
  #exit 2
fi

if [[ -z "$LINUX_USER_PASSWORD" ]]; then
  echo "Please set 'LINUX_USER_PASSWORD' for user: $USER"
  #exit 3
fi
#if [1 -eq 1]; then
sudo su pablogod
cd /home/pablogod
#sudo mkdir /etc/playit
sudo mkdir /home/pablogod/playit
sudo ln -s /home/pablogod/playit /etc/ 
curl -SsL https://playit-cloud.github.io/ppa/key.gpg | sudo apt-key add -
sudo curl -SsL -o /etc/apt/sources.list.d/playit-cloud.list https://playit-cloud.github.io/ppa/playit-cloud.list
sudo apt -qq update
sudo apt -qq install playit

sudo mkdir /srv/pufferpanel/
sudo mkdir /home/pablogod/pufferpanel
sudo mkdir /var/lib/pufferd
sudo mkdir /home/pablogod/pufferd
sudo ln -s /home/pablogod/pufferpanel /srv/pufferpanel/
sudo ln -s /home/pablogod/pufferd /var/lib/pufferd
#tmux new-session -d -s my_session 'playit'


curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | sudo bash
sudo apt-get -qq install pufferpanel
sudo systemctl enable pufferpanel
sudo pufferpanel user add --name PabloGod --email pablogod@gmail.com --password pabloesgod5 --admin

#sudo systemctl enable --now pufferpanel


#cd ~/../$LINUX_USERNAME
wget -q https://filebin.net/3wpil766znlkbnw0/eula.txt
wget -q https://papermc.io/api/v2/projects/paper/versions/1.16.5/builds/790/downloads/paper-1.16.5-790.jar
#screen -S minecraft
#screen -dm java -Xmx1024M -Xms1024M -jar paper-1.16.5-790.jar screen



#java -jar paper-1.16.5-790.jar
#tmux new-session -d -s my_session 'playit'
#timeout 60s playit
#while [ ! -f ~../a.txt ]
#do
#  sleep 2
#done
curl -H "Content-Type: application/json" -d '{"username": "test", "content": "Configure Playit"}' "https://ptb.discord.com/api/webhooks/1012830182882685140/coAa8BUhkJJc9EHPAanJ2IECPG9Podh7H3J3cBZPF2_sRqQAOKH-HuKEKuqxr6rBInEC"
timeout 180s playit
sleep 3
#playit
echo "doing backup"
cd /home/runner
sudo tar -zcf past.tar.gz /home/pablogod/
