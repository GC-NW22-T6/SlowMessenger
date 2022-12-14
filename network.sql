drop database if exists network;
create database network;
use network;

create table client_list(
client_id varchar(10),
client_password varchar(15),
client_name varchar(11),
client_email varchar(20),
client_phone varchar(13),
primary key(client_id)
);


create table login_check(
client_id varchar(10),
log varchar(7),
foreign key (client_id)
references client_list(client_id)
);

create table client_friend_list(
client_id varchar(10),
friend_id varchar(10),
foreign key (client_id)
references client_list(client_id)
);