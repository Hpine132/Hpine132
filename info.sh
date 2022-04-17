#!/bin/bash

echo "[Thong tin he thong]"
echo "Ten may: $(uname -n)"
echo "Ten ban phan phoi: $(uname -o)"
echo "Phien ban he dieu hanh: $(uname -v)"
nameCpu=$(grep -i 'model name' /proc/cpuinfo | uniq)
echo "Ten CPU: ${nameCpu:13}"
bitCpu=$(lscpu | grep -i 'op-mode')
echo "CPU Bit: ${bitCpu:41}"
speedCpu=$(grep -i 'cpu mhz' /proc/cpuinfo | uniq)
echo "Toc do: ${speedCpu:11} MHz"
memTotal=$(free -m | grep -i 'mem' | awk '{print $2}')
echo "Thong tin bo nho vat ly: $memTotal MB"
freesz=$(df -h --total | grep total | awk '{print $4}')
echo "Thong tin o dia con trong: $freesz"
echo "Danh sach dia chi IP cua he thong: $(curl -s ident.me)"
echo "Danh sach user tren he thong:"
cut -d: -f1 /etc/passwd | sort
echo "Thong tin cac tien trinh dang chay voi quyen root:"
sudo ps ru | grep '^root' | sort
