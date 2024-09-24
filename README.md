`docker run --rm -d --network first-network-bridge -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=rocketseat-db -e MYSQL_USER=admin -e MYSQL_PASSWORD=root --name mysql mysql:8`

docker run -v volume-teste:/app -p 3001:3000 --network first-network-bridge --rm -d api-rocket:v4