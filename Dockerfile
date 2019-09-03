FROM alpine:latest

RUN apk update && apk add --no-cache binutils upx

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
