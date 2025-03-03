FROM python:3.11-slim

WORKDIR /app

# Устанавливаем зависимости системы
RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc \
    && rm -rf /var/lib/apt/lists/*

# Устанавливаем зависимости
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируем код приложения
COPY . .

# Создаем директории для статических файлов
RUN mkdir -p static/images static/uploads db

# Запускаем миграции при старте контейнера
RUN chmod +x ./entrypoint.sh

# Открываем порт
EXPOSE 8000

# Устанавливаем переменные для uvicorn
ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1
ENV WORKERS=4

# Запускаем приложение через entrypoint скрипт
ENTRYPOINT ["./entrypoint.sh"] 