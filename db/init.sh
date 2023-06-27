#!/bin/sh

server="localhost"
database="db"
user="root"
pass="mysql"

sql="ALTER USER 'user'@'%' IDENTIFIED WITH mysql_native_password BY 'password';"

result=`mysql -h $server -D $database -u $user -p"$pass" -N -e "${sql}"`
echo "$result"