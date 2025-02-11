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