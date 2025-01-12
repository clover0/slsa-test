FROM golang:1.23.3-bookworm AS builder

WORKDIR /app

COPY . /app

RUN go mod tidy && go mod download
RUN cd cmd && go build -o /app/bin/app
