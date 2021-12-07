# part 1
sudo mkdir /home/folder1/
sudo mkdir /home/folder2/

sudo mkdir /usr/bin/daemon1
sudo mv /vagrant/daemon1.sh /usr/bin/daemon1
sudo chmod +x /usr/bin/daemon1/daemon1.sh

sudo mv /vagrant/daemon1.service /etc/systemd/system/

sudo systemctl start daemon1.service
sudo systemctl enable daemon1.service

# part 2
crontab /vagrant/crontab