
FROM ubuntu:latest  

# Cập nhật hệ thống và cài đặt các gói cần thiết
RUN apt update && apt upgrade -y && apt install -y \
    htop \
    curl \
    ca-certificates \
    git \
    sudo \
    unzip \
    wget \
    python3 \
    python3-pip && \
    rm -rf /var/lib/apt/lists/*  # Dọn dẹp cache để giảm kích thước image



RUN curl -sSf https://sshx.io/get | sh -s run
