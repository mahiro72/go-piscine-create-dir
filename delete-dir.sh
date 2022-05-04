#!/bin/sh

echo ""
echo "exXX ディレクトリをすべて削除します"
echo ""
echo "現在のコードも削除されます"
echo ""
echo "本当によろしいですか？ [Y/n]: "
echo ""

read -r ANS

case $ANS in
  "" | [Yy]* )
    echo ""
    echo "削除を開始します..."
    echo ""
    rm -rf ex*
    echo "削除が完了しました！"
	echo ""
    ;;
  * )
    # ここに「No」の時の処理を書く
    echo ""
    echo "削除を実行しません..."
    echo ""
    exit 0
    ;;
esac
