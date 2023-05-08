FROM golang:1.17

LABEL base.name="Groupie-tracker"

WORKDIR /app

COPY . .

RUN go build -o main ./localhost/

EXPOSE 3080

ENTRYPOINT ["./main"]
