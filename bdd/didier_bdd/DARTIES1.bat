echo lorsqu'un mot de passe root est demande, ne rien mettre : appuyez sur la touche entree

bin\mysql\mysql5.7.14\bin\mysql -u root -p -e "DROP USER 'darties1'@'localhost' ;"
bin\mysql\mysql5.7.14\bin\mysql -u root -p -e "CREATE USER 'darties1'@'localhost' IDENTIFIED BY 'DARTIES1';GRANT USAGE ON * . * TO 'darties1'@'localhost' IDENTIFIED BY 'DARTIES1' WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0 ;CREATE DATABASE IF NOT EXISTS `darties1` DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;GRANT ALL PRIVILEGES ON `darties1` . * TO 'darties1'@'localhost';"
echo lorsqu'un mot de passe de l'utilisateur darties1 est demande, mettre DARTIES1 et appuyez sur la touche entree

bin\mysql\mysql5.7.14\bin\mysql -u darties1 -p darties1<truc.sql
bin\mysql\mysql5.7.14\bin\mysql -u darties1 -p darties1<My_DARTIES1_2.sql
pause
