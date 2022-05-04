#!/bin/sh

# 引数の数の確認
if [ $# -ne 1 ]; then
    echo ""
    echo "指定された引数は$#個です"
    echo "実行するには1個の引数が必要です"
    echo ""
    exit 1
fi

# 数字かどうか確認
if expr "$1" : "[0-9]*$"; then
    echo ""
else
    echo ""
    echo "数字を入力してください"
    echo ""
    exit 1
fi

# 数字の値の確認
if [ 0 -gt "$1" ] || [ "$1" -gt 20 ]; then
    echo ""
    echo "指定された数字が不正です"
    echo "0以上20以下の数字を指定してください"
    echo ""
    exit 1

fi

echo ""
echo "ex00 ~ ex0$1 を作成します..."
echo ""

i=0
while [ $i -le "$1" ]; do
    mkdir "ex0$i" && mkdir "ex0$i/vendor" && mkdir "ex0$i/vendor/piscine" && \
    mkdir "ex0$i/vendor/ft" && touch "ex0$i/main.go" && cp "./go_piscine-create_dir/src/printrune.go" "ex0$i/vendor/ft/printrune.go"
    i=$(( i + 1 ))
done

echo ""
echo "作成が完了しました!"
echo ""

exit 0
