deploy: clean
	sudo cp -f configs/my.cnf /etc/my.cnf
	sudo cp -f configs/h2o.conf /etc/h2o/h2o.conf
	sudo systemctl restart mariadb.service
	sudo systemctl restart h2o.service

clean: 
	echo "" > /var/log/h2o/access.log
	echo "" > /var/log/h2o/error.log
	echo "" > /var/log/mariadb/mariadb.log
	echo "" > /var/log/mariadb/slow.log
