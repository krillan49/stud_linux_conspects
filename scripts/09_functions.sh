echo "                                          Функции(?процедуры?)"

# Функция создается без ключевых слов просто название()

divide() {   # ?? скобки в принципе не принмают параметры ??
  echo "Params: $0 $1 $2" # Нумерованные параметры в теле функции, передаются при вызыве функции, а не просто скрипта, тк это локальная область видимости функции. Но параметр 0 все равно имя скрипта

  a=5 # новые переменные объявленные в теле функции являются глобальными(те выходят в поле видимости всего скрипта)
  local b=3 # локальная переменная функции определяется через доп слово local

  echo "vars is $a $b"     #=> vars is 5 3

  if [ "$2" -eq 0 ]; then
    echo "ZerroError"
  else
    res=$(($1/$2))
    echo "Res is $res"
  fi

  # Нет ретурна, те ничего не возвращается, значит это не функция а процедура ??
}

echo "vars is $a $b"   #=> vars is 5       # не будет ошибки если переменная не определена

divide 10 2  # вызов функции, после названия параметры через пробел, круглые кобки не нужны
divide 10 0  # еще 1 вызов

# присвоение в переменную результата функции
k=$(divide $a 5)
res=`divide $a 5`

# Далее запускаем в терминале
# $ bash script.sh
#=> Params: script.sh 10 2
#=> Res is 5
#=> Params: script.sh 10 0
#=> ZerroError


some_func "$@"  # так мы передаем все параметры скрипта в функцию под теми же нормерами, которые можем там использовать



# Тру функции
set -e # хз зачем ??

function ensure_integer() {
  local text=$1
  if [[ "$text" =~ ^[+-]?[0-9]+$ ]]; then
    return 0
  fi
  printf 1>&2 '%s is Not an Integer Number\n' "$text"
  return 1
}
function even_or_odd() {
  local num=$1
  ensure_integer "$num"
  local rr=(Even Odd)
  printf '%s' "${rr[(("$num" & 0x1))]}"
}
even_or_odd $1


function removeChar() {
  str=$1
  echo ${str:1:-1}
}
removeChar $1 # вызов функции


# Функция возвращает функцию
function Solution {
  function main {
    echo "Hello World!"
  }
  main
}
Solution

















#
