FROM alpine

RUN apk add --no-cache zig

COPY pkcs11.zig .
COPY pkcs11_module.zig .

RUN zig build-lib -dynamic pkcs11_module.zig --name pkcs11_mod