#!/bin/sh
cat <<-EOF > /root/cloudreve/conf.ini
[System]
Mode = master
Listen = :5212
SessionSecret = fAsfW2OoKeY3QiDU1v6zEZToTpQzOBnThALRgzdpYgnBVYnhqX4VMzbUfyFiM8YX
HashIDSalt = BwShqUCNcHc6LkKr4t1D4aLhmvNaQz3IwRA2gj9nMPHQG9qSek1XEpAX8nq8z4Q7

; 数据库相关，如果你只想使用内置的 SQLite数据库，这一部分直接删去即可
[Database]
; 数据库类型，目前支持 sqlite/mysql/mssql/postgres
Type = mysql
; MySQL 端口
Port = 3306
; 用户名
User = sql5464361
; 密码
Password = Yyd2d8Jzp8
; 数据库地址
Host = sql5.freemysqlhosting.net
; 数据库名称
Name = sql5464361
; 数据表前缀
TablePrefix = 
; 字符集
Charset = utf8
EOF
(redis-server &) && (./cloudreve -c ./conf.ini)
