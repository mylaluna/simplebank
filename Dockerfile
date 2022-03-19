# Build stage - Create the binary
# WORKDIR is the current working directory
# COPY 1st dot: the current directory where we are running the docker build command to build this image
# COPY 2nd dot: the current working directory inside the image (/app in this case)
# build a binary file called "main" with the main.go as the entry point
FROM golang:1.18.0-alpine3.15 AS builder
WORKDIR /app
COPY . .
RUN go build -o main main.go
<<<<<<< HEAD
RUN apk add curl
RUN curl -L https://github.com/golang-migrate/migrate/releases/download/v4.15.1/migrate.linux-amd64.tar.gz | tar xvz migrate
        
=======
>>>>>>> a5bade2bf7870372e6700f96cd73118cb7369ec4

# Run stage - create a run stage image with only the apline linux and the binary
# file from builder stage
FROM alpine:3.15
WORKDIR /app
COPY --from=builder /app/main .
<<<<<<< HEAD
COPY --from=builder /app/migrate .
COPY app.env .
COPY start.sh .
COPY wait-for.sh .
COPY db/migration ./migration

# EXPOSE is just a documentation
# CMD plus ENTRYPOINT together means to pass CMD as parameter to ENTRYPOINT
# Here we pass the main binary to start.sh to run
EXPOSE 8080
CMD [ "/app/main" ]
ENTRYPOINT [ "/app/start.sh" ]
=======
COPY app.env .

# EXPOSE is just a documentation
# RUN the executable we built
EXPOSE 8080
CMD [ "/app/main" ]
>>>>>>> a5bade2bf7870372e6700f96cd73118cb7369ec4
