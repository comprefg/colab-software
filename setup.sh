sudo useradd -m pablogod
sudo adduser pablogod sudo
echo "pablogod:pabloesgod" | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
sudo hostname $LINUX_MACHINE_NAME


#if [1 -eq 1]; then


cd colab-software



curl -SsL https://playit-cloud.github.io/ppa/key.gpg | sudo apt-key add -
sudo curl -SsL -o /etc/apt/sources.list.d/playit-cloud.list https://playit-cloud.github.io/ppa/playit-cloud.list
sudo apt -qq update
sudo apt -qq install playit

#sudo mkdir /srv/pufferpanel/
#sudo mkdir /home/pablogod/backup/pufferpanel
#sudo mkdir /var/lib/pufferd
#sudo mkdir /home/pablogod/backup/pufferd
#sudo ln -s /home/pablogod/backup/pufferpanel /srv/
#sudo ln -s /home/pablogod/backup/pufferd /var/lib/
#sudo ln -s /home/pablogod/backup/pufferpanel /var/lib/
#tmux new-session -d -s my_session 'playit'


curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | sudo bash
sudo apt-get -qq install pufferpanel
sudo systemctl enable pufferpanel
sudo pufferpanel user add --name PabloGod --email pablogod@gmail.com --password pabloesgod5 --admin


sudo su runner -c 'sudo systemctl enable --now pufferpanel'

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
#curl -H "Content-Type: application/json" -d '{"username": "test", "content": "Configure Playit"}' "https://ptb.discord.com/api/webhooks/1012830182882685140/coAa8BUhkJJc9EHPAanJ2IECPG9Podh7H3J3cBZPF2_sRqQAOKH-HuKEKuqxr6rBInEC"
#sudo screen -d -m 'sudo timeout 10s playit 2>&1 | sudo tee /home/pablogod/backup/somefile.txt'
#sudo timeout 600s playit 2>&1 | tee /home/pablogod/backup/somefile.txt &
#sudo screen -d -m 'sudo timeout 30s playit 2>&1 | sudo tee /home/pablogod/backup/somefile.txt'
#sudo timeout 30s playit 2>&1 | sudo tee /home/pablogod/backup/somefile.txt
#sudo timeout 60s playit
#sudo playit
########
  
  # Install Chrome.
  #sudo curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add
  #sudo echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list
  #sudo apt-get -y update
  ##sudo apt-get -y install google-chrome-stable
  #ARG CHROME_VERSION="79.0.3945.36"
  #RUN wget --no-verbose -O /tmp/chrome.deb https://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_${CHROME_VERSION}_amd64.deb \
  #&& apt install -y /tmp/chrome.deb \
  #&& rm /tmp/chrome.deb
  ## Install ChromeDriver.
  #wget -N https://chromedriver.storage.googleapis.com/79.0.3945.36/chromedriver_linux64.zip -P ~/
  #unzip ~/chromedriver_linux64.zip -d ~/
  #rm ~/chromedriver_linux64.zip
  #sudo mv -f ~/chromedriver /usr/local/bin/chromedriver
  #sudo chown pablogod:pabloesgod /usr/local/bin/chromedriver
  #sudo chmod 0755 /usr/local/bin/chromedriver
  pip install selenium

#########
sudo timeout 60s playit 2>&1 | tee somefile.txt &
sleep 10
ls
python3 /playit.py
#sleep 360



#sudo playit
echo "doing backup"
#sudo mv /var/lib/pufferpanel /home/pablogod/backup/pufferpanel
#sudo tar -zcf past.tar.gz /home/pablogod/backup/
