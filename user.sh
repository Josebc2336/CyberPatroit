sudo cut -d: -f1,3 /etc/passwd | egrep ':[0-9]{4}$' | cut -d: -f1 > user
sed -i '/root/ d' user
PASS="N0omLlght6@"
for b in ` cat user `
do
  read -p "Do you want to remove user $b ?" yorn
  if [ $yorn = y ]; then
    sudo deluser $b
  else
    read -p "Can I confirm if the $b is an admin?" yorn
    if [ $yorn = y ]; then
      sudo usermod -a -G adm $b
      sudo usermod -a -G sudo $b
    else 
      sudo deluser $b adm 
      sudo deluser $b sudo
    fi 
    read -p "Do you want to change $b password?" yorn
    if [ $yorn = y ]; then 
      echo -e "$PASS\n$PASS" | sudo passwd $b
    fi
  fi
done
