@echo off
echo Stopping all running Docker containers...
for /f "tokens=*" %%i in ('docker ps -q') do docker stop %%i

echo Removing all Docker containers...
for /f "tokens=*" %%i in ('docker ps -aq') do docker rm %%i

echo Removing all Docker images...
for /f "tokens=*" %%i in ('docker images -q') do docker rmi %%i

echo Removing unused Docker networks...
docker network prune -f

echo Deleting dev environments...
docker-compose down

echo Cleaning up Docker system...
docker system prune -f

echo Operations completed.
