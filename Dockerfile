# ベースイメージ
FROM ubuntu:20.04

# 必要なパッケージのインストール
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

# アプリケーションのコピー
COPY . /app

# 作業ディレクトリの設定
WORKDIR /app

# コマンドの実行
CMD ["echo", "Hello, World!"]
