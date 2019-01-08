# docker-bitmark-trade
dockerize bitmark trade service

## Setup
copy `.env.example` to `.env`
and dont forget setting your `HOST_DATADIR` and `HOST_ASSETS` location

## Install
```
$ docker-compose build bitmark-trade
$ docker-compose up -d bitmark-trade
```

## Trace issue log
```
$ docker-compose logs -f bitmark-trade
```

## Creat Account
you can change bitmark-trade port in `.env` file
```
curl -X POST http://localhost:6688/account
```

## More api documents
https://bitmarktradeservice.docs.apiary.io/#reference/0/issue/register-an-asset-and-create-a-new-bitmark-on-it