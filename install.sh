echo -e "\e[92m[+]\e[0m Checking for AEScrypt"
if ls -l /usr/bin/aescrypt | egrep -qi "x ";
then
        echo -e "\e[92m[+]\e[0m AESCrypt is already installed and executable"
else
        echo -e "\e[92m[+]\e[0m Not found. Installing."
        wget https://www.aescrypt.com/download/v3/linux/AESCrypt-GUI-3.11-Linux-x86_64-Install.gz 
        gunzip AESCrypt-GUI-3.11-Linux-x86_64-Install.gz 
        chmod +x AESCrypt-GUI-3.11-Linux-x86_64-Install 
        ./AESCrypt-GUI-3.11-Linux-x86_64-Install
        rm AESCrypt-GUI-3.11-Linux-x86_64-Install
fi
