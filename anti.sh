sudo apt install -y rkhunter chkrootkit lynis 
sudo rm -rf /var/log/lynis.log > /dev/null 2>&1 
sudo rkhunter -c --sk > /dev/null 2>&1 &
sudo chkrootkit -q > /dev/null 2>&1 &
sudo lynis -q --quick > /dev/null 2>&1 &
wait
sudo cat /var/log/lynis.log | grep Suggestion | grep -o "test:.*" | cut -f2- -d: | cut -d "]" -f1 |sed s:LYNIS:: | sed s:FILE-6310:: | sort -u | grep "\S" 
