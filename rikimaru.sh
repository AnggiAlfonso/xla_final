apt update
wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz
tar -xf xmrig-6.12.0-linux-x64.tar.gz
cd xmrig-6.12.0
./hellminer  -c stratum+tcp://na.luckpool.net:3956#xnsub -u RNM3tLHz6EBKhpA1EPeg7Bmk8sttbUTGdo.agiz1 -p x --cpu 4
