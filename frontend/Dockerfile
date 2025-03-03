FROM node:18-alpine

WORKDIR /app

# Устанавливаем зависимости
COPY package*.json ./

# Устанавливаем зависимости с использованием кэша
RUN npm ci

# Копируем остальные файлы проекта
COPY . .

# Настраиваем переменные окружения для оптимизации Next.js
ENV NODE_ENV=production
ENV NEXT_TELEMETRY_DISABLED=1

# Собираем приложение
RUN npm run build

# Открываем порт
EXPOSE 3000

# Запускаем приложение
CMD ["npm", "start"] 