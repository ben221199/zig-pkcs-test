FROM alpine

RUN apk add --no-cache zig

COPY . .

RUN zig build-lib -dynamic src/root.zig --name pkcs11_mod.so