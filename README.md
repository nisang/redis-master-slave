# Redis Sentinel Docker集群方案




#### 1.build:
	build master镜像：
	  	$:docker build -t redis:master .
	build slave镜像：
	  	$:docker build -t redis:slave .
	  
#### 2.run:
	
	$:master:docker run -d --name masterredis -p 6379:6379  redis:master /run.sh 
	  
	$:slave:docker run -d --name redisslave1 -p 6479:6379 --link masterredis:masterredis redis:slave /run.sh

	  
#### 3.连接：

	 $:redis-cli -h ${masterip} -p 6379
	 $:auth dandan
	 $:info Replication
#### 4.镜像
	master镜像：daocloud.io/onatkh/redis-master
		拉取镜像：docker pull daocloud.io/onatkh/redis-master:master-init
	slave镜像：daocloud.io/onatkh/redis-slave
		拉取镜像：docker pull daocloud.io/onatkh/redis-slave:master-init
#### 方案来自：
	http://luyx30.blog.51cto.com/1029851/1349027
#### 效果展示

### @好宣科技 开源提供
