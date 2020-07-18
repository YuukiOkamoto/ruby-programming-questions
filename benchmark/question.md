## ベンチマークして実行速度を比較する

配列の要素の文字列を連結する処理を比較する。

まず始めに検証用で、A~Zのうちランダムな6文字の文字列を10,000個もつ配列を用意してください。
```rb
array = ['SODPNR', 'EQGWON', ... , 'PZAGYL']
```

今回比較していただく連結方法は以下の5つです。

`Array#each`を使って`+`で連結
```rb
str = ''
array.each{|x| str += x}
```

`Array#each`を使って`<<`で連結
```rb
str = ''
array.each{|x| str << x}
```

`Enumerable#inject`を使って`+`で連結
```rb
str = array.inject(:+)
```

`Enumerable#inject`を使って`<<`で連結
```rb
str = array.inject(:<<)
```

`Array#join`を使って連結
```rb
str = array.join
```

5つの連結方法の実行速度をベンチマークし以下のように出力して、パフォーマンスの良い順に答えてください。

```
              user     system      total        real
each+     0.095442   0.101579   0.197021 (  0.197473)
each<<    0.001181   0.000019   0.001200 (  0.001200)
inject+   0.085109   0.087870   0.172979 (  0.173328)
inject<<  0.000990   0.000018   0.001008 (  0.001008)
join      0.000430   0.000033   0.000463 (  0.000463)
```

