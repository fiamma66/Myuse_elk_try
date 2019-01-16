# Myuse_elk_try
use example from https://github.com/deviantony/docker-elk


# Usage : 
## Directly use :
``` docker-compose up -d --build ```

wait kibana to start

打開瀏覽器 : http://localhost:5601
##### In default
username : elastic

password : changeme


click on monitor in kibana UI

click start monitor


then click management   ->  logstash  ->  pipeline

將 pipeline 中範例 輸入

pipeline ID  -> main



```docker-compose logs logstash```

檢查 logstash 是否 listening tcp 5959


