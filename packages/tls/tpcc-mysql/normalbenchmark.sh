
# load data and dump all.sql
mysql -uroot -pletmein -h127.0.0.1 -e "drop database if exists tpcc1000"
mysql -uroot -pletmein -h127.0.0.1 -e "create database tpcc1000"
mysql -uroot -pletmein -h127.0.0.1 tpcc1000 < create_table.sql
./tpcc_load -h127.0.0.1 -uroot -pletmein -d tpcc1000 -w 2
mysqldump --skip-extended-insert -uroot -pletmein -h127.0.0.1 tpcc1000 > all.sql
mysql -uroot -pletmein -h127.0.0.1 -e "drop database if exists tpcc1000"