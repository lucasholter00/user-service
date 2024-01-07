FROM golang:alpine
ENV MONGO_URI = "mongodb+srv://DentSys:123@dentistsystemdb.7rnyky8.mongodb.net/?retryWrites=true&w=majority"
ENV BROKER_URL = "broker.hivemq.com:1883"
WORKDIR /
COPY . .
RUN go mod download
RUN go build -o user-service main.go
CMD ["./user-service"]

