docker run --name=redis -p 6379:6379 --restart=always -d redis
docker run --name=mysql_8 -e MYSQL_ROOT_PASSWORD=root -p 3306:3306 --restart=always -d mysql
docker run --name=postgres_10 -e POSTGRES_PASSWORD=root -p 5432:5432 --restart=always -d postgres
docker run --name=rabbitmq -p 15672:15672 --restart=always -d rabbitmq:3-management
docker run --name=zookeeper -p 8080:8080 -p 3888:3888 -p 2888:2888 -p 2181:2181 --restart=always -d zookeeper

docker run --name=aria2 -v <>:/app/Downloads -p 6800:6800 --restart=always -d gjquoiai/aria2:latest
docker run --name=mongo -p 27017:27017 --restart=always -d mongo
