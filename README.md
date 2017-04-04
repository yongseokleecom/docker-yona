# Docker Yona (H2)

**Yona H2 (Embedded H2 DB)** 를 사용하는 도커 이미지. 

MariaDB 와 H2 고민된다면 [여기](https://github.com/yona-projects/yona#yona-배포판)를 참고하세요.

## Yona?
21세기 협업 개발 플랫폼

Yona는 팀이 업무와 개발을 진행하는데 그 속도와 효율을 증가시키기 위해 만들어졌습니다.

자세한 내용은 [공식 사이트](https://github.com/yona-projects/yona) 와 [Wiki](https://github.com/yona-projects/yona/wiki)를 참고하세요.

#### How to use
이 컨테이너는 `EXPOSE 9000` 과  `VOLUME /yona` 를 사용하고 있습니다.

컨테이너 실행 후 `http://{HOST_IP}:9000` Yona 의 첫페이지를 만날 수 있습니다.

### Quick start
바로 시작하려면 아래 명령어로 시작하세요.

하지만 지속적인 운영을 한다면 데이터 Volume 을 별도로 관리하세요.

```
$ docker run -d -p 9000:9000 yongseoklee/docker-yona
```

### With link volumes
HOST 디렉터리와 마운트하여 Yona 의 데이터를 관리합니다.

업그레이드 및 백업이 쉬워 가장 추천하는 방식이에요.

```
$ docker run -d -p 9000:9000 \
-v /my/own/datadir:/yona \
yongseoklee/docker-yona
```

### With Java options
자바 옵션이 필요한경우 `JAVA_OPTS` 환경변수를 이용하여 사용합니다.

```
$ docker run -d -p 9000:9000 \
-v /my/own/datadir:/yona \
-e 'JAVA_OPTS=-Xms2048m -Xmx2048m' \
yongseoklee/docker-yona
```

## Migration

* 1.2.x to 1.3.x: [Yona 1.3으로 업그레이드 하기](https://github.com/yona-projects/yona/wiki/Yona-1.3으로-업그레이드-하기) 에서 업그레이드 방법 3~4번 적용

## License

* yona: Copyright Yona Authors and NAVER Corp. under the Apache License, Version 2.0
* docker-yona: Copyright YONGSEOK LEE, MIT License

