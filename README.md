# Docker Yona (H2)

**Yona H2 (Embedded H2 DB)** 를 사용하는 도커 이미지. 

MariaDB 와 H2 고민된다면 [여기](https://github.com/yona-projects/yona#yona-배포판)를 참고하세요.

## Yona?
21세기 협업 개발 플랫폼

Yona는 팀이 업무와 개발을 진행하는데 그 속도와 효율을 증가시키기 위해 만들어졌습니다.

자세한 내용은 [공식 사이트](https://github.com/yona-projects/yona) 와 [Wiki](https://github.com/yona-projects/yona/wiki)를 참고하세요.

#### How to use this image

### Simple Start

```
$ docker run -d -p 9000:9000 yongseoklee/docker-yona
```

### With link volumes

```
$ docker run -d -p 9000:9000 \
-v /my/own/datadir:/yona \
yongseoklee/docker-yona
```

### With Java options

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

