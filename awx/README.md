ansible-awx 
-----------

##requirement
1. docker
2. ansible


## step
1. import awx settings
```
git clone https://github.com/ansible/awx.git
cd awx/installer
```

2. modify inventory
```
dockerhub_version=latest
use_docker_compose=true
docker_compose_dir=(docker-compose.yml 파일이만들어질 경로)
postgres_data_dir:=(shared된 경로)

```

3. install awx
```
ansible-playbook -i inventory install.yml
```

4. awx_task에 java를 설치하기 위해 image를 커스터마이징해서 사용
```
cd SpringStudy-deploy/awx/awxTask
docker build -t jiminsub/awx_task_java
docker push jiminsub/awx_task_java
```
- docker-compose.yml에 awx-task이미지를 변경 & java_home 설정
- SpringStudy-deploy/awx/awxTask/docker-compose.yml 참조

5. running
- docker 컨테이너가 띄어져있다면 다 stop할 것
```
docker-compose up -d
```

## refs
- https://github.com/ansible/awx
- https://findstar.pe.kr/2018/04/04/ansible-awx-installation/