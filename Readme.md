For the mysql_start.sh the test_db-master.zip must be downloaded and in the same directory. Link for download:

https://github.com/datacharmer/test_db

Make sure to kill all host services such as:

service mysql stop

service apache2 stop

service ftp stop



---WEB SERVER---

Stop all instances on the host machine

	service apache2 start
	
to check port 80 is listening

	netstat -antld 

-After: MySQL is setup

Listing databases
	
	mysql -u root -p
	mysql> show databases;

Making MySQL request

	mysqldump -u root -p -h [IP of MySQL server] -t [database] > data.sql



---Setting up Database---

kill all instances on host machine
	service mysql stop
	ps aux | grep mysql
	kill -9 [PID]

Then bind-address in /etc/mysql/my.cnf
-look for line:
	bind-address                   = 127.0.0.1
-add
	bind-address                   = [IP of mysql server]

-Restart mysql server
-Grant the privileges for the machines that will be using
the mysql server

https://stackoverflow.com/questions/8348506/grant-remote-access-of-mysql-database-from-any-ip-address


---FTP Server---

-Setting up a FTP server

Needs:

	twistd ftp [file server IP] -p 21


-After: MySQL is up and running

	mysqldump -u root -p -h [IP of MySQL server] -t employees > data.sql

	(run ./auto_dump.sh [automated version])






