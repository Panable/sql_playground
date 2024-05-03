#!/bin/bash

# MySQL service name as specified in docker-compose file
service_name='sql_playground-mysql-1'

# Database credentials
username='user'
password='password'
database='harcher'

# SQL file
sql_file='world.sql'

# Execute SQL file
docker exec -i ${service_name} mysql -u${username} -p${password} ${database} < ${sql_file}
