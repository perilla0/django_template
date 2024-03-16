- [1. このプロジェクトについて](#1-このプロジェクトについて)
  - [1.1. Djangoプロジェクト作成＆削除](#11-djangoプロジェクト作成削除)
  - [1.2. コンテナ立ち上げ](#12-コンテナ立ち上げ)
  - [1.3. すべてのコンテナを削除](#13-すべてのコンテナを削除)
- [Qiita記事](#qiita記事)


# 1. このプロジェクトについて

Djangoを自前のDocker Composeで使用するためのテンプレ用プロジェクトです。

※ このプロジェクトでは、あえて`.gitignore`にて`/src`ディレクトリを捕捉しないよう設定しています。（必要に応じて指定を削除してください）

## 1.1. Djangoプロジェクト作成＆削除

Djangoプロジェクト（srcフォルダ）を作成します。

```sh
cd script/init/
./create_src.sh
```

Djangoプロジェクト（srcフォルダ）を削除したい場合にのみ実行します。

```sh
cd script/init/
./remove_src.sh
```

## 1.2. コンテナ立ち上げ

コンテナビルド

```sh
cd script
./build.sh
```

コンテナ立ち上げ

```sh
docker compose up --build
docker compose up
```

## 1.3. すべてのコンテナを削除

```sh
cd script
./down_clear.sh
```

# Qiita記事

[Python] Django+Gunicorn+NginxのDockerCompose環境
https://qiita.com/perilla/items/1fd83b692f2cb0f59575