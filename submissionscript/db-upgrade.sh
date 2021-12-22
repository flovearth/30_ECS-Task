#!/bin/bash
#This is the solution of Feyz SARI.

#these are the variables that used in the script.
#The reason to use these is to make it run on any environment.

scripts_folder=$1
db_user=$2
servername=$3
db_name=$4
db_passwd=$5

# Required steps:
# 1. Connect to sql server and get version
# 2. create a for loop
#    - in every loop  we need to compare version to the numbers in the script names
#    - numbers in the scripts will be parsed with sed command
#    - echo $filename | sed -r 's|^([^.]+).*$|\1|; s|^[^0-9]*([0-9]+).*$|\1|'
# 3. create an if  loop indide for loop
#     - numbers in the script names is bigger than the version than execute the script.
#     - write script name number into the sql table as a new value

# I could't write the code of required steps myself. I could write a bash script which executes numbered sql files.
# This solution could pass 2 of 3 tests.


#expected format
# ./db-upgrade.your-lang directory-with-sql-scripts username-for-the-db db-host db-name db-password



cd $scripts_folder

for filename in [0-9]*.sql; do 
    mysql -u $db_user -p$db_passwd -h $servername -D $db_name < "$filename" 

    #If you dont want to use env var in this script you can use this.
    # mysql -u $MYSQL_USER -p $MYSQL_PASSWORD mysql_container -D $MYSQL_DATABASE < $filename 
done

# cd -
