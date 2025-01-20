#!/bin/bash

# エラーが発生した場合にスクリプトを停止
set -e

echo "Neovim環境のセットアップを開始します..."

# 必要なディレクトリの作成
echo "フォントディレクトリを作成中..."
mkdir -p ~/.local/share/fonts

# Node.jsのインストール
echo "Node.jsをインストール中..."
if ! command -v node &> /dev/null; then
    sudo apt update
    sudo apt install -y nodejs npm
else
    echo "Node.jsは既にインストールされています"
fi

# Nerd Fontのダウンロードとインストール
echo "Hack Nerd Fontをダウンロード中..."
FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Hack.zip"
TEMP_DIR=$(mktemp -d)

wget -P "$TEMP_DIR" "$FONT_URL"

echo "フォントを解凍してインストール中..."
unzip "$TEMP_DIR/Hack.zip" -d ~/.local/share/fonts

# フォントキャッシュの更新
echo "フォントキャッシュを更新中..."
fc-cache -fv

# 一時ディレクトリの削除
rm -rf "$TEMP_DIR"

echo "インストールが完了しました！"
echo "Neovimの設定ファイルでフォントを設定してください"
