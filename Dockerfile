# Build stage - Create the binary
# WORKDIR is the current working directory
# COPY 1st dot: the current directory where we are running the docker build command to build this image
# COPY 2nd dot: the current working directory inside the image (/app in this case)
# build a binary file called "main" with the main.go as the entry point
FROM golang:1.18.0-alpine3.15 AS builder
WORKDIR /app
COPY . .
RUN go build -o main main.go

# Run stage - create a run stage image with only the apline linux and the binary
# file from builder stage
FROM alpine:3.15
WORKDIR /app
COPY --from=builder /app/main .
COPY app.env .

# EXPOSE is just a documentation
# RUN the executable we built
EXPOSE 8080
CMD [ "/app/main" ]
