echo       "Инструкция по установке и настройке SoftEther VPN Server на Ubuntu (например 20.04 или 22.04)"

# Шаг 1: Выбор и загрузка подходящего архива
# Перейдите на страницу релизов SoftEtherVPN_Stable на GitHub
# https://github.com/SoftEtherVPN/SoftEtherVPN_Stable/releases

# Выберите последнюю стабильную версию (обозначенную как -rtm). Для Ubuntu на 64-битной архитектуре (что актуально для большинства современных ноутбуков) скачайте архив с названием, содержащим linux-x64-64bit.tar.gz. Например:
# softether-vpnserver-v4.41-9787-rtm-2023.03.14-linux-x64-64bit.tar.gz
# Скопируйте ссылку на нужный архив и загрузите его с помощью команды wget:
# $ wget https://github.com/SoftEtherVPN/SoftEtherVPN_Stable/releases/download/v4.41-9787-rtm/softether-vpnserver-v4.41-9787-rtm-2023.03.14-linux-x64-64bit.tar.gz


# Шаг 2: Установка зависимостей и распаковка архива

# Установите необходимые пакеты:
# $ sudo apt update
# $ sudo apt install build-essential -y

# Распакуйте загруженный архив:
# $ tar xzf softether-vpnserver-*.tar.gz
# $ cd vpnserver


# Шаг 3: Сборка SoftEther VPN Server
# В директории vpnserver выполните команду:
# $ make
# Во время сборки вам будет предложено принять лицензионное соглашение. Для этого введите 1, затем Enter, и повторите это действие дважды


# Шаг 4: Установка и запуск VPN-сервера

# Переместите собранный сервер в системную директорию:
# $ cd ..
# $ sudo mv vpnserver /usr/local/

# Назначьте необходимые права доступа:
# $ cd /usr/local/vpnserver
# $ sudo chmod 600 *
# $ sudo chmod 700 vpnserver vpncmd

# Создайте и активируйте системную службу для автоматического запуска VPN-сервера:
# $ sudo nano /etc/systemd/system/vpnserver.service

# В открывшемся редакторе вставьте следующий текст:
# [Unit]
# Description=SoftEther VPN Server
# After=network.target
# 
# [Service]
# Type=forking
# ExecStart=/usr/local/vpnserver/vpnserver start
# ExecStop=/usr/local/vpnserver/vpnserver stop
# 
# [Install]
# WantedBy=multi-user.target

# Сохраните файл и закройте редактор. Затем выполните команды:
# $ sudo systemctl daemon-reload
# $ sudo systemctl enable vpnserver
# $ sudo systemctl start vpnserver


# Шаг 5: Первичная настройка VPN-сервера

# Запустите утилиту конфигурации:
# $ sudo /usr/local/vpnserver/vpncmd
# Выберите пункт 1 для управления VPN-сервером. Затем следуйте инструкциям для создания виртуального хаба, настройки пользователей и других параметров. Подробное руководство доступно в официальной документации:
# https://www.softether.org/4-docs/1-manual/7._Installing_SoftEther_VPN_Server


# Шаг 6: Настройка брандмауэра (при необходимости)

# Если на вашем ноутбуке активен ufw (Uncomplicated Firewall), откройте необходимые порты для работы VPN-сервера:
# $ sudo ufw allow 443/tcp
# $ sudo ufw allow 992/tcp
# $ sudo ufw allow 1194/udp
# $ sudo ufw allow 5555/tcp

# Затем перезапустите ufw:
# $ sudo ufw reload


# Теперь ваш SoftEther VPN Server установлен и готов к использованию. Вы можете подключаться к нему с других устройств, используя соответствующие VPN-клиенты. Для управления сервером можно использовать утилиту vpncmd или установить графический менеджер на Windows




echo "                                   SoftEther VPN Client, как на Windows"

# Можно установить и использовать SoftEther VPN Client на Ubuntu, как на Windows, без необходимости компиляции из исходникови без настройки сервера. Подключиться к существующему VPN-серверу с Ubuntu, используя SoftEther VPN Client. Для этого можно воспользоваться официальными бинарными пакетами или использовать альтернативные клиенты, такие как OpenVPN, если ваш VPN-сервер поддерживает этот протокол.

