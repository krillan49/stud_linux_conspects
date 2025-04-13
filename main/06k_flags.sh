echo "                                              Флаги"

# К каждой команде есть дополнительные опции (ключи, флаги). Они добавляют дополнительное действие при выполнении команды.

# $ ls --help            - посмотреть все дополнительные опции(флаги) к команде ls

# Примеры флагов для команды ls
# $ ls -l                - отображение подробной информации относительно файлов, линков(путь) и папок (доступ, владелец, вес)
# $ ls -a                - показывает так же скрытые фаилы и дериктории(имена начинающиеся с . втч . и ..)
# $ ls -r                - выведет в обратном порядке (по умолчанию алфавитный)
# $ ls -p                - выведет в формате name/
# $ ls -p -r             - несколько флагов
# $ ls -la               - несколько флагов альтернативный вариант



echo "                                           Регистр флагов"

# В Linux, как и в большинстве Unix-подобных ОС, командные флаги (опции) чувствительны к регистру.  Это значит, что флаги, записанные заглавными и строчными буквами, воспринимаются как совершенно разные опции и, вероятно, выполняют разные функции.

# Исторически сложилось, что флаги строчными буквами часто обозначают короткие, стандартные опции, а флаги заглавными буквами используются для более длинных, специализированных или редко используемых опций.

# ls -l  -  выводит подробный список файлов и каталогов, показывая права доступа, размер, дату изменения и т.д.
# ls -L  -  использует символьные ссылки как реальные файлы для получения информации о файле, на который они указывают.

# Узнать, что делает конкретная опция можно при помощи команды man, например: `man ls` , `man rm`, `man grep`. Прокрутите или поищите (обычно с помощью `/` и термина) в man page, чтобы найти описание каждой опции.



echo "                                           Дефисы у флагов"

# В Linux флаги (или опции) команд могут быть записаны с дефисом (-) или без него, в зависимости от контекста и самой команды. Но использование дефисов для обозначения флагов является стандартной практикой в Unix-подобных системах, и важно следовать этим соглашениям для правильного выполнения команд.

# 1. Флаги с дефисом - начинаются с одного или двух дефисов, используются для указания опций команд
# • Один дефис (-) обычно используется для коротких опций (один символ). Например, "ls -l" использует "-l" как короткую опцию для отображения списка файлов в длинном формате.
# • Два дефиса (--) используются для длинных опций, которые могут быть более описательными. Например, ls --all показывает все файлы, включая скрытые.

# 2. Флаги без дефиса - обычно не используются в стандартных командах Linux. Если вы видите аргументы без дефиса, это скорее всего просто аргументы или параметры команды, а не флаги.

# 3. Некоторые команды могут иметь свои собственные соглашения о том, как они обрабатывают флаги и аргументы. Всегда полезно обращаться к документации конкретной команды

# атрибуты пишем не через дефис?  -v, -x...  Раньше всё через дефис было, а теперь без. Какая разница? - никакой (? только для архивов или везде ?)
# Дефис нужен там, где команда может принять аргумент, чтобы отличить флаг от аргумента ??