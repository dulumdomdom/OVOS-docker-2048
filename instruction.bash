#!/bin/bash

# Клонирование репозитория
git clone https://github.com/bradymadden97/2048-game

# Переход в директорию проекта
cd 2048-game

# Создание Dockerfile (можно добавить здесь команды для создания файла)
echo -e "FROM node:14\nWORKDIR /usr/src/app\nCOPY package*.json ./\nRUN npm install\nCOPY . .\nEXPOSE 8080\nCMD [\"node\", \"server.js\"]" > Dockerfile

# Сборка образа
docker build -t 2048-game .

# Запуск контейнеров
docker run -d -p 8080:8080 --name game1 2048-game
docker run -d -p 8081:8080 --name game2 2048-game