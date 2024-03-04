yum install -y http://repo.almalinux.org/elevate/elevate-release-latest-el$(rpm --eval %rhel).noarch.rpm
yum install -y leapp-upgrade leapp-data-rockylinux
leapp upgrade 
reboot
