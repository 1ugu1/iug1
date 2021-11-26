#!/bin/bash


echo "~~~~~~~~~WELCOME TO IUG1~~~~~~~~~~"
echo "~                                ~"
echo "~        Powered by: 1ugu1       ~"
echo "~                                ~"
echo "~ this tool will discover all    ~"
echo "~ the up hosts in current        ~"
echo "~ network                        ~"
echo "~                                ~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

if [ "$1" == "" ]

then
        echo "Type $0 network address"

else 
for host in {1..254};
do
#echo "$1.$host"
ping -c 1 $1.$host | grep "64 bytes" | cut -d ":" -f 1 |cut -d " " -f 4;
done
fi
     
