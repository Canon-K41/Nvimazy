# ベースイメージとしてUbuntuを使用
FROM ubuntu:latest

# 環境変数を設定
ENV DEBIAN_FRONTEND=noninteractive

# 必要なパッケージをインストール
RUN apt update && apt install -y \
    curl \
    wget \
    git \
    python3 \
    python3-pip \
    python3-venv \
    nodejs \
    npm \
    build-essential \    
    gcc \               
    g++ \              
    libstdc++-11-dev \ 
    && rm -rf /var/lib/apt/lists/*

# 最新のNeovimをダウンロードしてインストール
RUN mkdir -p /tmp/nvim \
    && cd /tmp/nvim \
    && curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz \
    && tar xzf nvim-linux64.tar.gz \
    && cp -r nvim-linux64/* /usr \
    && rm -rf /tmp/nvim

# デフォルトのNeovim設定ファイルを用意
RUN mkdir -p /root/.config/nvim
COPY init.lua /root/.config/nvim/
COPY lua/ /root/.config/nvim/lua/
# PythonとNode.jsでのNeovimサポートを有効化
# RUN pip3 install pynvim \
#     && npm install -g neovim
RUN git clone https://github.com/neovim/nvim-lspconfig ~/.config/nvim/pack/nvim/start/nvim-lspconfig
# コンテナ内のデフォルトコマンドを設定
CMD ["nvim"]