# Если вы хотите простой способ, максимально похожий на Windows:
# Скачайте vpnclient, не vpnserver
# Соберите и запустите утилиту vpncmd
# Настройте подключение через простые команды


# Шаг 1: Установить SoftEther VPN Client на Ubuntu
# SoftEther VPN Client не входит в официальные репозитории Ubuntu, поэтому:

# Вариант 1: Установка из исходников (простой путь только для клиента) Скачайте последнюю стабильную версию VPN Client с официальной страницы релизов. Вам нужен архив с названием, содержащим vpnclient и linux-x64-64bit.

# Пример:
# softether-vpnclient-v4.41-9787-rtm-2023.03.14-linux-x64-64bit.tar.gz

# Пример команды для загрузки:
# $ wget https://www.softether-download.com/files/softether/v4.38-9760-rtm-2021.08.17-tree/Linux/SoftEther_VPN_Client/64bit_-_Intel_x64_or_AMD64/softether-vpnclient-v4.38-9760-rtm-2021.08.17-linux-x64-64bit.tar.gz


# Установите зависимости:
# $ sudo apt update
# $ sudo apt install build-essential -y

# Распакуйте архив:
# tar xzf softether-vpnclient-*.tar.gz
# cd vpnclient

# Соберите клиент:
# $ make
# Во время сборки примите лицензионное соглашение, введя 1 и нажав Enter, когда будет предложено

# Установите клиент:
# $ sudo mv vpnclient /usr/local/
# $ cd /usr/local/vpnclient
# $ sudo chmod 600 *
# $ sudo chmod 700 vpnclient vpncmd


# Шаг 2 (варик 1): Настройка клиента и подключение к VPN-серверу

# Запустите клиент:
# sudo ./vpnclient start

# Запустите утилиту настройки:
# $ sudo ./vpncmd

# Выберите опцию управления клиентом:
# Введите 2 и нажмите Enter.

# Создайте виртуальный сетевой адаптер:
# $ NicCreate myvpn

# Создайте учетную запись для подключения:
# $ AccountCreate myvpn /SERVER:адрес_сервера:порт /HUB:имя_хаба /USERNAME:ваш_логин /NICNAME:myvpn
# Замените адрес_сервера, порт, имя_хаба и ваш_логин на соответствующие значения, предоставленные вашим VPN-провайдером

# Установите пароль для учетной записи:
# $ AccountPasswordSet myvpn /PASSWORD:ваш_пароль /TYPE:standard

# Подключитесь к VPN:
# $ AccountConnect myvpn

# Проверьте статус подключения:
# $ AccountList
# Убедитесь, что статус подключения — Connected


# Шаг 2 (варик 2): Настройка клиента и подключение к VPN-серверу

# Запустите утилиту:
# $ sudo /usr/local/vpnclient/vpncmd
# Введите 3 (для управления клиентом), затем vpnclient и localhost.

# Выполните команды в консоли vpncmd:
# $ NicCreate mynic
# $ AccountCreate myvpn /SERVER:your.vpn.server.address:port /HUB:VPN /USERNAME:your_username /NICNAME:mynic
# $ AccountPasswordSet myvpn /PASSWORD:your_password /TYPE:standard
# $ AccountConnect myvpn

# Замените:
# your.vpn.server.address — на адрес сервера
# your_username, your_password — на ваши данные

# Проверить подключение:
# $ AccountStatusGet myvpn



# Альтернатива: Использовать OpenVPN-клиент
# Если сервер поддерживает OpenVPN (SoftEther может экспортировать .ovpn), то можно использовать:
# $ sudo apt install openvpn
# $ sudo openvpn --config myconfig.ovpn



echo                       "Использование OpenVPN (если поддерживается сервером)"

# Если ваш VPN-сервер поддерживает протокол OpenVPN, вы можете использовать его клиент для подключения:

# Установите OpenVPN:
# $ sudo apt update
# $ sudo apt install openvpn

# Получите файл конфигурации .ovpn:
# Запросите у администратора VPN-сервера файл конфигурации для OpenVPN

# Подключитесь к VPN:
# $ sudo openvpn --config путь_к_файлу.ovpn