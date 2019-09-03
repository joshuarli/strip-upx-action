FROM alpine:latest

RUN apk update && apk add --no-cache binutils upx
