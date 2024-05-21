echo "                                             Терминал"

# (!! Добавить про объединение и регистр(заглавн строчный) ключей и про символы поиска * ?)

# При помощи команд терминала(командной строки) Linux можно выполнять людые действия в операционной системе.

# https://putty.org.ru/articles/unix-linux-ref        -  справочник по всем(многим?) командам

# Название символов:
# ~ - тильда
# ^ - карет
# & - и
# | - или
# \ - бэкслэш
# / - слэш


# Ctrl + Alt + T   - открыть терминал, так же можно зайти через меню приложений или обзор на верхней панели


# Любой дистрибутив можно переключить в консольный режим отключив графическую оболочку
# Ctrl + Alt + F3             - переключиться в консольный режим отключив графическую оболочку(спросит логин и пароль)
# Ctrl + Alt + [F3|F4|F5|F6]  - альтернативные сессии консольного режима(можно переключаться туда-сюда)
# ctrl + Alt + F2             - выйти из консольного режима на экран логина
# Ctrl + Alt + F1             - выйти из консольного режима на рабочий стол(так же может войти в консольный режим но по другому ?)


# Ctrl + L          - очистить терминал, аналог команды clear

# Ctrl + С          - прервать процесс

# Ctrl + Z          - остановить процесс например выполним команду:
# $ ping google.com
# Нажимаем Ctrl + Z, процесс ставится на паузу
# Далее можем выполнять любые команды
# $ fg              - возобновляем процесс что был на паузе


# Tab               - вместо полного введения названия команды, файла или папки можно ввести начальные символы и нажать tab, а терминал дополнит остальную часть названия или предложит альтернативы, если вариантов больше одного


# Папка /home/ это userspace/пользовательское пространство. Для личных файлов, фотографий итд. А корневая папка(доступная только суперюзеру), она и является корнем и обозначается она как "/"

# .            - текущая директория (иногда может пригодиться)
# ./some       - папка some в текущей директории тоже что и просто some
# ..           - директория выше текущей
# ~            - домашняя директория, аналог /home/username

# ~$           - слева от "$" пишется текущая директория (тут домашния директория)
# ~/Загрузки$  - тоесть текущая директория это /home/username/Загрузки  (Не обязательно писать "Загрузки" на русском. Можно и "Downloads")

# krillan@krillan-itp-ubuntu:~/Документы$ - имя_пользователя@имя_сервера:текущая_директория$


# При введении в терминал имен фаилов или директорий состоящих из нескольких слов разделенных обычным пробелом, нужно взять это название в одинарные кавычки
# $ cd ~/'Рабочий стол'       - переходим в директорию Рабочий стол


# В терминале можно запускать любые установленные приложения просто указав их названия
# $ vim              - запустим текстовый редактор vim (выход из vim  :qa и нажать энтер)
# $ firefox          - запустить браузер firefox



echo "                                    Поиск команд и их описания"

# $ man -k time    - найдет все команды которые содержат в названии или описании слово time
# $ man uptime     - выведет какбы подменю с подробным описанием команды uptime (выход: q, поиск написать: \текст, переключиться на следующее слвпадение при поиске: n)
# $ info uptime    - выведет какбы подменю с альтернативной докумментацией к команде (выход: q)
# $ whatis uptime  - краткое описание команды uptime
# $ whereis uptime - выводит путь к местонахождению программы и местонахождению документации к ней



echo "                                         Основные команды"

# $ sudo reboot now             - перезапустить компьютер сейчас
# $ sudo shutdown now           - выключить компьютер сейчас


# $ hostname     - вывести название компьютера
# $ uname -a     - получить название нашей операционной системы и ее версию
# $ lscpu        - подробная информация о процессоре
# $ uptime       - показывает сколько времени и сколько времени включен компьютер, сколько пользователей


# $ calendar     - выдаст все знаменательные мировые события, случившиеся в мире сегодня и завтра(нужно установить)
# $ cal          - выдаст удобный календарь на этот месяц(нужно установить ncal)
# $ date         - удобный формат даты и времени в строке
# $ bc           - превратить терминал в калькулятор

