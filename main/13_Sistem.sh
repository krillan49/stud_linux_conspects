echo "                                            Процессы"

# kill - команда отключает процесс, переданный в качестве аргумента, например по его PID-process-id, взять который можно из ps -aux

# $ kill 367             - отрубить процесс c PID-process-id равным 367


# .bash_profile - фаил настроек оболочки Bash, он выполняется 1 раз при логине в систему, при первом логине в сессию оболочки. В нем прописываются команды, которые будут выполняться при входе в систему
# $ vi .bash_profile            - посмотреть содержание фаила .bash_profile (редактор можно любой).
# Можно настроить терминал, чтобы фаил .bash_profile отрабатывал при открытии нового окна терминала каждый раз - в настройках терминала в нашем профиле в меню Команда/Command поставить галочку на пункте "Запускать команду как оболочку входа / Run command as a login shell".



echo "                                         Диспетчеры задач"

# $ top             - чем-то похож на диспетчер задач из Windows, но только в терминале. Показывает, в динамике: какие процессы запущены, от какого пользователя и сколько ресурсов на какие процессы тратится.
# Команды внутри диспетчера:
# Shift + p      - отфильтровать по загрузке процессора
# Shift + m      - отфильтровать по заагрузке оперативки
# q              - выйти из программы


# $ ps              - посмотреть запущенные данным пользователем программы (только запущенные вручную)
# Флаги:
# -u                          - флаг для задания (или отображения ??) пользователя
# -a                          - все (? пользователи ?)
# -x
# Примеры:
# $ ps -u krillan             - посмотреть процессы запущенные конкретным юзером, включая системные
# $ ps -aux                   - посмотреть запущенные всеми пользователями программы (в том числе запущенные системой)
# $ ps -aux | grep a          - посмотреть все строки вывода где есть буква a (буква выделится красным)



echo "                                             Система"

# $ reboot                 - перезапустить компьютер через несколько минут
# $ reboot now             - перезапустить компьютер сейчас

# $ shutdown               - выключить компьютер через несколько минут
# $ shutdown now           - выключить компьютер сейчас


# $ hostname     - вывести название компьютера

# $ uptime       - показывает время и сколько времени включен компьютер, сколько пользователей


# $ uname -a          - получить название нашей операционной системы и ее версию
# $ uname -m          - проверить разрядность системы. Если вывод будет `x86_64` - это 64-разрядная версия. Если `i386`, `i686` или что-то подобное - 32-разрядная версия.

# $ lsb_release -a                  - инфа о операционной системе и ее версии (нужно установить пакет)
# $ sudo dnf install lsb-core       - установка пакета

# $ cat /etc/os-release   - инфа об операционной системе


# Команда для отключения звука в терминале:
# $ set bell-style none
# Это отключит звук "bell" (звонок) для текущего сеанса. Чтобы сделать это изменение постоянным, добавьте эту строку в ваш файл конфигурации (`~/.bashrc` для bash или `~/.zshrc` для zsh)



echo "                                  Система (Переменные среды и логи)"

# Некоторые переменные окружения создаются автоматически, но можно создавать свои, чтобы их потом как-то использовать

# $ echo $PATH        - вывести переменные среды

# $ env               - (? тоже что и echo $PATH ??) вывести все системные переменные (переменные окружения)


# $ echo $HOME        - вернет рекущую домашнюю директорию, например "/home/krillan"
# $ echo $USER        - вернет текущего юзера
# $ echo $PWD         - вернет текущую директорию

# $ export TEST_VAR=over9000       - создать новую системную переменную TEST_VAR со значением over9000


# /var/log                   - тут хранятся все логи
# $ dmesg                    - лог линуксовского ядра, временный, тоесть нигде не хранится
# $ dmesg | grep a           - чето поищем в логе ядра



echo "                                             Железо"

# $ lscpu           - подробная информация о процессоре

# $ free            - показывает сколько памяти доступно и сколько занято в байтах
# $ free -h         - показывает сколько памяти доступно, переводит байты в мегабайты или гигабайты для удобочитаемости

# $ df              - показывает сколько места на дисках занято/свободно


# Узнать, есть ли на ноутбуке Bluetooth адаптер (Если он есть, то ядро само загружает модуль для него, когда запускается Ubuntu):
# $ dmesg | grep -i blue
# Если вывод, +- аналогичный показанному ниже, то данный ноутбук поддерживает Bluetooth:
# [    2.933062] usb 1-1.4: Product: Broadcom Bluetooth Device
# или
# [    3.757769] Bluetooth: Core ver 2.16





















#
