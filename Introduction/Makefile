MYSQL=/usr/local/mysql/bin/mysql
USER=root
DB=test
MYSQLCMD=$(MYSQL) $(DB) --verbose

all: setup

setup:
	$(MYSQLCMD) -e "source setup.sql"
