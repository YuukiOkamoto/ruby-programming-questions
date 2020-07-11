## APIからデータを取得して月ごとの平均体重を算出する

[jsonファイルからデータを読み込んで月ごとの平均体重を算出する](../weight-json/question.md)では、 ローカルにあるjsonファイルからデータを読み込んでいました。
 
今回はAPIでデータを提供しているので、HTTPでアクセスしてデータを取得しましょう。  
以下のURLが、とある人物の2019年7月~2020年6月の日々の体重記録を取得できるAPIのエンドポイントです。  
https://script.google.com/macros/s/AKfycbwLfKjBlb6-CrVNMIsryb1O02VZPfWb2SqU1sqU6A6h8qjhX-A/exec

APIを叩いて体重データを取得し、前回同様月ごとの平均体重を算出し以下の形式で出力してください。  
また、小数第二位を四捨五入してください。

```json
{
  "average_weight": [
    {
      "value": 86.1,
      "measure_on": "2019/7"
    },
    {
      "value": 86.8,
      "measure_on": "2019/8"
    },
    {
      "value": 84.2,
      "measure_on": "2019/9"
    },
    中略...
    {
      "value": 78.9,
      "measure_on": "2020/6"
    }
  ]
}
```
