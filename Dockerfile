FROM java:openjdk-8-jdk-alpine
MAINTAINER yongseoklee <yongseokleecom@gmail.com>

RUN apk --update add --no-cache wget zip unzip bash && rm -rf /var/cache/apk/*

# Java option
ENV JAVA_OPTS "-Xms1024m -Xmx1024m"

# Yona data
VOLUME /yona

# Yona download & install
RUN \
    mkdir -p /opt \
    && wget -O /opt/yona.zip https://github.com/yona-projects/yona/releases/download/v1.0.4/yona-h2-v1.0.4-bin.zip \
    && unzip /opt/yona.zip -d /opt \
    && rm /opt/yona.zip \
    && mv /opt/yona-1.0.4 /opt/yona

# Add entrypoint
ADD entrypoint.sh /opt/yona/bin/entrypoint.sh
RUN chmod +x /opt/yona/bin/entrypoint.sh

# Yona HTTP port
EXPOSE 9000

CMD ["/opt/yona/bin/entrypoint.sh"]