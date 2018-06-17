
touch log.txt

users=$(who | cut -d " " -f1)
printf "The logged in users are:\n$users\n\n" >> log.txt

ip=$(ifconfig | grep -A 1 "eth0" | tail -1 | cut -d ":" -f 2 | cut -d " " -f 1)
printf "Your ip address is:\n$ip\n" >> log.txt

y="y"
n="n"
echo "Would you like to delete the log file? $y / $n?"
read choice

if  [ $choice == $y ]; then
rm log.txt
echo "Log has been deleted successfully."
elif [ $choice == $n ]; then
echo "all righty"
else
echo "nothing is selected"
fi
