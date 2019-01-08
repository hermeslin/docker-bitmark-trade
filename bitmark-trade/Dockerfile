## build bitmark trade
FROM golang:1.10-alpine3.8 as builder
RUN apk add git
WORKDIR /root
RUN go get github.com/bitmark-inc/bitmark-trade

## copy go bins
FROM alpine:3.8
RUN apk add --no-cache ca-certificates
COPY --from=builder /go/bin/bitmark-trade /usr/local/bin

# set entry point
COPY ./entrypoint.sh /root/entrypoint.sh
RUN ["chmod", "+x", "/root/entrypoint.sh"]
ENTRYPOINT ["sh", "/root/entrypoint.sh"]