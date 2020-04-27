awk '{print $1}' < ~/.android/adbkey.pub | openssl base64 -A -d -a | openssl md5 -c

awk '{print $1}' < ~/.android/adbkey.pub | base64 --decode | md5sum

