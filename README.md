SpringStudy-deploy
===========================

spring study project의 배포 프로젝트 (https://github.com/Minsub/SpringStudy.git)

# dependencies
 - ansible


# script

1. deploy
  - deploy.sh {phase} {group}

2. stop
  - stop.sh {phase} {group}

3. start
  - start.sh {phase} {group}

4. rollback
  - rollback.sh {phase} {group}

5. setup
  - setup.sh {phase}


# nginx 설정

- 무중단 배포를 위한 nginx 설정

```
upstream spring-app {
  server  192.168.0.32:8080;
  server  192.168.0.32:8090;
  keepalive 15000;
}

server {
    listen       80;
    server_name  jiminsub.iptime.org;

    location / {
         proxy_pass   http://spring-app;
    }
}
```

## ssh key 만들기 

```
- ssh-keygen -t rsa
  + ~/.ssh/id_rsa.pub 이 생김
- scp ~/.ssh/id_rsa.pub id@host:id_rsa.pub
- 대상 서버로 접속
- mkdir .ssh
- cat ~/id_rsa.pub >> ~/.ssh/authorized_keys
```
- refs: https://opentutorials.org/module/432/3742)