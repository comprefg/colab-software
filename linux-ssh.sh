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
#cd ~/../pabloesgod
#sudo mv /home/runner/past.tar.gz /home/pabloesgod/
sudo su pablogod
echo "moving"
cd /
sudo mv /home/runner/past.tar.gz /
echo "extracting"
sudo tar -xf /past.tar.gz
echo "done extracting"
cd ~/../pabloesgod
sudo ln -s ~/playit /etc/ 
sudo ln -s ~/opt/playit /opt/ 

curl -SsL https://playit-cloud.github.io/ppa/key.gpg | sudo apt-key add -
sudo curl -SsL -o /etc/apt/sources.list.d/playit-cloud.list https://playit-cloud.github.io/ppa/playit-cloud.list
sudo apt update
sudo apt install playit


#tmux new-session -d -s my_session 'playit'
sudo ln -s ~/pufferpanel /srv/pufferpanel/
sudo ln -s ~/pufferd /var/lib/pufferd

curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | sudo bash
sudo apt-get install pufferpanel
sudo systemctl enable pufferpanel
#sudo pufferpanel user add --name PabloGod --email pablogod@gmail.com --password pabloesgod5 --admin

sudo systemctl enable --now pufferpanel


#cd ~/../$LINUX_USERNAME
wget -q https://filebin.net/3wpil766znlkbnw0/eula.txt
wget -q https://papermc.io/api/v2/projects/paper/versions/1.16.5/builds/790/downloads/paper-1.16.5-790.jar
#screen -S minecraft
#screen -dm java -Xmx1024M -Xms1024M -jar paper-1.16.5-790.jar screen



#java -jar paper-1.16.5-790.jar
python3 /home/runner/work/minecraftsoftware/minecraftsoftware/playit.py
