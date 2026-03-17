#!/bin/bash

echo "введите абсолютный путь до директории:"
read DIRNAME

if [ -z "$DIRNAME" ]; then
    echo "Ошибка: путь не может быть пустым"
    exit 1
fi


if [[ "$DIRNAME" != /* ]]; then
    echo "ошибка: введите абсолютный путь (начинающийся с /)"
    exit 1
fi

if [ -d "$DIRNAME" ]; then
    echo "exists"
else
    
    if mkdir -p "$DIRNAME" 2>/dev/null; then
        echo "created"
    else
        echo "Ошибка: не удалось создать директорию"
        exit 1
    fi
fi