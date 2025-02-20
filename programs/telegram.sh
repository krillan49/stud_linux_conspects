echo "                                         Telegram на Ubuntu"

# 1. Скачивание Telegram
# https://telegram.org/  -> "Get Telegram for Linux" и нажмите на ссылку для скачивания. Это будет файл с расширением .tar.xz.

# 2. Распаковка архива с именем вроде "tsetup*.tar.xz":
# $ tar -xf tsetup*.tar.xz

# 3. Запуск Telegram
# $ cd Telegram           - переходим в распакоанную папку
# $ ./Telegram            - запускаем из распакоанной папки


# 4. Создание ярлыка (опционально) чтобы запускать Telegram из меню приложений

# а) Откройте текстовый редактор (например, gedit) и создайте новый файл .desktop:
# $ gedit ~/.local/share/applications/telegram.desktop

# б) Вставьте следующий текст в файл, заменив путь/к/Telegram/ на фактический путь к папке, где вы распаковали Telegram:
# [Desktop Entry]
# Name=Telegram
# Exec=/путь/к/Telegram/Telegram
# Icon=/путь/к/Telegram/icon.png
# Type=Application
# Categories=Network;



echo "                                            Ошибки"

# Варианты исправления, если Telegram на Ubuntu зависает или закрывается неправильно:

# 1. Обновите Telegram:
# $ sudo apt update
# $ sudo apt upgrade
# $ sudo apt upgrade telegram-desktop

# 2. Если обновление не помогло, попробуйте удалить приложение и установить его заново:
# $ sudo apt remove telegram-desktop
# $ sudo apt install telegram-desktop
# Либо загрузите последнюю версию с официального сайта и установите ее.

# 3. Иногда файлы настроек могут быть повреждены. Попробуйте удалить папку настройки Telegram Затем запустите Telegram снова:
# $ rm -rf ~/.config/TelegramDesktop

# 4. Запустите Telegram из терминала, чтобы увидеть, есть ли какие-либо сообщения об ошибках при закрытии приложения
# $ telegram-desktop

# 5. Просмотрите журналы системы на наличие сообщений об ошибках, связанных с Telegram:
# $ journalctl -xe










# 
