FROM golang:1.22 as builder
WORKDIR /app
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -o server

FROM alpine:3
RUN apk add --no-cache ca-certificates
COPY --from=builder /app/server .
COPY --from=builder /app/homepage.html .
CMD ["./server"]