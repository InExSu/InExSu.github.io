#!/bin/bash
[ -z "$1" ] && echo "Использование: $0 \"Сообщение коммита\"" && exit 1

./cPU.sh

# Подтягиваем изменения
git pull

# Добавляем ВСЕ изменения
git add -A . && \
git commit -m "$1" && \
git push