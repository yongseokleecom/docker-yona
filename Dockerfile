FROM java:openjdk-8-jdk-alpine
MAINTAINER yongseoklee <yongseokleecom@gmail.com>

RUN apk --update add --no-cache wget zip unzip bash && rm -rf /var/cache/apk/*

ENV YONA_HOME /yona
ENV _JAVA_OPTIONS -Xmx2048m -Xms2048m

# yona home directory
# https://github.com/yona-projects/yona#linux-and-osx
VOLUME $YONA_HOME

# Yona download & install
RUN \
    mkdir -p /opt \
    && wget -O /opt/yona.zip https://github.com/yona-projects/yona/releases/download/v1.0.2/yona-v1.0.2-bin.zip \
    && unzip /opt/yona.zip -d /opt \
    && rm /opt/yona.zip \
    && mv /opt/yona-1.0.2 /opt/yona

# Yona default http port
EXPOSE 9000

CMD /opt/yona/bin/yona