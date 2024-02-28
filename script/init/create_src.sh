#!/bin/bash
cd `dirname $0`
cd ../../

source .env

mkdir src

# Djangoプロジェクトの作成は現在のユーザーで行う
# https://docs.djangoproject.com/ja/5.0/topics/install/#installing-official-release
docker compose run -u $(id -u):$(id -g) --rm app bash -c "
django-admin startproject config .
"
