# AltaiLand

Проект для работы с земельными участками.

## Запуск проекта с использованием Docker

1. Убедитесь, что у вас установлены [Docker](https://docs.docker.com/get-docker/) и [Docker Compose](https://docs.docker.com/compose/install/).

2. Клонируйте репозиторий:
   ```bash
   git clone <URL репозитория>
   cd ALands
   ```

3. Настройте переменные окружения:
   - Проверьте файл `.env` в корне проекта, убедитесь, что там указаны правильные значения для Telegram-бота

4. Запустите контейнеры:
   ```bash
   docker-compose up -d
   ```

5. Проект будет доступен по следующим адресам:
   - Frontend: http://localhost:3000
   - Backend API: http://localhost:8000

## Остановка контейнеров

```bash
docker-compose down
```

## Просмотр логов

```bash
docker-compose logs -f
```

## Структура проекта

- `frontend/` - Next.js приложение
- `backend/` - FastAPI приложение

## Работа с базой данных

База данных SQLite сохраняется в директории `backend/db/`. Данные сохраняются даже при перезапуске контейнеров. 