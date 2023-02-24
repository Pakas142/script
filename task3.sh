num=1
while [ $num -le 100 ]
do
  if [ $((num % 2)) -eq 0 ]
  then
    echo $num
  fi
  num=$((num + 1))
done