# $ xterm        - открыть дополнительный терминал xterm(нужно установить)


# $ exit      - закрыть терминал или вернуться в состояние предыдущего пользователя который был сменен через "su"
# $ clear     - очистить терминал от записей


# 0. echo - оператор для вывода текстовых сообщений в терминал
# -n  - флаг не ставит перевод строки в конце строки(тоесть выведет в начале строки до адреса даже)
# $ echo "folder done"     - вывести сообщение folder done в терминал
# $ echo -n "folder done"  - вывести сообщение folder done в терминал
# $ echo folder done       - тоже самое(можно без кавычек)
# $ echo $PATH             - вывести переменные среды


# 1. pwd - выводит текущую рабочую директорию. PWD расшифровывается как «print working directory».
# ~$ pwd                #=> /home/username


# 2. cd - выполняет переход между папками(директориями), после нее пишем полный или относительный путь.
# $ cd fname                   - перейти в папку fname в текущей директории (относиельноый путь)
# $ cd ~                       - перейти в домашнюю директорию активного пользователя
# $ cd                         - перейти в домашнюю директорию активного пользователя
# $ cd /                       - перейти в корневую директорию
# $ cd ~/Desktop               - перейти в директорию рабочего стола
# $ cd ~/Загрузки/ваша_папка   - перейти по полному пути
# $ cd Загрузки/ваша_папка     - перейти по относительному пути
# $ cd ..                      - перейти на директорию вверх
# $ cd ../Загрузки/ваша_папка  - перейти на директорию вверх и по относительному пути


# 3. ls - просмотреть содержимое какой либо директории
# $ ls                  - просмотреть содержимое текущей директории
# $ ls /home/username   - просмотреть содержимого в папке /home/username
# $ l                   - посмотреть содержимое директории с обозначением папок как name/
# $ ls -R some          - посмотреть рекурсивно, тоесть и то что находится внутри директории some

# $ sudo ls -la -R /    - посмотреть содержимое всех директорий на компе (sudo тк некоторые доступны только скперюзеру)


# 4. tree - команда показывает все фаилы, папки как в данной директории, так и во всх поддиректориях в виде дерева, а так же пишет общее число директорий и фаилов. Изначально не установлена так что нужно установить
# $ sudo apt install tree              - установка команды tree
# $ tree                               - посмотреть дерево от текущей директории
# $ tree www                           - посмотреть дерево от директории www по относительному пути


echo "                                              Флаги"

# К каждой команде есть дополнительные опции (флаги). Они добавляют дополнительное действие при выполнении команды. Чтобы просмотреть все возможные опции для определенной команды пропишите после неё «--help»

# $ ls --help            - посмотреть все дополнительные опции к команде ls

# Примеры для ls
# $ ls -l                - отображение подробной информации относительно файлов, линков(путь) и папок (доступ, владелец, вес)
# $ ls -a                - показывает так же скрытые фаилы и дериктории(имена начинающиеся с . втч . и ..)
# $ ls -r                - выведет в обратном порядке (по умолчанию алфавитный)
# $ ls -p                - выведет в формате name/  (аналог команды l)
# $ ls -p -r             - можно указывать несколько флагов
# $ ls -la               - или так

# между -r и -R нету разницы

# трибуты пишем не через дефис?  -v, -x...  Раньше всё через дефис было, а теперь без. Какая разница? - никакой (? только для архивов или везде ?)


echo "                                   Работа с фаилами и директориями"

# 0a. cat - команда выводит содержимое фаила в консоль
# 0b. more - команда выводит содержимое фаила в консоль частями, с возможностью пролистывания стрелочками, q - выход(удобно для больших фаилов)
# 0c. less - работает как man, тоесть можно листать плавно и искать записав нужное слово от слэша(/слово)
# $ cat some/file.txt                             - выведет в консоль содержимое фаила some/file.txt
# $ more file.txt                                 - выведет в консоль содержимое фаила file.txt
# $ less file.txt                                 - выведет в консоль содержимое фаила file.txt


