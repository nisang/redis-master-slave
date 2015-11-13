# redis-master-slave

Redis Sentinel Docker集群方案


1.build<br/>
	build master镜像
	  	docker build -t redis:master .<br/>
	build slave镜像
	  	docker build -t redis:slave .<br/>
	  
2.run<br/>
	
	$:master:docker run -d --name masterredis -p 6379:6379  redis:master /run.sh <br/><br/><br/><br/>
	  
	$:slave:docker run -d --name redisslave1 --link masterredis:masterredis redis:slave /run.sh <br/>

	  
3.连接：<br/>

	 $:redis-cli -h ${masterip} -p 6379<br/>
	 $:auth dandan<br/>
	 $:info Replication<br/>
