echo "                                               Массивы"

arr=("" "kiwi" "pear" "kiwi" "banana" "melon")
echo ${arr[@]}  #=> "" "kiwi" "pear" "kiwi" "banana" "melon"
echo ${arr[1]}  #=> "kiwi"
echo ${arr[2]}  #=> "pear"
echo ${arr[4]}  #=> "banana"

# Переопределение элементов по индексу
arr[0]="AAA"
echo ${arr[@]} #=> "AAA" "kiwi" "pear" "kiwi" "banana" "melon"

# Длинна массива
echo $(( ${#arr[@]} ))      #=> 6
echo $(( ${#arr[@]} -1 ))   #=> 5       # индекс последнего элемента

# Новый пустой массив
res=()

# массив с результатами операций над переменными
arr=($((a+b+c)) $((a-b-c)))

# Обход массива через цикл
categories=("men" "women" "kids")
for word in "${categories[@]}"; do
  echo $word;
done

# Создание реверсированного массива
arr=("kiwi" "pear" "kiwi" "banana" "melon")
res=()
size=$(( ${#arr[@]} ))
for (( i=0; i<=$size; i++ )); do
  res[$i]="${arr[$((size-i))]}"
done
echo ${res[@]} #=> melon banana kiwi pear kiwi

# Сортировка массива(передаем цикл в sort)
a=("b" "z" "a")
b=($(for s in ${a[@]}; do echo $s; done | sort))
echo "${b[@]}" #=> a b z














#
