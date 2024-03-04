yum install -y http://repo.almalinux.org/elevate/elevate-release-latest-el$(rpm --eval %rhel).noarch.rpm
yum install -y leapp-upgrade leapp-data-rocky
leapp preupgrade
rmmod pata_acpi && echo PermitRootLogin yes | tee -a /etc/ssh/sshd_config && leapp answer --section remove_pam_pkcs11_module_check.confirm=True
leapp upgrade 
reboot
