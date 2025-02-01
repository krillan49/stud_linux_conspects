echo "                                          Права доступа"

# Права доступа к фаилу или папке обозначаются 3мя цифрами (например 765), где:
# 1я цифра - (тут 7) права доступа для user/владельца фаила (того кто его создал) (u)
# 2я цифра - (тут 6) права доступа для group/группы                               (g)
# 3я цифра - (тут 5) права доступа для всех остальных пользователей               (o)

# Значения каждой из 3х цифр в параметрах доступа может быть от 0 до 7 и означет 3-значное двоичное число:
# 000 = 0, 001 = 1, 010 = 2, 011 = 3, 100 = 4, 101 = 5, 110 = 6, 111 = 7.  (8 комбинайций)

# 3 цифры 2ичного числа обозначают "rwx"(r - четверки, w - двойки, x - единицы), это способы взамодействия с фаилом:
# r - (read) возможность прочитать/открыть фаил (для папки это смотреть что внутри)
# w - (write) возможность записать/изменить фаил (? для папки это изменять и удалять фаилы веутри ?)
# x - (exequte) возможность запустить/исполнить фаил (для папки это открыть/войти в папку, для фаилов нужно например для скриптов)
# Каждое из этих свойств может быть включено или отключено
# 1 в соотв положении значит включен режим, 0 - выключен.

# 765 == (111 110 101) == (rwx rw- r-x) Тоесть владелец имеет полный доступ, группа не может исполнять, а остальные записать

# Права доступа и владельца фаилов можно посмотреть в терминале:
# $ ls -l
# =>
# -rw-r--r-- 1 root    root       5 [дата и время] file.txt
# -rw-rw-r-- 1 krillan krillan   10 [дата и время] test.txt
# drwxrwxr-x 2 krillan krillan 4096 [дата и время] test
# drwxr-xr-x 2 root    root    4096 [дата и время] doc
# Где 1й символ(- фаил, d папка, l линк), далее права доступа для всех 3х типов(rw- r-- r--), цифра сколько внутри директорий(считая . и ..), далее владелец(root) и группа(root), далее вес фаила в байтах, дата и его название



echo "                                Смена прав доступа фаила или директории"

# chmod (change modification) - команда, чтобы менять права доступа к фаилу или папке. Можно менять в цифровом или символьном формате. Если у фаила владелец root то нужно выполнять команду от суперпользователя (sudo). Чтобы сменить права доступа папки нужно использовать допонительный флаг "-R"(? у меня меняет и без этого, нужно только для полной папки ?).

# 1. Цифровой формат(меняет вем 3м типам пользователей, так что придется смотреть что было, если хотим изменить что-то одно):
# $ sudo chmod 664 file.txt                  - меняем права доступа на 664 фаилу file.txt
# $ chmod -R 764 doc                         - пользователь или группа могут менять права без прав суперпользователя

# 2. Символьный формат(изменяем только то что указано в опциях остальное остается как было):
# $ sudo chmod u+x file.txt                  - добавляем владельцу(u) возможность исполнять(x)
# $ sudo chmod g-w file.txt                  - убираем у группы(g) возможность изменять(w)
# $ sudo chmod g+w,o-r file.txt              - несколько сразу
# $ sudo chmod ugo=r file.txt                - сразу всем 3м типам устаневливаем только чтение
# $ sudo chmod a=r file.txt                  - тоже что и выше (a - all) (? у меня почемуто не работает ?)
# $ sudo chmod +x myfile*                    - (? +x == a+x потом проверить) это добавит x на все файлы начинающиеся с имени myfile



echo "                                            Стикибит"

# По умолчанию если у пользователя есть доступ 'w' для папки, но для фаила внутри нее нет, то его все равно можно удалить, чтобы этого избежать нужно добавть доступ 't'(стики-бит) вместо 'x' для папки

# 1. Символьный формат:
# $ sudo chmod o+t someFold                  - добавляем для папки someFold остальным(o) вместо 'x' 't', теперь права на папку не позволят стереть фаил в ней, если к нему нет прав
# $ sudo chmod o-t someFold                  - вернется обратно 'x' вместо 't'

# 2. Цифровой формат - добавляем 4ю цифру(идет по порядку 1й) 0 - убрать стикибит, 1 - добавить:
# $ sudo chmod -R 1764 someFold              - добавляем
# $ sudo chmod -R 0764 someFold              - убираем















# 