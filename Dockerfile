FROM golang:1.19-alpine

RUN mkdir /workdir

WORKDIR /workdir

RUN apk update && apk add \
jq \
postgresql-client

RUN go install github.com/pressly/goose/v3/cmd/goose@latest
