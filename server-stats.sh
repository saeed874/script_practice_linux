echo "Total CPU Usage:"
top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}'

echo -e "\nTotal Memory Usage:"
free -h 


echo -e "\nTotal Disk Usage:"
df -h

echo -e "\nTop 5 Processess by CPU Usage:"
ps aux --sort=-%cpu | head -n 6


echo -e "\nTop 5 Processess by Memory Usage:"
ps aux --sort=-%cpu | head -n 6

echo -e "\nOS version:"
cat /etc/os-release

echo -e "\nSystem Uptime and Load Average:"
uptime 

echo -e "\nLogged-in Users:"
who 


echo -e "\nLogged-in Users:"
grep "Failed password" /var/log/auth.log

