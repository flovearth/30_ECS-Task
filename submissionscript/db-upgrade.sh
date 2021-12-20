# ./db-upgrade.sh /home/ubuntu/30_ECS-Task/dbscripts/ dev mysql_container devopstt 123456

#!/usr/bin/python 
# -*- coding: utf-8 -*- 
 
# Download it at http://sourceforge.net/projects/mysql-python/?source=dlp 
# Tutorials: http://mysql-python.sourceforge.net/MySQLdb.html 
#            http://zetcode.com/db/mysqlpython/ 
import MySQLdb as mdb  
 
import datetime, time 
 
def run_sql_file(filename, connection): 
    ''' 
    The function takes a filename and a connection as input 
    and will run the SQL query on the given connection   
    ''' 
    start = time.time() 
     
    file = open(filename, 'r') 
    sql = s = " ".join(file.readlines()) 
    print "Start executing: " + filename + " at " + str(datetime.datetime.now().strftime("%Y-%m-%d %H:%M")) + "\n" + sql  
    cursor = connection.cursor() 
    cursor.execute(sql)     
    connection.commit() 
     
    end = time.time() 
    print "Time elapsed to run the query:" 
    print str((end - start)*1000) + ' ms' 
     
     
 
def main():     
    connection = mdb.connect('127.0.0.1', 'root', 'password', 'database_name') 
    run_sql_file("my_query_file.sql", connection)     
    connection.close() 
     
if __name__ == "__main__": 
    main() 



#!/bin/sh

#
# loop over the result of 'ls -1 *.sql'
#     'ls -1' sorts the file names based on the current locale 
#     and presents them in a single column
for i in `/bin/ls -1 *.sql`; do 
    sqlcmd -S localhost -U SA -p myPassword -i $i
done



mysql -u dev -p 123456 devopstt < /scripts/01.createPersonLink.sql


mysql -u root -p devopstt < /scripts/01.createPersonLink.sql

mysql -h 127.0.0.1 -P 3306 -u root -p



for %%G in (*.sql) do sqlcmd /S mysql_container /d devopstt -U dev -P 123456 -i"%%G"


