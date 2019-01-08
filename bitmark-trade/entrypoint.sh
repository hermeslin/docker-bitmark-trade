#!/bin/sh
cat >> /root/bitmark-trade-config <<EOL
chain = "$BITMARK_TRADE_CHAIN"
port = 8080
datadir = "/root/bitmark"
EOL

## start bitmark-trade service
exec bitmark-trade -conf="/root/bitmark-trade-config"