/*
  Задание № 1
  Установите СУБД MySQL. Создайте в домашней директории
  файл .my.cnf, задав в нем логин и пароль, который
  указывался при установке.
*/
# <.my.cnf>
[client]
user=root
password=Somnum8993G

/*
  Задание № 2
  Создайте базу данных example, разместите в ней таблицу users,
  состоящую из двух столбцов, числового id и строкового name.
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
  Задание № 3
  Создайте дамп базы данных example из предыдущего задания,
  разверните содержимое дампа в новую базу данных sample.
*/
DROP DATABASE IF EXISTS sample;
CREATE DATABASE sample;
USE sample; 

SOURCE sample.sql;

/*
  Задание № 4
  (по желанию) Ознакомьтесь более подробно с документацией
  утилиты mysqldump. Создайте дамп единственной таблицы
  help_keyword базы данных mysql. Причем добейтесь того,
  чтобы дамп содержал только первые 100 строк таблицы.
*/
/*
  mysqldump --opt --where='1 limit 100' mysql help_keyword > ./temp.sql
*/