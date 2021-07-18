#!/bin/bash
NC='\033[0m'
RED='\033[1;38;5;196m'
GREEN='\033[1;38;5;040m'
ORANGE='\033[1;38;5;202m'
BLUE='\033[1;38;5;012m'
BLUE2='\033[1;38;5;032m'
PINK='\033[1;38;5;013m'
GRAY='\033[1;38;5;004m'
NEW='\033[1;38;5;154m'
YELLOW='\033[1;38;5;214m'
CG='\033[1;38;5;087m'
CP='\033[1;38;5;221m'
CPO='\033[1;38;5;205m'
CN='\033[1;38;5;247m'
CNC='\033[1;38;5;051m'

function banner(){
echo -e ${RED}"#############################################################################"
echo -e ${CP}"     ______  _                _                   _   _ ____  _   __         #"
echo -e ${CP}"    / / ___|| |__   ___  _ __| |_ ___ _ __       | | | |  _ \| |  \ \        #"
echo -e ${CP}"   | |\___ \| '_ \ / _ \| '__| __/ _ \ '_ \ _____| | | | |_) | |   | |       #"
echo -e ${CP}"  < <  ___) | | | | (_) | |  | ||  __/ | | |_____| |_| |  _ <| |___ > >      #"
echo -e ${CP}"   | ||____/|_| |_|\___/|_|   \__\___|_| |_|      \___/|_| \_\_____| |       #"
echo -e ${CP}"    \_\                                                           /_/        #"
echo -e ${RED}"             A Small Script To Customize Long Url's For Free                 #"
echo -e ${BLUE}"                   https://facebook.com/unknownclay                          #"
echo -e ${PINK}"                      Coded By: Machine404                                   #"
echo -e ${CNC}"                   https://github.com/machine1337                            #"
echo -e ${RED}"#############################################################################"

}
function short(){
clear
banner

my="aHR0cDovL3Rpbnl1cmwuY29tL2FwaS1jcmVhdGUucGhwP3VybD0K"

echo -e -n ${BLUE}"\n[+] Enter url (e.g https://target.com/) : "
read url

benc=$(echo "aHR0cDovL3Rpbnl1cmwuY29tL2FwaS1jcmVhdGUucGhwP3VybD0K" | base64 -d ) >/dev/null 2>&1

myshort=$(curl -s $benc$url )

echo -e -n ${CP}"\n[ ✔ ] Your Short Url: " $myshort

}
function myrepos(){
clear
banner
xdg-open https://github.com/machine1337
sleep 2
echo -e -n ${YELLOW}"\n[*] You Are Visiting my Github Profile :)"
}
main(){
clear
banner
echo -e  "\n${NC}[${CG}"1"${NC}]${CNC} Shorten Url "
echo -e  "${NC}[${CG}"2"${NC}]${CNC} More From Me "
echo -e  "${NC}[${CG}"3"${NC}]${CNC} Exit"

echo -n -e ${YELLOW}"\n[+] Select: "
        read choose
                if [ $choose -eq 1 ]; then
                        short
                elif [ $choose -eq 2 ]; then
                      myrepos
                
                
                elif [ $choose -eq 3 ]; then
                       exit
                fi       
}
main
#Coded By Machine404; Don't Copy This Code Without Giving Me Credit
