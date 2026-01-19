FROM alpine

RUN apk add --no-cache zig

COPY *.zig .

RUN zig build-exe pkcs11_module.zig --name pkcs11_mod

ENTRYPOINT ["./pkcs11_mod"]