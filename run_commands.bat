#!/bin/bash
git clone https://github.com/bradymadden97/2048-game
cd 2048-game
echo "Создание Dockerfile..."
cat <<EOF > Dockerfile
FROM node:14
WORKDIR /usr/src/app
COPY . .
EXPOSE 8080
CMD ["node", "server.js"]
EOF

echo "Сборка образа..."
docker build -t 2048-game .

echo "Запуск первого контейнера..."
docker run -d -p 8080:8080 --name game1 2048-game

echo "Запуск второго контейнера..."
docker run -d -p 8081:8080 --name game2 2048-game