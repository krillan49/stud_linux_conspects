echo "                                       Строковые операции"

# Строки в shell - это по умолчанию любые введенные символы.

str="123abc"
# length/длинна строки данных ${#parameter}
echo ${#str} #=> 6

# Срез вида ${parameter:offset} или ${parameter:offset:length}, где offset - индекс начала среза, length - число символов в срезе
echo ${str:1}    #=> "23abc"
echo ${str:2:2}  #=> "3a"
echo ${str:0:1}  #=> "1"    # тоесть элемент с индексом 0
echo ${str:1:-1} #=> "23ab" # при отрицательном length убирается число элементов с конца строки

# Можно использовать например в цикле
for (( i = 0; i < ${#str}; ++i)); do
  echo "${str:$i:1}"
done

# swapcase В оболочке bashдля этого есть специальный оператор:
in=AbCdE
out=${in~~} #=> aBcDe

# реверсировать строку
echo "$1" | rev
FOO=$(echo $str | rev);


# Получить 1й символ строки
first_letter=$(printf %.1s "abc")
echo "$first_letter" #=> 'a'

# Удалить 1й и последний символ строки при помощи команды sed и регулярок
echo '1234567' | sed -e 's/^.//' -e 's/.$//'    #=> '23456'

# Удаляем все пробелы с флагами "g" и "i"
echo "$1" | sed -e 's/ //gi'
echo "$1" | tr -d " " # тоже самое
echo ${1// /}      # тоже самое
echo "${1//[aeiouAEIOU]/}" # удаляем все гласные

# Подстанока переменной в регулярку (удаляем все буквы кроме указанных)
str="fuck"
abc="abcdefghijklmnopqrstuvwxyz"
echo "${abc//[^$str]/}" #=> cfku

# Соответсвие. Както криво работает в условном операторе
"$text" =~ '^[+-]?[0-9]+$'


# Получить ascii код символа
char="a"
ascii_value=$(printf "%d" "'$char")
echo $ascii_value #=> 97


# Рассплитить строку в массив по символу:
str="bla@some.com;john@home.com"
arr=(${str//;/ }) # заменяет все вхождения ';'(первоначальное //слово означает глобальную замену) в строке IN на ' ', , а затем интерпретирует строку, разделенную пробелами, как массив (это то, что делают окружающие круглые скобки).
echo ${arr[@]}   #=> bla@some.com john@home.com
echo ${arr[1]}   #=> john@home.com


# Реверсировать строку
echo "$str" | rev    #=> cba

# Сложение строк через интерполяцию
foo="Hello"
foo="${foo} World"
echo "${foo}" #=> Hello World
# Bash также поддерживает +=оператор, как показано в этом коде:
A="X Y"
A+=" Z"
echo "$A" #=> "X Y Z"

# tr - команда
echo "BAAACCC" | tr 'ABC' '123' #=> 2111333

# to lower case
echo $1 | tr [A-Z] [a-z]
echo $1 | tr 'a-z' 'A-Z'
echo "AbC" | tr '[:upper:]' '[:lower:]'  #=> 'abc'
echo "AbC" | awk '{print tolower($0)}'  #=> 'abc'

# мультипликация строк
repeatChar() {
  local input="$1"
  local count="$2"
  printf -v myString '%*s' "$count"
  printf '%s\n' "${myString// /$input}"
}
repeatChar abc 3 #=> abcabcabc


# Сортировка строки:
# вставим в строку пробелы между каждым символом
str=''
for (( i = 0; i < ${#1}; ++i)); do
  str="$str ${1:$i:1}"
done
# Рассплитить строку в массив по пробелам
a=(${str// / })
# Сортировка массива(передаем цикл в sort)
b=($(for s in ${a[@]}; do echo $s; done | sort))
# Удалим пробелы между символами


# ПОСЧИТАТЬ ЧИСЛО УНИКАЛЬНЫХ СИМВОЛОВ ЧТО ПОВТОРЯЮТСЯ В СТРОКЕ
# вставим в строку пробелы между каждым символом
str=''
for (( i = 0; i < ${#1}; ++i)); do
  str="$str ${1:$i:1}"
done
# Рассплитить строку в массив по пробелам
a=(${str// / })
# Сортировка массива(передаем цикл в sort)
b=($(for s in ${a[@]}; do echo $s; done | sort))
# Преобразуем массив в строку добавив пробелы только между разными символами
str=''
last=''
for el in "${b[@]}"; do
  if [ "$el" == "$last" ]; then
    str+="$el"
  else
    str+=" $el"
  fi
  last="$el"
done
# Разобьем строку в массив и сосчитаем число элементов длинной больше 1
a=(${str// / })
count=0
for el in "${a[@]}"; do
  if [ "${#el}" -gt 1 ]; then
    let count+=1
  fi
done
echo $count








#
