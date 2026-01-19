FROM alpine

RUN apk add --no-cache zig

RUN mkdir -p /tmp/mod_pkcs11

WORKDIR /tmp/mod_pkcs11

COPY . .

RUN zig build