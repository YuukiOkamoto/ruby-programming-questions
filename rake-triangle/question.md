# 問題

## 三角形出力Rakeタスク作成

以下の要件を満たすrakeタスク`puts_triangle`を作成してください。  
`puts_triangle`は2つの数字の引数を受け取ります。  
これらの引数の値によって出力うされる三角形の大きさが変わります。

出力結果は以下のとおりです。

- 5と1を渡したとき

```shell
*    
**   
***  
**** 
*****
```

- 5と2を渡したとき

```shell
*    
**   
***  
**** 
*****
*    *    
**   **   
***  ***  
**** **** 
**********
```

- 5と3を渡したとき

```shell
*    
**   
***  
**** 
*****
*    *    
**   **   
***  ***  
**** **** 
**********
*    *    *    
**   **   **   
***  ***  ***  
**** **** **** 
***************
```

- 1と5を渡したとき

```shell
*
**
***
****
*****
```

- 2と5を渡したとき

```shell
* 
**
* * 
****
* * * 
******
* * * * 
********
* * * * * 
**********
```

- 3と5を渡したとき

```shell
*  
** 
***
*  *  
** ** 
******
*  *  *  
** ** ** 
*********
*  *  *  *  
** ** ** ** 
************
*  *  *  *  *  
** ** ** ** ** 
***************
```