# 1. touch - команда позволяет создать один или несколько файлов(не может создавать папки). Если применить ее к существующему фаилу, то просто изменит время его создания и все(эта функция работает и с директориями).
# $ touch index.html                              - будет создан файл index.html в текущей директории
# $ touch www/index.html                          - будет создан файл в папке www
# $ touch www/index.html www/css/style.css        - будет создано два файла в папке www и в www/css


# 2. mkdir - позволяет создать папку в определенной директории, можно создать как одну, так и несколько папок одновременно.
# -p  - флаг чтобы создать сразу и папку и папку внутри нее
# $ mkdir www                            - будет создана папка www в текущей директории
# $ mkdir user www/css                   - будут созданы две папки(одна в уже существующей папке www)
# $ mkdir -p aaa/bbb                     - создать директорию и вложенную директорию сразу aaa/bbb


# 3. cp - используется для копирования фаилов или директорий. При копировании можно указать новое имя и новую папку для файла.
# -v  - флаг для вывода инфы о копировании
# $ cp file.txt file2.txt                 - копирование file.txt в текущую директорию и изменение его имени на file2.txt
# $ cp -v file.txt file2.txt              - тоже с отображение инфы
# $ cp file.txt www                       - копирование file.txt из текущей директории в www/
# $ cp file.txt www/file2.txt             - копирование file.txt из текущей директории в www/ и изменение его имени на file2.txt
# $ cp ~/some/file.txt www/file2.txt      - копирование file.txt из директории ~/some/
# $ cp ~/some/file.txt .                  - копирование file.txt из директории ~/some/ в текущую директорию
# $ cp *.txt www                          - копирование всех текстовых фаилов в www
# $ cp file?.txt www                      - копирование всех текстовых фаилов типа fileA.txt в www (? - любой одиночный символ)

# Для копирования директорий(со всем содержимым) нужно добавить флаг -R
# $ cp -R www new                         - копируется директория www с названием new в текущей директории


# 4. mv - позволяет переместить(вырезать и вставить) файл из одной папки в другую, так же используется для переименования.
# $ mv test/file.txt some                 - перемещение файла file.txt из папки test в папку some
# $ mv file.txt .file.txt                 - переименование файла file.txt в .file.txt (тоесть скрытый)
# $ mv aaa ccc                            - переименование директории aaa в ccc
# $ mv file.txt ..                        - перемещение файла на уровень выше(тут выше от текущего уровня рабочей директории)
# $ mv www/file.txt www/..                - перемещение фаила из папки www в текущую папку
# $ mv file.txt ~/Desktop                 - перемещение файла file.txt на рабочий стол


# 5. rm - команда удаляет один или несколько файлов или папок.
# $ rm test/some/file.txt                 - удаление файла file.txt из директории test/some/
# $ rm file.txt some.html                 - удаление файлов file.txt и some.html
# $ rm test/*                             - удалить все фаилы из директории test/
# $ rm test/*.txt                         - удалить все фаилы с расширением .txt из директории test/
# $ rm text.*                             - удалить все фаилы с названием text.
# $ rm file_*.txt                         - удаление всех файлов, что начинаются на file_ и заканчиваются .txt

# rmdir - команда для удаления пустых папок
# $ rmdir aaa                             - удалить папку aaa

# Для удаления не пустых папок нужно дописать опции -rf
# -r - ключ используется для того, чтобы выполнять рекурсивный обход всех директорий.
# -f - (force) ключ - не запрашивать никаких подтверждений.

# $ rm -rf test/dir                       - удаление папки dir и всего ее содержимого из папки test



echo "                                         Текстовые редакторы"

# В Linux в зависимости от версии могут присутствовать разные встроенные или устаневливаемые текстовые редакторы. Наиболее популярными являются: nano, pico(почти копия nano, но более старая), vi, vim, gedit

# gedit - удобный редактор для графической оболочки, как стандартный блокнот на винде, открывает фаилы при 2йном нажатии именно он
# $ gedit                                - откроет окно редактора в графической оболочке

