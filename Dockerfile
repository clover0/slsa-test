FROM golang:1.23.3-bookworm AS builder

WORKDIR /app


COPY go.* cmd ./

RUN go mod download
RUN go build -o /app/bin/app
