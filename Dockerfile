FROM golang:1.24.2-alpine AS builder

RUN apk update && apk add --no-cache git

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY . ./

RUN go build -o go-monitoring-demo

FROM alpine:latest

RUN apk --no-cache add ca-certificates

WORKDIR /root/

COPY --from=builder /app/go-monitoring-demo .

EXPOSE 8080

CMD ["./go-monitoring-demo"]
