#!/bin/sh
echo
export RABBIT_ADDRESSES=localhost:5672
export STORAGE_TYPE=mysql
export MYSQL_USER=zipkin
export MYSQL_PASS=zipkin
export MYSQL_JDBC_URL=jdbc:mysql://localhost:3306/zipkin?serverTimezone=America/Mexico_City&allowPublicKeyRetrieval=true&useSSL=false
java -jar ./zipkin-server-2.21.5-exec.jar