# docker-schemaspy
[ [English]() | [日本語] ]

## About schemaspy
https://schemaspy.readthedocs.io/en/latest/index.html

## Overview
コンテナ実行時、ShemaSpyがデータベースのドキュメントをHTMLで出力します

## Use
1. 出力対象のデータベース接続情報を設定  
`docker/schemaspy.properties`を編集して対象のデータベースを設定してください  
[ShemaSpy Configuration](https://schemaspy.readthedocs.io/en/latest/started.html#configuration)
2. コンテナ実行
```
$ docker-compose up -d
```
3. ドキュメントを表示  
`/output/index.html`