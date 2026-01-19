FROM alpine

RUN apk add --no-cache opensc strace zig

RUN mkdir -p /tmp/mod_pkcs11

WORKDIR /tmp/mod_pkcs11

COPY . .

RUN zig build

RUN ls -l /tmp/mod_pkcs11/zig-out/lib

#RUN OPENSC_DEBUG=9 pkcs11-tool --verbose --module /tmp/mod_pkcs11/zig-out/lib/libmod_pkcs11.so -L

RUN LD_DEBUG=bindings strace pkcs11-tool --verbose --module /usr/lib/opensc-pkcs11.so -L