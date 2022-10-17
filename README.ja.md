# docker-schemaspy
[ [English](https://github.com/pp-develop/docker-schemaspy/blob/main/README.md) | [日本語] ]

## About SchemaSpy
https://schemaspy.readthedocs.io/en/latest/index.html

## Overview
コンテナ実行時、ShemaSpyがデータベースのドキュメントを作成します

## Use
1. 対象のデータベースを設定  
`docker/schemaspy.properties`を編集して対象のデータベースを設定してください  
[ShemaSpy Configuration](https://schemaspy.readthedocs.io/en/latest/started.html#configuration)
2. コンテナ実行
```
$ docker-compose up -d
```
3. ドキュメントを表示  
`/output/index.html`