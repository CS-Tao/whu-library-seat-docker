FROM node:8.16.0-slim
LABEL maintainer="CS-Tao <whucstao@qq.com>" version="1.0.0"

ENV TZ=Asia/Shanghai
ENV SEAT_GHAUTH_URL https://github.com/CS-Tao/whu-library-seat-ghauth.git
ENV SEAT_GHAUTH_BRANCH master

COPY download_scripts.sh ./download_scripts.sh

RUN chmod +x ./download_scripts.sh && bash ./download_scripts.sh

WORKDIR /root/ghauth

CMD ["node", "bin/www"]
