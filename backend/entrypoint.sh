#!/bin/bash
set -e

# Запускаем миграции
python run_migrations.py

# Запускаем приложение с несколькими воркерами для лучшей производительности
exec uvicorn main:app --host 0.0.0.0 --port 8000 --workers ${WORKERS:-2} --log-level info 