# docker-schemaspy
[ [English](https://github.com/pp-develop/docker-schemaspy/blob/main/README.md) | [日本語] ]

## About SchemaSpy
https://schemaspy.readthedocs.io/en/latest/index.html

## Overview
コンテナ実行時、ShemaSpyがデータベースのドキュメントを作成します

## Usage
1. 対象のデータベースを設定  
`docker/schemaspy.properties`を編集して対象のデータベースを設定してください  
[ShemaSpy Configuration](https://schemaspy.readthedocs.io/en/latest/started.html#configuration)<br><br>
    <details>
    <summary>別コンテナのDBを参照する場合</summary>

    docker-compose.ymlのネットワークを適宜設定してください
      ```
      example
      services:
        schemaspy:
          container_name: schemaspy
          image: schemaspy/schemaspy:snapshot
          volumes:
            - ./docker/schemaspy.properties:/schemaspy.properties
            - ./output:/output
          depends_on:
            - mysql
          tty: true
          environment:
            SCHEMASPY_OUTPUT: /output
          networks:
            - another_network

      networks:
        another_network:
          external: true
      ```
    </details>
2. コンテナ実行
```
$ docker-compose up -d
```
3. ドキュメントを表示  
`/output/index.html`
