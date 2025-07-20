#!/bin/bash
set -e  # Прерываем выполнение при ошибках

REPO_URL="https://github.com/Sem20071/shvirtd-example-python.git"
DOWNLOAD_DIR="/opt/my_fork_repo"
COMPOSE_FILE="compose.yaml"

# Клонируем репозиторий
echo "Клонируем репозиторий..."
git clone "$REPO_URL" "$DOWNLOAD_DIR"

# Переходим в директорию
cd "$DOWNLOAD_DIR"

# Запускаем docker compose
echo "Запускаем docker compose..."
docker compose -f "$COMPOSE_FILE" up -d

echo "Сервис запущен!"
