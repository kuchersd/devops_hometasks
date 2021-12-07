# Create user 'adminuser'
sudo useradd adminuser
# Set password 'password' to 'adminuser'                        
echo adminuser | passwd adminuser --stdin
# Give wheel (sudo) permision to 'adminuser'     
sudo usermod -aG wheel adminuser              
# Create user 'poweruser'
sudo useradd poweruser
# Set password 'password' to 'poweruser'                        
echo poweruser | passwd poweruser --stdin
# Give root permision to 'poweruser'     
sudo usermod -aG root poweruser               
# Give permision to read '/home/adminuser' for 'poweruser'
setfacl -m g:poweruser:rx /home/adminuser     
# List all of files with SUID bit set
find / -type d -perm 4000 -exec ls -ld {} \;                       