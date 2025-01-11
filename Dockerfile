FROM golang:1.23.3-bookworm AS builder

WORKDIR /app


COPY . ./

RUN go mod download
RUN go build -o /app/bin/app
