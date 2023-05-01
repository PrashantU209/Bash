Count=0

read inputs

for((i=1;i<=$inputs;i++))
do
    read variables
    count=$((count+variables))
done

#format=$(echo "scale=3; $count/$inputs" | bc)
printf "%.3f" $(echo "$count/$inputs" | bc -l)
#echo $format