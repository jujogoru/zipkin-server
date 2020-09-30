DROP USER IF EXISTS 'zipkin'@'%';
DROP USER IF EXISTS 'zipkin'@'localhost';
CREATE USER 'zipkin'@'%' IDENTIFIED BY 'zipkin';
GRANT ALL PRIVILEGES ON * . * TO 'zipkin'@'%';
ALTER USER 'zipkin'@'%' IDENTIFIED WITH mysql_native_password BY 'zipkin';
FLUSH PRIVILEGES;
