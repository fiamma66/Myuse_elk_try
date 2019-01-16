# Myuse_elk_try
use example from https://github.com/deviantony/docker-elk


# Usage : 
## Directly use :

**important**

check docker-compose.yml 

```
service:
  elasticsearch: 
    volumes:
      - ./elk/elasticsearch/config/elasticsearch.yml:/usr/share/elasticsearch/config/elasticsearch.yml:ro
      # create elasticsearch storage
      - ./data:/usr/share/elasticsearch/data      
```
make a new storage folder you want

sudo chmod 777 /you_data_path

給予儲存資料夾權限

若沒有做完這步驟

會導致container 無法啟動



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


## 進階使用

```/elk/elasticsearch/config/elasticsearch.yml```


```
gmail_account:
        profile: gmail
        smtp:
            auth: true
            starttls.enable: true
            host: smtp.gmail.com
            port: 587
            user: username@gmail.com
            password: userpassword
            
 ```
 
 輸入自己的Gmail 帳戶
 
 若遇到安全性問題
 
 參考官方文件
 
 https://support.google.com/accounts/answer/6010255?hl=en
 
 
 ### 設置 Watcher 
 
 https://paper.dropbox.com/doc/E.L.K--AVsm2FAs5c4lmVI1U3uDaVUdAg-Dt5imJmuOdkiRTLgsy39I
 
 資料夾下 有Watcher 範例


