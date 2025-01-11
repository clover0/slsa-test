FROM golang:1.23.3-bookworm AS builder

WORKDIR /app


RUN go mod download

COPY go.* cmd ./

RUN go build -o /app/bin/app
