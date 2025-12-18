# FastAPI Serverless Docker Template

![Python](https://img.shields.io/badge/Python-3.9+-blue?logo=python&logoColor=white)
![FastAPI](https://img.shields.io/badge/FastAPI-0.95+-009688?logo=fastapi&logoColor=white)
![Node.js](https://img.shields.io/badge/Node.js-18+-339933?logo=node.js&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-Lambda-orange?logo=amazon-aws&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-Enabled-2496ED?logo=docker&logoColor=white)

Windows環境でも環境汚染を気にせず、Dockerを使って **FastAPI** アプリケーションを **AWS Lambda (Serverless Framework)** にデプロイするためのスターターテンプレートです。

## 📖 解説記事 (Tutorial)
このリポジトリの詳しい解説や環境構築の手順は、以下のNote記事で公開しています。
開発の背景やトラブルシューティングはこちらをご覧ください。

👉 **[FastAPIをServerless FrameworkでAWS Lambdaにデプロイする完全ガイド【Mangum採用】](https://note.com/meru_tech/n/ne6374e6579a2)**

## ✨ 特徴 (Features)
* **環境汚染ゼロ:** ローカル環境（Windows）にPythonやNode.jsを直接インストールせず、Dockerコンテナ内ですべて完結します。
* **FastAPI:** PythonのモダンなWebフレームワークを使用。
* **Serverless Framework:** AWS Lambda + API Gatewayへのデプロイを自動化。
* **Mangum:** ASGIアプリケーションをLambdaで動作させるためのアダプター設定済み。

## おすすめディレクトリ構成
```txt
.
├── app/
│   ├── main.py          # FastAPIのエントリーポイント
│   └── requirements.txt # Python依存ライブラリ
├── docker-compose.yml   # コンテナ構成
├── Dockerfile           # Lambda互換のPython環境
├── serverless.yml       # AWSデプロイ設定
└── README.md
```

## 🚀 使い方 (Usage)

### 1. 前提条件
* Docker Desktop がインストールされ、起動していること。
* AWSアカウントを持っていること。

### 2. 環境構築 & 起動
リポジトリをクローンし、Dockerコンテナを立ち上げます。

```bash
# リポジトリのクローン
# ターミナルを開いてクローンしたいディレクトリに移動
git clone https://github.com/meru-Tech-writer/fastapi-serverless-docker-template
cd fastapi-serverless-docker-template

# .env作成など必要な手順を追ってください

# コンテナのビルドと起動
docker compose up -d --build
```

ここからは、以下のnote記事のstep2-3以降をご覧ください。必要なファイルはすべて揃っていますので、ご安心ください。
[https://note.com/meru_tech/n/ne6374e6579a2#f15b04d3-bca4-41d6-93ad-59c7ed9b5d47](https://note.com/meru_tech/n/ne6374e6579a2#6f227804-52d2-48fd-8ea1-002a698e0cbe)

## Author
める@技術を書く人
- [ポータル](https://note.com/meru_tech/portal)
  - [note](https://note.com/meru_tech)
  - [X(旧Twitter)](https://x.com/meru_notetec)
  - [LINE](https://line.me/R/ti/p/@555dpnap?oat_content=url&ts=12090704)

