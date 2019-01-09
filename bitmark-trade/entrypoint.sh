#!/bin/sh
cat >> /root/bitmark-trade-config <<EOL
chain = "$BITMARK_TRADE_CHAIN"
port = 8080
datadir = "/root/bitmark"
api_token = "$BITMARK_TRADE_API_TOKEN"
EOL

## start bitmark-trade service
exec bitmark-trade -conf="/root/bitmark-trade-config"