FROM alpine

RUN apk add --no-cache opensc zig

RUN mkdir -p /tmp/mod_pkcs11

WORKDIR /tmp/mod_pkcs11

COPY . .

RUN zig build

RUN ls -l /tmp/mod_pkcs11/zig-out/lib

RUN export OPENSC_DEBUG=1

RUN pkcs11-tool --verbose --module /tmp/mod_pkcs11/zig-out/lib/libmod_pkcs11.so -L