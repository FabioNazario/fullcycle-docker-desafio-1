FROM golang:latest AS builder

WORKDIR /go
COPY hello-fullcycle.go /go
RUN go build hello-fullcycle.go


FROM scratch
WORKDIR /go
COPY --from=builder /go/hello-fullcycle .
CMD [ "./hello-fullcycle" ]


