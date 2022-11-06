echo "doing backup"
cd /home/runner
sudo mv /var/lib/pufferpanel /home/pablogod/backup/pufferpanel
sudo tar -zcf past.tar.gz /home/pablogod/backup/
