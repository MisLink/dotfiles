# db
docker run --name=redis -p 6379:6379 --restart=always -d redis:6
docker run --name=mysql -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 --restart=always -d mysql:8
docker run --name=postgres -e POSTGRES_PASSWORD=root -p 5432:5432 --restart=always -d postgres:12
docker run --name=mongo -p 27017:27017 --restart=always -d mongo:4
docker run --name=rabbitmq -p 15672:15672 -p 5672:5672 --restart=always -d rabbitmq:3-management
docker run --name=aria2 -p 6800:6800 --restart=always -v :/app/Downloads -d gjquoiai/aria2:latest
docker run --name=elasticsearch -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" --restart=always -d elasticsearch:6.8.10
docker run -d --name=docker-socat --restart=always -p 192.168.247.1:2375:2375 -v /var/run/docker.sock:/var/run/docker.sock alpine/socat tcp-listen:2375,fork,reuseaddr unix-connect:/var/run/docker.sock
