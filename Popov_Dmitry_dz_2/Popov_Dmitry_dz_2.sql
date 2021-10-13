/*
  ������� � 1
  ���������� ���� MySQL. �������� � �������� ����������
  ���� .my.cnf, ����� � ��� ����� � ������, �������
  ���������� ��� ���������.
*/
# <.my.cnf>
[client]
user=root
password=Somnum8993G

/*
  ������� � 2
  �������� ���� ������ example, ���������� � ��� ������� users,
  ��������� �� ���� ��������, ��������� id � ���������� name.
*/
DROP DATABASE IF EXISTS example;
CREATE DATABASE example;
USE example;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) DEFAULT 'noname'
);

/*
  ������� � 3
  �������� ���� ���� ������ example �� ����������� �������,
  ���������� ���������� ����� � ����� ���� ������ sample.
*/
DROP DATABASE IF EXISTS sample;
CREATE DATABASE sample;
USE sample; 

SOURCE sample.sql;

/*
  ������� � 4
  (�� �������) ������������ ����� �������� � �������������
  ������� mysqldump. �������� ���� ������������ �������
  help_keyword ���� ������ mysql. ������ ��������� ����,
  ����� ���� �������� ������ ������ 100 ����� �������.
*/
/*
  mysqldump --opt --where='1 limit 100' mysql help_keyword > ./temp.sql
*/