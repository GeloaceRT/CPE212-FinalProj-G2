exit
su root
sudo nano /etc/hostname
sudo nano /etc/hosts
sudo reboot
sudo apt upgrade -y
sudo nano /etc/hostname
sudo nano /etc/hosts
sudo apt install openssh-server
sudo service ssh start
sudo systemctl status ssh
sudo ufw allow ssh
sudo ufw enable
sudo ufw status
sudo apt install net-tools
ifconfig
ping -c 4 192.168.31.75
ping -c 4 192.168.31.133
ssh vboxuser@192.1688.31.75
ssh vboxuser@192.168.31.75
ssh vboxuser@192.168.31.133
sudo nano /etc/hosts
ssh vboxuser@server1
ssh vboxuser@server2
ssh-keygen -t rsa -b 4096
ls -la ~/.ssh
ssh-copy-id -i ~/.ssh/id_rsa vboxuser@192.168.31.133
ssh vboxuser@192.168.31.133
ssh vboxuser@192.168.31.75
sudo apt install git
which git
git--version
git --version
ansible all -m apt -a update_cache=true
sudo apt install ansible
ansible all -m apt -a update_cache=true
/etc/ansible/hosts
/etc/hosts
sudo nano /etc/hosts
sudo nano /etc/ansible/hosts
cat /etc/ansible/hosts
sudo mkdir -p /etc/ansible
sudo nano /etc/ansible/hosts
ansible all -m apt -a update_cache=true
ansible all -m apt -a update_cache=true --become --ask-become-pass
sudo nano /etc/ansible/hosts
ping 192.168.31.75
ssh vboxuser@server1
ansible all -m apt -a update_cache=true --become --ask-become-pass
sudo nano /etc/ansible/hosts
ansible all -m apt -a update_cache=true --become --ask-become-pass
vboxuser@192.168.31.75
ssh vboxuser@192.168.31.75
ansible all -m apt -a update_cache=true --become --ask-become-pass
sudo nano /etc/ansible/hosts
ansible all -m apt -a update_cache=true --become --ask-become-pass/q
ansible all -m apt -a update_cache=true --become --ask-become-pass
sudo nano /etc/hosts
ansible all -m apt -a update_cache=true --become --ask-become-pass
which vim
apt search vim-nox
cd /var/log
ls
apt
cd /apt
cd apt
ls
nano history.log
ansible all -m apt -a name=snapd --become --ask-become-pass
cd ..
cd..
cd ..
cd..
exit
