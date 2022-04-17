# simplebank

This is a sample project that aims to learn and practice a Go language based web service backend. The key technologies used are summarised below.

## Language Version

- Golang 1.18

## Database

- [PostgreSQL 12 (docker)](https://hub.docker.com/_/postgres)
- Entity Relationship Diagrams tool: [dbdiagram.io](https://dbdiagram.io/)
- Schema migration: [Golang Migrate](https://github.com/golang-migrate/migrate)
- Golang PostgreSQL driver: [lib/pq](https://github.com/lib/pq)
- SQL query to Golang compiler: [sqlc](https://sqlc.dev/)

## Web

- Web Framework: [Gin](https://github.com/gin-gonic/gin)
- Security Token: [PASETO](https://github.com/o1egl/paseto)
- Optional token: [JWT](https://github.com/dgrijalva/jwt-go)

## Test

- [Testify](https://github.com/stretchr/testify) (Beware of upcoming v2)
- [gomock](https://github.com/golang/mock)
- Postman

## Container

- Docker Desktop

## Configuration

- [Viper](https://github.com/spf13/viper) (Beware of upcoming v2)

## Deploy

Every time a pull request is merged into master, Github workflow will create a docker image and push into AWS ECR.

- AWS RDS, ECR, Secret Manager, IAM, EKS
- AWS CLI
- Github workflow, action, and repository secret
- [jq](https://stedolan.github.io/jq/) (comman-line JSON processor)
- [k8s](https://kubernetes.io/)
- [k9s](https://k9scli.io/) terminal based UI to interact with k8s clusters. 
- [cert-manager](https://cert-manager.io/) TLS certificate agent for k8s
- [letsencrypt](https://letsencrypt.org/) Certificate Authority

## TIPS

- aws cli login to ecr command:
```bash
aws ecr get-login-password | docker login --username AWS --password-stdin 796755891642.dkr.ecr.ap-southeast-2.amazonaws.com
```





