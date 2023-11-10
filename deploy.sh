docker rm -f $(docker ps -aq)
docker rmi -f $(docker images)
docker rm -f $(docker ps -aq)
docker rmi -f $(docker images)
docker build -t nodejsapp . --no-cache
docker run -d -p 80:5000 --name nodejsapp nodejsapp nodejsapp
