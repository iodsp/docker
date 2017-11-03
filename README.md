# docker

该仓库用来存放 iodsp 所有环境的 Docker 打包文件


### 打包镜像

例如 fastdfs 

#### 构建

``` shell

cd fastdfs
docker build -t iodsp/fastdfs .

```

#### 打标签

```
docker tag <existing-image> <hub-user>/<repo-name>[:<tag>]
这里的tag不指定就是latest。 
```

#### push镜像


``` shell
root@master:~# docker  login
Username: lidnyun
Password:
Email: 邮箱地址
WARNING: login credentials saved in /root/.docker/config.json
Login Succeeded
```

```
docker push <hub-user>/<repo-name>:<tag>
```
