create table `test`(
                       `id` bigint not null comment 'id',
                       `name` varchar(50) comment '名称',
                       `password` varchar(50) comment '密码',
                       primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment ='测试';
select * from test;

create table `demo`(
                       `id` bigint not null comment 'id',
                       `name` varchar(50) comment '名称',
                       primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment ='测试';

create table `ebook`(
    `id` bigint not null comment 'id',
    `name` varchar(50) comment '名称',
    `category1_id` bigint  comment '分类1',
    `category2_id` bigint  comment '分类2',
    `description` varchar(200) comment '描述',
    `cover` varchar(200) comment '封面',
    `doc_count` int comment '文档数',
    `view_count` int comment '阅读数',
    `vote_count` int comment '点赞数',
    primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment ='电子书';

insert into `ebook` (id,name,description) values (1,'ebookExampleBoot 入门教程','零基础入门WEB 必备');
insert into `ebook` (id,name,description) values (2,'Vue 入门教程','零基础入门Vue 必备');
insert into `ebook` (id,name,description) values (3,'pythoon入门教程','零基础入门pythoon 必备');
insert into `ebook` (id,name,description) values (4,'Mysql 入门教程','零基础入门Mysql 必备');
insert into `ebook` (id,name,description) values (5,'Orical 入门教程','零基础入门Orical 必备');



create  table  `category` (
    `id` bigint not null comment 'id',
    `parent` bigint not null default 0 comment '父id',
    `name` varchar(50) not null comment '名称',
    `sort` int comment '顺序',
    primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment ='分类';

insert into `category` (id,parent,name,sort) value (100,000,'前端开发',100);
insert into `category` (id,parent,name,sort) value (101,100,'VUE',101);
insert into `category` (id,parent,name,sort) value (102,100,'HTML',102);
insert into `category` (id,parent,name,sort) value (200,000,'JAVA',200);
insert into `category` (id,parent,name,sort) value (201,200,'基础应用',201);
insert into `category` (id,parent,name,sort) value (202,200,'框架应用',202);
insert into `category` (id,parent,name,sort) value (300,000,'Python',300);
insert into `category` (id,parent,name,sort) value (301,300,'基础应用',301);
insert into `category` (id,parent,name,sort) value (302,300,'进阶方向应用',302);
insert into `category` (id,parent,name,sort) value (400,000,'数据库',400);
insert into `category` (id,parent,name,sort) value (401,400,'Mysql',401);
insert into `category` (id,parent,name,sort) value (402,400,'redis',402);
insert into `category` (id,parent,name,sort) value (500,000,'其他',500);
insert into `category` (id,parent,name,sort) value (501,500,'开发工具',501);
insert into `category` (id,parent,name,sort) value (502,500,'热门服务端语言',502);

drop table if exists `doc`;
create table `doc`
(
    `id`         bigint      not null comment 'id',
    `ebook_id`   bigint      not null default 0 comment '电子书ID',
    `parent`     bigint      not null comment '父Id',
    `name`       varchar(50) not null comment '名称',
    `sort`       int comment '顺序',
    `view_count` int                  default 0 comment '阅读数',
    `vote_count` int                  default 0 comment '点赞数',
    primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment ='文档';

insert into `doc` (id, ebook_id, parent, name, sort, view_count, vote_count) value (1,1,0,'文档1',1,0,0);
insert into `doc` (id, ebook_id, parent, name, sort, view_count, vote_count) value (2,1,1,'文档1.1',1,0,0);
insert into `doc` (id, ebook_id, parent, name, sort, view_count, vote_count) value (3,1,0,'文档2',2,0,0);
insert into `doc` (id, ebook_id, parent, name, sort, view_count, vote_count) value (4,1,3,'文档2.1',1,0,0);
insert into `doc` (id, ebook_id, parent, name, sort, view_count, vote_count) value (5,1,3,'文档2.2',2,0,0);
insert into `doc` (id, ebook_id, parent, name, sort, view_count, vote_count) value (6,1,5,'文档2.2.1',1,0,0);



drop table if exists `content`;
create table `content`(
    `id` bigint not null comment '文档ID',
    `content` mediumtext not null comment '内容',
    primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment ='文档内容';
/**
  创建用户表

  登录名是唯一的,
  id 是主键;
 */
create table `user` (
                        `id` bigint not null comment "ID",
                        `login_name` varchar(50) not null comment "登录名",
                        `name` varchar(50) comment "昵称",
                        `password` char(32) not null  comment "密码",
                        primary key(`id`),
                        unique key login_name_nuique (`login_name`)
)engine=innodb default charset= utf8mb4 comment='用户'
