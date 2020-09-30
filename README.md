# zipkin-server

This is a server for tracing to collect and look up data from distributed systems.

### Setup

Find the instructions to get MySQL, Postgres and RabbitMQ from **docker-compose** README.
Execute the DDL found into this project after running MySQL on Docker.

Follow the next commands to generate the server image:

### Generate jar

```bash
$ ./mvnw clean package -DskipTests
```

### Create network (ignore if the network was already created)

```bash
$ docker network create springcloud
```

### Generate image

```bash
$ docker build -t zipkin-server:v1 .
```

### Start this project without docker-compose

```bash
$ docker run -d -p 9411:9411 --name zipkin-server --network springcloud \
-e RABBIT_ADDRESSES=microservices-rabbitmq38:5672 -e STORAGE_TYPE=mysql \
-e MYSQL_USER=zipkin -e MYSQL_PASS=zipkin \
-e MYSQL_JDBC_URL='jdbc:mysql://microservices-mysql8:3306/zipkin?serverTimezone=America/Mexico_City&allowPublicKeyRetrieval=true&useSSL=false' \
-e MYSQL_HOST=microservices-mysql8 zipkin-server:v1
```
### How to start the whole project

To start the complete project, please take a look at **docker-compose** project and follow the instructions from its README file.