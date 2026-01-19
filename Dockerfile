FROM alpine

RUN apk add --no-cache zig

COPY . .

RUN zig build