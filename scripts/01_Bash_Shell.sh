echo "                                               Bash Shell"

# Bash (Bourne Again SHell) — это интерпретатор команд и язык программирования, который используется в операционных системах на основе Unix (Linux, macOS итд). Оболочка Bash запускается внутри терминала (или консоли)

# Bash позволяет выполнять команды в командной строке, а также писать скрипты, содержащие и команды и синтаксис языка. Язык сценариев Bash поддерживает переменные, условия, циклы, функции и другие конструкции. Интерпретирует и передает команды ядру ОС для выполнения. Возвращает результат выполнения команды пользователю.

# Bash является в основном процедурным языком. Bash не является функциональным языком программирования и не поддерживает ООП, но в нем есть некоторые элементы, которые могут имитировать ООП, например, использование массивов и ассоциативных массивов.

# $ bash --version                 - посмотреть версию GNU Bash



echo "                                           Bash Shell скрипты"

# Bash скрипт – файл с расширением .sh (Название любое), что содержит список команд для выполнения в терминале ОС Линукс. При помощи Bash скрипта можно выполнять управление операционной системой.

# В скриптах можно описывать любые команды, терминала. При запуске файла все команды будут выполнены друг за другом в терминале.


# $ ./script.sh                    - выполнить скрипт только если есть права 'x' на этот фаил(можно поставить например a+x)
# $ bash script.sh                 - выполнить скрипт даже без прав 'x' на этот фаил



echo "                                           Базовый синтаксис"

# 1. В фаиле баш-скрипта в самом верху нужно обязательно(? почемуто работает и без) прописать закомментированную строку, чтобы система поняла что это именно баш-скрипт:
#!/bin/bash
#!/bin/bash -e               # вариант с кодварс

# 2. Далее можем писать любые команды, каждую с новой строки и они будут выпонены по порядку, когда будет запущен скрипт. Например:
ls
mkdir folder
echo "folder done"      # в скрипте аргумент echo ??обязательно в 2йных кавычках??
touch folder/index.html
tree
xterm &                 # & - чтобы не ждать выполнения этой команды(тут запуск терминала) и выполнять скрипт дальше
echo "All done"

exit 0                  # остановить скрипт, например в зависимости от условия

# 3. Далее сохраняем фаил скрипта, заходим в терминал и запускаем его
# $ bash script.sh                 - выполнить баш скрипт




echo "                                       Запуск кода других языков"

# Можно внутри баш скрипта исполнять код других языков если они установлены и использовать его результат в скрипте далее


# Запустить скрипт на Руби, если он установлен
script="
print ['z', *'a'..'z']['$1'.chars.sum { |x| x.ord - 96 } % 26]
"
echo $script | ruby













#
