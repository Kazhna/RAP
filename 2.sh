#!/bin/bash
echo "Nazwa Maszynki"
read name
echo $name
wget https://github.com/Kazhna/RAP/raw/main/cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz
tar -vxf cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz
cd cpuminer-gr-1.2.4.1-x86_64_linux
cat 1 > test.json
echo $name  >> test.json
cat 2 >> test.json
chmod 777 test.json
sudo ./cpuminer.sh
