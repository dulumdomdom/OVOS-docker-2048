# Используем официальный образ Node.js, необходимый для запуска JavaScript-приложений на серверной стороне
FROM node:14

# Устанавливаем рабочую директорию, команды будут выполняться в этой директории
WORKDIR /usr/src/app

# Копируем файлы из локальной директории в текущую рабочую директорию контейнера
COPY /2048-game

# Информируем Docker о том, что контейнер будет слушать на порту 8080 во время выполнения
EXPOSE 8080

# Команда по умолчанию для запуска приложения. Она говорит Docker выполнить node server.js, что запускает приложение на Node.js
CMD ["node", "server.js"]
