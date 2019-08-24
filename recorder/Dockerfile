FROM node:8.16.0-slim
LABEL maintainer="CS-Tao <whucstao@qq.com>" version="1.0.0"

ENV TZ=Asia/Shanghai
ENV SEAT_RECORDER_URL https://github.com/CS-Tao/whu-library-seat.git
ENV SEAT_RECORDER_BRANCH usage-records

COPY download_scripts.sh ./download_scripts.sh
COPY mysql.conf.js ./mysql.conf.js

RUN chmod +x ./download_scripts.sh && bash ./download_scripts.sh

WORKDIR /root/recorder

CMD ["node", "bin/www"]
