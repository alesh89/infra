#!/bin/bash

# Параметры подключения для первого диска
FOLDER_SHARE="//ip/name-shares-folder"
MOUNT_FOLDER="/mnt/name-folder"

USERNAME="admin"
PASSWORD="password"

# Создаем точку монтирования, если их нет
if [ ! -d "$MOUNT_FOLDER" ]; then
    sudo mkdir -p "$MOUNT_FOLDER"
fi


# Монтируем диск
sudo mount -t cifs "$FOLDER_SHARE" "$MOUNT_FOLDER" -o username="$USERNAME",password="$PASSWORD",uid=1000,gid=1000

# Проверяем статус монтирования первого диска
if [ $? -eq 0 ]; then
    echo "Первый сетевой диск успешно примонтирован в $MOUNT_FOLDER"
else
    echo "Ошибка монтирования первого сетевого диска"
fi

