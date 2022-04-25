#!/bin/sudo bash
req(){
	sudo apt-get install wget lolcat toilet figlet boxes -y
	sudo apt-get install curl -y   
	sudo apt-get install apksigner -y
	sudo apt-get install zipalign -y
	sudo apt-get install default-jdk -y
}
msf(){
	curl -s https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall
}
apktool(){

	wget -s https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool && chmod +x apktool && sudo mv apktool /bin && wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.6.1.jar && sudo mv apktool_*.jar apktool.jar &&  sudo mv apktool.jar

}

PID=$!
req >  /dev/null &
PID=$!
echo "THIS MAY TAKE A WHILE, PLEASE BE PATIENT WHILE ______ IS RUNNING..."
printf "["
# While process is running...
while kill -0 $PID 2> /dev/null; do
    printf  "▓"
    sleep 1
done
printf "] done!"

clear


#msf > /dev/null &
PID=$!
echo "THIS MAY TAKE A WHILE, PLEASE BE PATIENT WHILE ______ IS RUNNING..."
printf "["
# While process is running...
while kill -0 $PID 2> /dev/null; do
    printf  "▓"
    sleep 1
done
printf "] done!"


clear

apktool > /dev/null &
sleep 3
PID=$!
echo "THIS MAY TAKE A WHILE, PLEASE BE PATIENT WHILE ______ IS RUNNING..."
printf "["
# While process is running...
while kill -0 $PID 2> /dev/null; do
    printf  "▓"
    sleep 1
done
printf "] done!"
