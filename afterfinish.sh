echo پسورد کاربری خود را وارد کنید |fribidi
read -s pass
echo اجرا شدم |fribidi
ps -u `whoami` |grep -i $1 >/dev/null
if [ $? != '0' ]
then
echo no programme running!...
exit
fi 
exe=0
while [ $exe != '1' ]
do 
ps -u `whoami` |grep $1 >/dev/null
exe=$?
sleep 2
done
echo $pass |sudo -S poweroff
