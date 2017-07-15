# ios-WireMoc-demo
WireMocを利用したサンプル

## 準備

### 1.[wiremock-standalone-2.6.0.jar](http://repo1.maven.org/maven2/com/github/tomakehurst/wiremock-standalone/2.6.0/wiremock-standalone-2.6.0.jar)をダウンロードする

### 2. 下記を実行する

```
java -jar wiremock-standalone-2.6.0.jar --port 1234
```

### 3. 下記のディレクトリが出来ていることを確認
・mappings<br>
・__files

### 4. JSONファイルの作成
下記のファイルに返却したいJSONを定義する <br <br

wiremoc-demo/WireMock/mappings <br>
wiremoc-demo/WireMock/__files

## サーバーの起動方法
JSONファイルを変更するたびに、再起動すること

```:terminal
java -jar wiremock-standalone-2.6.0.jar --port 1234
```

## 参考サイト
https://marcosantadev.com/run-swift-ui-tests-mock-api-server/
