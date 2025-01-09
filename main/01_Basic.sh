echo "                                            Linux"

# https://www.youtube.com/watch?v=ztOyQXiBin0       Экзамен LPI Linux Essentials

# https://itproger.com/news/kakoy-linux-distributiv-vibrat-top-7  - описание популярных дистрибутивов

# Linux – это семейство Unix-подобных операционных систем.

# Unix – семейство многозадачных и многопользовательских операционных систем. Unix позволяет одновременно работать сразу с несколькими терминалами, разным людям, при этом каждый из них может выполнять свои действия, что будут использовать ресурсы одного общего ПК.

# Linux - это само ядро, при помощи которого собирают конкретные дистрибутивы(Ubuntu, Mint итд).

# Linux имеет полностью открытий исходный код, это дает разработчику возможности создать все что-угодно на основе ядра Линукс.

# Дистрибутивы это полноценные оболочки(операционные системы), что были созданы на основе ядра Линукс.
# Большинство дистрибутивов бесплатные.
# Eсть дистрибутивы, что не содержат графический интерфейс

# Узнать на чем основан конкретный дистрибутив можно просто нагуглив карту всех дистрибутивов
# Например Mint на основе Ubuntu, а Ubuntu на основе Debian (DEB).

# Андроид также является дистрибутивом, что создан на основе ядра Линукс.


# — Linux Mint. (хорош для слабых устройств, установил и забыл, всё работает, а если ещё и на раздел btrfs и программой timeshift пользоваться, то можно делать моментальные снимки системы), на носу выходы Linux Mint 21 Vanessa, на базе убунту 22.04 (уже вышла бета), в идеале использовать пакеты флатпак, и ставить некоторые программы через деб пакеты. Всё работает с коробки и есть автоматическая установка драйверов при надобности, установил и забыл. (остальные дистры на базе убунту и дебиан особо не зашли, да и они сами, такое себе), может когда то и ElementaryOS начнёт шевелится, а не будет умирать с парой программистов с поломанной психикой, всё обещают eOS 7, но большие сомнения что он будет работать хорошо.

# — Arch Linux. (уж лучше арч, чем глюкнутый манжаро, и собрать свою систему один раз и забекапить диск, если что то сломал, восстановил систему, обновил пакеты, всё пашет идеально), в идеале можно написать скрипт автоустановки арча, что я собственно и сделал для себя, когда нужно устанавливаю в 2-3 команды арч, у меня проблем толком никогда не было, всегда свежие пакеты и огромный форум на случай любых возникших вопросов

# — Void Linux (и всё же, если вы разобрались в арче, то вместо арча, советовал бы войд, хороший дистрибьютив без systemd, работает молниеносно на слабых компьютерах, хороший пакетный менеджер xbps, также есть свой аналог AUR, база скриптов для сборки пакетов через отдельный инструмент xpbs-src)

# — Solus Plasma. (жаль умирает, и некоторые разработчики покинули проект, обновления раз в две недели, быстрый пакетный менеджер), большая часть пакетов имеется в магазине приложений, всё работает с коробки и есть автоматическая установка драйверов при надобности, установил и забыл

# — Fedora (для средних и мощных компьютеров, раздутый дистрибьютив, до сих пор мелькают проблемы на системах с нвидиа, на амд ведёт себя идеально), всё работает с коробки, если включить rpmfusion, установить кодеки, то проблем практически не бывает. Особенно понравились сборки ostree, такие как Silverblue и Kinoite, это монолитные дистрибьютивы, в которых просто так не внесёшь свои правки в системные файлы, не установишь свои rpm пакеты, так скажем защита от дурака. Но можно ставить флатпак пакеты, и тестировать пакеты в контейнерах toolbox.

# — ну и слежу одним глазом за SerpentOS, в конце года обещали первую альфа версию, его делают два бывших разработчика Solus Linux



echo "                                  Структура файловой системы Linux"

# В Виндоус жесткий диск разбивается на отдельные виртуальные диски(C: D: E: итд)

# В Линуксе же есть только 1 диск от корневой директории (/), в которой находятся остальные дериктории, например:
# 1. /home     - содержит домашние директории всех пользователей
# 2. /media    - содержит директории которые выполняют роль как бы виртуальных дисков, флэшек итд, тоесть примерно тоже что и открывается в винде, когда открываешь "мой коипьютер"



echo "                                                Разное"

# Как поставить Far (far2l) на mac/linux:
# https://github.com/elfmz/far2l
# $ apt-get install far2l
# $ rm ~/.config/far2l/font      - чтобы изменить шрифт нужно удалить данный фаил












#
