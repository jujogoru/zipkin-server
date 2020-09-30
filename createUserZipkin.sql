DROP USER IF EXISTS 'zipkin'@'%';
DROP USER IF EXISTS 'zipkin'@'localhost';
CREATE USER 'zipkin'@'localhost' IDENTIFIED BY 'zipkin';
GRANT ALL PRIVILEGES ON * . * TO 'zipkin'@'localhost';
ALTER USER 'zipkin'@'localhost' IDENTIFIED WITH mysql_native_password BY 'zipkin';
FLUSH PRIVILEGES;
