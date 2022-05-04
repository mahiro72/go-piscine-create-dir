# go_piscine-create_dir

go_piscineのディレクトリを作成する

<br>

ディレクトリ作成例
```
ex[XX]
|-- main.go
|-- vendor
      |-- ft
      |    |--printrune.go
      |
      |-- piscine/
```
## 準備

goXXディレクトリを作成し ```cd goXX```で移動する

git cloneする
```
git clone https://github.com/mahiro72/go_piscine-create_dir.git
```

## ディレクトリ作成について

ex[数字]までディレクトリを作成する

```
./go_piscine-create_dir/create-dir.sh [数字]
```

<br>

example
```
./go_piscine-create_dir/create-dir.sh 3
```

ex00 ~ ex03 まで作成される

## ディレクトリ削除について

現在のディレクトリにある ```exXX/```を削除する

現在のコードも削除されるのでご注意ください

```
./go_piscine-create_dir/delete-dir.sh
```