# nano - команда позволяет открыть фаил для редактирования при помощи текстового редактора nano, если фаил не существует, то он будет создан и открыт. В окне редактирования можно изменять фаил, снизу прописаны дополнительные команды, для них символ "^" обозначет Ctrl
# $ nano                                 - создать и открыть новый фаил в текстовом редакторе nano
# $ nano index.html                      - будет создан или открыт файл index.html
# $ nano www/index.html                  - будет создан или открыт файл index.html из папки www

# vi - почти копия vim
# vi                                     - запустить редактор vi
# vi file.txt                            - открыть фаил в редакторе vi
# По умолчанию в режиме команд, чтобы редактировать текст нужно нажать "i", выйти обратно в командный режим клавиша "Esc"
# Для ввода команд надо сперва нгажать ":" - (:q - выйти, :w имя_фаила - записать в фаил, :wq имя_фаила - выйти и записать, ! - в конце команды, тогда не будет спрашивать если не сохранено)

# vim  - нужно установить
# $ sudo apt-get install vim             - установим текстовый редактор вим (есть в стандартном репозитории)
# $ vim                                  - проверим (выход из vim  :qa и нажать энтер)

# xed - для Минт 19.3 добавили другой текстовый редактор
# $ xed



echo "                                     Линки(Ярлыки и дубликаты)"

# 1. Линки-ярлыки(simbolic link/симлинк) - можно создавать для фаилов и папок и при исполнении или применении к ним команд cd, cat, nano и похожих команды применятся к исходному фаилу или папке. Лучше указывать полный путь для линка

# $ ln -s ~/Documents/dir1 linkToDir1               - создаем в текущей директории ярлык linkToDir1 для папки dir1
# $ ln -s ~/Documents/dir1 ~/Desktop/linkToDir2     - создаем на рабочем столе ярлык linkToDir2 для папки dir1
# $ ln -s ~/Documents/file.txt some.txt             - создаем в текущей директории ярлык some.txt для фаила file.txt

# $ mv linkToDir1 ~/Desktop                         - переносим линк на рабочий стол

# $ cp -R some.txt ~/Desktop                        - при копировании нужен ключ -R, а иначе захочет копировать фаил

# $ cat some.txt                                    - просматриваем фаил file.txt через линк some.txt

# $ rm linkToDir1                                   - удаляем линк


# 2. Линки-дубликаты(жесткие ссылки) - создаются ссылки-дубликаты фаилов, которые полностью дублируют все свойства фаила. Сами данные не копируются, к ним лишь создается ссылка(тоесть доп место на диске не занимает). Жесткая ссылка это ссылка на данные и оба файла ведут на один экземпляр данных. Жесткие ссылки нужны, чтобы создавать "копию" файла, не копируя его на самом деле.

# $ ln file.txt somedup                             - создаем somedup дубликат фаила file.txt



echo "                      Команды поиска, сортировки и записи: find, wc, locate, cut, sort"

# 1. locate - выведет пути ко всем фаилам(только системным и исполняемым) по названию в системе(нужно установить)
# $ sudo apt install plocate            - установить
# $ locate readme.txt                   - выведет пути ко всем фаилам readme.txt в системе
# $ locate *.txt                        - выведет пути ко всем фаилам *.txt в системе


# 2. wc - выводит в консоль сколько строк, слов и символов содержит фаил
# $ wc file.txt                         - инфа о фаиле file.txt
# $ wc -l file.txt                      - количество строк в file.txt
# $ wc -w file.txt                      - количество слов в file.txt
# $ wc -c file.txt                      - количество символов в file.txt


