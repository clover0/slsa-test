FROM golang:1.23.3-bookworm AS builder

WORKDIR /app

COPY slsa-test /app/slsa-test

ENTRYPOINT ["/app/slsa-test"]
