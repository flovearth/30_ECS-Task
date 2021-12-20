# What did I do?
1. pulled the repo to local than pushed it to my github-repo
2. created an EC2 on AWS to work on it and to test
3. Run db_test.py
Error: No module named 'mysql'  import mysql.connector 

4. sudo apt-get -y install python3-pip
5. pip install mysql-connector --allow-external
pip install mysql-connector-python
sudo apt-get install python3-mysql.connector

Error: mysql.connector.errors.InterfaceError: 2003: Can't connect to MySQL server on 'mysql_container:3306' (-3 Temporary failure in name resolution)

ERROR 2002 (HY000): Can't connect to local MySQL server through socket '/var/run/mysqld/mysqld.sock' (2)


sudo apt install -y python-pytest