# 3. find - команда выполняет поиск файлов и папок по их названию, типу, размеру итд и выводит их названия в консоль. Команда ищет и в указанной дирректории и во всех вложенных в указанную директориях
# $ find [путь где ищем] далее флаги типа поиска и их параметры:
# -type  - 1й флаг после которого мы указываем что ищем, "d" - папку или "f" - фаил  -type [d/f]
# -name  - флаг для поиска по названию папки или фаила, после него в кавычках стандатный аргумент поиска "*.txt"
# -iname - по названию папки или фаила без учета регистра "*.TXT"
# -perm  - по коду доступа, далее нужно указать код (? добавив 0, хз зачем и без него работает) например 0764
# -size  - по размеру фаила, перед числом размера можно указать +(больше чем) или -(меньше чем), а после единицу измерения, например k(килобайт, именно строчная) или M(мегабайт, именно заглавная) -size [+/-][число][k/M]
# -not [-name/-iname/-perm/-size] [значение поиска] - флаг ищет фаилы противоположные критерию поиска флага после него

# $ find . -type f -name "fi*.txt"            - находит все фаилы с расширением "txt" и начинающиеся на "fi" в текущей директории
# $ find ~/Загрузки -type d -iname "*n*"      - находит все папки в директории "~/Загрузки", что содержат букву "n" в названии
# $ find -type f -perm 664                    - находит в текущей директории все фаилы с доступом 664
# $ find -type f -size +1M                    - находит фаилы больше 1 мегабайта
# $ find www -type f -size -10k               - находит в папке www фаилы меньше 10 килобайт
# $ find -type f -not -name "*.txt"           - находит все фаилы с расширением НЕ "txt"
# $ find . -type f -not -perm 0664 -not -iname "*.txt" -size -100k       - поиск по множеству флагов


# 4. sort - команда сортировки данных(? строк разделенных \n) в фаиле. Сортирует фаилы только для вывода в консоль, не меняя сам фаил. По умолчанию сортирует в алфавитном порядке
# $ sort names.txt                                 - сортировка в алфавитном порядке
# $ sort -n nums.txt                               - сортировка в числовом порядке
# $ sort --output=some.txt some.txt                - отсортировать фаил и записать результат в него же


# 5. cut - команда которая может разбивать текст по символу, нумерует каждый результат и выводит заданный номером результат
# -d " "     - флаг для разделителя(только 1 символ), за которым в кавычках указываем символ-разделитель(тут пробел)
# -f 2       - флаг для выбора, за котором указываем номер элемента который хотим вывести(счет с 1)

# $ cut -d "-" -f 3 file.txt                       - разобьем содержимое file.txt по символу "-" и выведем 3й результат



echo "                                  Комманда grep и Регулярные выражения"

# grep - команда для поиска нужного текста внутри файлов или в тексте вывода в консоли, отображает строки, где были найдены совпадения. Искомый текст выведет выделенным красным, при поиске в нескольких фаилах выведет названия фаилов перед найденным в них текстом

# $ grep [доп флаги] [текст для поиска] [путь с именем фаила в котором ищем]
# -n  - флаг выведет номера строк в которых найдено совпадение
# -i  - флаг делает поиск нечувствительным к регистру

# $ grep "ext" some/main.txt            - находит все слова или части слов "ext" в файле some/main.txt
# $ grep ext some/main.txt              - можно задавать значение без кавычек
# $ grep "ext" some/main.txt test.txt   - находит все слова "ext" в файлах some/main.txt и test.txt
# $ grep ark ./*                        - находит текст ark во всех фаилах в текущей директории
# $ grep -n -i main main.cpp            - находит слово "main" в файле main.cpp. Выводит номер строки и не учитывает регистр


# С командой grep можно использовать Регулярные выражения, тк папаметр поиска по умолчанию рассматривается как регулярное выражение, но по умолчанию не все операторы регулярок работают корректно.
# ""           - для корректного определения выражения стоит его писать в кавычках
# -E           - флаг определяющий аргумент регулярным выражением, соотв все операторы будут работать корректно

# $ grep -E "[A-Z]{1,3}[a-z]*bc" ./*          - находит все части текста соотв регулярке во всех фаилах текущей директории



echo "                                  Комбинации команд. | -exec {} +"

