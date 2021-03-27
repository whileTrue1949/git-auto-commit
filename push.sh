function rand(){
    min=$1
    max=$(($2-$min+1))
    num=$(($RANDOM+1000000000)) #增加一个10位的数再求余
    echo $(($num%$max+$min))
}
rnd=$(rand 2 10)
for i in $(seq 1 rnd)
do
    git pull && /usr/local/bin/node add.js && git commit -a -m 'git auto commit' && git push origin master
done


