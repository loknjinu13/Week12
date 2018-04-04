#!/bin/sh
#Tutorials on TCPDUMP
echo "TCPDUMP is an information security tool"
sleep 1
echo "There are many options in using it.... ensure you stop each running script with Ctrl+C"
sleep 1
echo  "lets check packets with both rst and syn flags set"
sudo tcpdump 'tcp[13] = 6'
sleep 1
echo "lets find cleartext http get requests
sudo tcpdump 'tcp[32:4] = 0x47455420'
sleep 1
echo  "lets capture port 80 to a file"
sudo tcpdump port 80 -w ~/capture_tcp
sleep 1
echo "lets view our capture file"
cat ~/capture_tcp
sleep 1
#end of script
