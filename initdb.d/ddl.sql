create table `groups`(
    `group_id` int not null auto_increment primary key,
    `group_name` VARCHAR(50),
);

create table users(
    `user_id` int not null auto_increment primary key,
    `name` VARCHAR(50),
    `group_id` int,
    constraint `fk_group_id` foreign key(`group_id`) references `groups`(`group_id`)
);