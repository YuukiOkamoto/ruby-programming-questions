## jsonファイルからデータを読み込んで月ごとの平均体重を算出する

とある人物の2019年7月~2020年6月の日々の体重を記録したjsonファイルがあります。  
[weight-json/data.json](data.json)

このファイルを読み込み、  
月ごとの平均体重を算出し以下の形式で出力してください。  
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