# -exec  - флаг говорит о том что после одной команды выполним другую (потом проверить с другими командами)
# {}     - обозначают в какое место подставляется вывод 1й команды (find с именем файла), что позволяет нам дать аргумент для 2й команды (grep - теперь знает в каких фаилах искать)
# +      - grep будет выполнен сразу ко всем файлам, которые найдет find, а не к каждому по очереди. То есть + слепит все найденные файлы в одну строку фактически

# $ find ~ -type f -iname "*.txt" -exec grep -n -i "*ma*" {} +       - поиск файлов и нахождение в них слова


# В каких то программах нет ключа -exec, они просто выплёвывают всё в строку.
# С I/O (потоками ввода/вывода) выполнить цепочку команд проще. Передаем результат, как аргумент с помощью синтаксиса "команда которая выдает что-то в терминал" | "команда, которой в качестве аргументов передаётся результат предыдущей команды"

# $ ls | grep t                             - выведет все имена фаилов в которых есть буква "t"(? нужно именно без кавычек, тк ищем в выводе консоли), тоесть ищет именно в выводе консоли, а не внутри фаилов как обычно
# $ cut -d "-" -f 3 file.txt | sort         - применит сортировку к результату предыдущей команды
# $ cut -d "-" -f 3 file.txt | sort | wc    - применит wc к результату предыдущей команды
# $ grep -E "[A-Z]{1,3}[a-z]*bc" ./* | wc   - с регуляркой



echo "                               Потоки вывода. Перенаправление ввода/вывода"

# > - команда перенаправляет вывод консоли(не фаила) в фаил, перезаписывает его полностью, те предварительно стирает все содержимое, создает новый фаил если он не существует
# $ sort -n nums.txt > res.txt             - запись вывода сортировки в фаил(создастся если не существует)
# $ sort nums.txt > nums.txt               - ! при перезаписи в тот же фаил, будет пустой фаил, тк сначала удаляется инфа
# $ sudo cat /dev/null > some.txt          - быстрый способ обнулить файл(записывает ничто в фаил)
# $ echo "hello" > some.txt                - запись в фаил текста от echo

# >> - команда перенаправляет вывод в другой фаил, добавляет в конец, те дозаписывает, сохраняя все содержимое, создает новый фаил если он не существует.
# $ sort names.txt >> res.txt              - дозапись вывода в фаил
# $ sort names.txt >> names.txt            - при дозаписи в тот же фаил нормально дозапишет


# Когда Линукс выдает какойто вывод на экран то делает это в 2х потоках: то что нормально вывелось(>) и то где есть ошибки или доступ закрыт(2>). Можно их разделить переправив вывод одного из потоков вникуда или какойто фаил
# STDIN - стандартный поток ввода 0   (<)
# STDOUT - стандартный поток вывода 1 (>)
# STDERR - стандартный поток ошибок 2 (2>)
# Это 3 потока , которые открыты в систему по-умолчанию отвальные ты уже создаешь сам. Поток = файловый дескриптор

# $ grep krillan /etc/*                        - при поиске слова krillan в системных директориях, часть строк в выводе будет закрыто "Permission denied" и другими сообщениями об ошибках, это поток "плохого вывода"

# 2> - команда перенаправление потока плохих ответов(ошибок и отсутсвия прав доступа)
# $ grep krillan /etc/* 2> errors.txt          - выведет только поток "хорошего вывода", а ошибки перенаправит в фаил errors.txt
# $ grep krillan /etc/* 2> /dev/null           - выведет только поток "хорошего вывода", а ошибки перенаправит вникуда
# $ grep krillan /etc/* > all.txt              - выведет поток ошибок, сохранит в all.txt только "хороший вывод", а ошибки нет
# $ grep krillan /etc/* > good.txt 2> bad.txt  - ничего не выведет, ошибки перенаправит в bad.txt, а остальное в good.txt

# &> - команда перенаправления обоих потоков
# $ grep krillan /etc/* &> all.txt             - ничего не выведет, перенаправит и плохой и хороший вывод в all.txt

# Команды 2>> &>> работают аналогично

















#
