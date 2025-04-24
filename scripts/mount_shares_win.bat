@echo off
:: Указываем учетные данные
set USERNAME=admin
set PASSWORD=password

:: Первая точка монтирования
set MOUNT_FOLDER=L:
set FOLDER_SHARE=\\ip\name-shares-folder

:: Монтируем первый диск
echo Монтирование первого сетевого диска...
net use %MOUNT_FOLDER% %FOLDER_SHARE% /user:%USERNAME% %PASSWORD% /persistent:yes

:: Проверяем статус монтирования первого диска
if %errorlevel% equ 0 (
    echo Диск успешно примонтирован как %NMOUNT_FOLDER%
) else (
    echo Ошибка монтирования диска
)

:: Завершение работы скрипта
pause
