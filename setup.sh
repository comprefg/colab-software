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
sudo mkdir /home/pablogod/backup
cd /home/pablogod/backup

#sudo mkdir /etc/playit
sudo mkdir /home/pablogod/backup/playit
sudo ln -s /home/pablogod/backup/playit /etc/
sudo mkdir /home/pablogod/backup/opt/
sudo mkdir /home/pablogod/backup/opt/playit
sudo ln -s /home/pablogod/backup/opt/playit /opt/

curl -SsL https://playit-cloud.github.io/ppa/key.gpg | sudo apt-key add -
sudo curl -SsL -o /etc/apt/sources.list.d/playit-cloud.list https://playit-cloud.github.io/ppa/playit-cloud.list
sudo apt -qq update
sudo apt -qq install playit

sudo mkdir /srv/pufferpanel/
sudo mkdir /home/pablogod/backup/pufferpanel
sudo mkdir /var/lib/pufferd
sudo mkdir /home/pablogod/backup/pufferd
sudo ln -s /home/pablogod/backup/pufferpanel /srv/pufferpanel/
sudo ln -s /home/pablogod/backup/pufferd /var/lib/pufferd
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
#sudo screen -d -m 'sudo timeout 10s playit 2>&1 | sudo tee /home/pablogod/backup/somefile.txt'
sudo timeout 600s playit 2>&1 | tee /home/pablogod/backup/somefile.txt &
#sudo screen -d -m 'sudo timeout 30s playit 2>&1 | sudo tee /home/pablogod/backup/somefile.txt'
#sudo timeout 30s playit 2>&1 | sudo tee /home/pablogod/backup/somefile.txt
#sudo timeout 60s playit
#sudo playit
sleep 10

python3 /home/runner/work/minecraftsoftware/minecraftsoftware/playit.py
sudo playit
echo "doing backup"
cd /home/runner
sudo tar -zcf past.tar.gz /home/pablogod/backup/
