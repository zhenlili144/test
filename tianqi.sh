#!/bin/bash
#my first shell script
#edit by lixiang in 2017-7-31

echo '-----------------------------------------------'
echo "|||||hello,`whoami`！"
echo "|||||today is" `date`
json=`curl -s http://www.weather.com.cn/data/sk/101010100.html`
#echo $json
city=`echo $json | sed 's/.*city":"//g'| sed 's/","cityid.*$//g'`
temp=`echo $json | sed 's/.*temp":"//g'| sed 's/","WD.*$//g'`
wd=`echo $json | sed 's/.*WD":"//g'| sed 's/","WS.*$//g'`
ws=`echo $json | sed 's/.*WS":"//g'| sed 's/","SD.*$//g'`
echo '|||||you are now at '$city','$temp'℃,'$ws$wd'.'
echo '-----------------------------------------------'
