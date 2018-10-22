drop database `august`;
create database `august`;
use `august`;
#用户组
# drop table user_group
create table if not exists `user_group`
(
	us_id nvarchar(10) primary key not null comment '用户组编号',
	us_name nvarchar(10) not null comment'用户组名称',
	us_remarks nvarchar(50) null comment '备注'
);

 insert into `user_group` values('E1001','第二组',''),('E1002','第三组','');
select * from user_group;
# 管理员表
create table if not exists `admin`
(
	adm_id nvarchar(10) not null primary key comment'管理员编号',
	adm_name nvarchar(10) comment'管理员姓名',
	adm_sexual int comment'性别',
	us_id nvarchar(10) comment'用户组编号(外键)',
	adm_state int comment'状态',
	adm_city nvarchar(10) comment'所在城市',
	adm_address nvarchar(10) comment'地址',
	adm_password nvarchar(10) comment'密码',
	adm_phone nvarchar(20) comment'电话',
	adm_remarks nvarchar(50) comment'备注',
	foreign key(us_id) references user_group(us_id)
);

insert into `admin` values('U1001','欧可乐',1,'E1001',1,'珠海','B栋501','123456','13728298752','姓欧的');
insert into `admin` values('U1007','刘大佬',1,'E1002',0,'珠海','B栋501','654321','13728279934','姓刘的');
insert into `admin` values('U1010','韦大仙',1,'E1002',1,'珠海','B栋501','684321','13728279534','姓韦的');
select * from 	`admin`;

#省份表
create table if not exists `province`
(
	pro_id nvarchar(10) primary key not null comment '省份id',
	pro_name nvarchar(10) null comment '名称'
);

	insert into `province` values('S1001','广东省'),('S1002','江西省');
	select * from `province`;

# 城市表 drop table city;
create table if not exists `city`
(
	cit_id nvarchar(10) not null primary key comment'城市id',
	cit_name nvarchar(10) comment'城市名称',
	pro_id nvarchar(10) references province(pro_id) 
);
	
	insert into `city` values('C1001','S1001','珠海市'),('C1002','S1002','赣州市');
	insert into `city` values('C1003','S1003','柳州市'),('C1004','S1004','来宾市');

#城市区域
create table if not exists `region`
(
	reg_id nvarchar(10) not null primary key comment'区域id',
	reg_name nvarchar(50) comment'区域名称',
	cit_id nvarchar(50) references city(cit_id) 
);

	insert into `region` values('R1001','于都县','C1002'),('R1002','斗门区','C1001');
	select * from `region`;
# 交接单
create table if not exists `handover`
(
	han_start_city nvarchar(10) primary key not null comment'起点城市',
	han_end_city nvarchar(10) comment'终点城市',
	han_now_city nvarchar(10) comment'已到城市',
	han_state int comment'状态',
	han_date datetime comment'生成时间',
	han_remarks nvarchar(50) comment'备注'
);
	
	insert into `handover` values('珠海市','赣州市','朝阳市',1,now(),'');
	insert into `handover` values('柳州市','来宾市','小林市',1,now(),'');
	select * from `handover`;

# 订单 drop table order
create table if not exists `order`
(
	ord_id nvarchar(10) primary key comment'主键',
	ord_type int comment'订单类型',
	ord_number nvarchar(10) comment'交接单编号',
	ord_product_name nvarchar(20) comment'货物名称',
	ord_weight int comment'货物重量',
	ord_mailer nvarchar(20) comment'邮寄人',
	ord_address nvarchar(20) comment'邮寄地址',
	ord_receiving nvarchar(50) comment'收货地址',
	ord_state int comment'订单状态',
	ord_phone nvarchar(20) comment'邮寄人电话',
	ord_consignee nvarchar(20) comment'收货人',
	ord_con_phone nvarchar(20) comment'收货人电话',
	ord_start_city nvarchar(10) comment'起点城市',
	ord_midpoint_city nvarchar(10) comment'中点城市',
	ord_end_city nvarchar(10) comment'终点城市',
	ord_price decimal(18,0) comment'配送价格',
	ord_transit_price decimal(18,0) comment'运输价格',
	ord_total_price decimal(18,0) comment'总价格',
	ord_vehicle nvarchar(10) comment'车辆',
	ord_remarks nvarchar(50) comment'备注'
);

	insert into `order` values('D1001',3,'87765646677','白白大礼包',3,'欧咳咳','南方IT学院','广西省来宾市',1,'15476879872','刘大仙','13718071824','珠海市','广州市','赣州市',16.24,5.0,21.24,'专属运输车辆','');
	select * from `order`;

#消费者 drop table consumer
create table if not exists `consumer`
(
	con_id nvarchar(10) primary key not null comment'消费者id',
	con_name nvarchar(10) comment'姓名',
	con_sexual int comment'性别',
	us_id nvarchar(10)  references user_group(us_id),
	con_password nvarchar(10) comment'密码',
	con_phone nvarchar(20) comment'联系电话',
	con_birth datetime comment'出生日期',
	con_address nvarchar(50) comment'地址',
	con_remarks nvarchar(50) comment'备注'
);
	
	insert into `consumer` values('CN1001','张三',1,'E1001','098765','13718909876',now(),'北京','');
	select * from `consumer`;


# 路线表
create table if not exists `route`
(
	rou_id nvarchar(10) not null primary key comment'路线编号',
	rou_name nvarchar(10) comment'路线名称',
	pro_id_start nvarchar(10)  references province(pro_id),
	cit_id_start nvarchar(10) references city(cit_id),
	pro_id_midpoint nvarchar(10)   references province(pro_id),
	cit_id_midpoint nvarchar(10) references city(cit_id),
	pro_id_end nvarchar(10)   references province(pro_id),
	cit_id_end nvarchar(10) references city(cit_id),
	rou_price decimal(18,0) comment'运输价格',
	rou_remarks nvarchar(50) comment'备注'
);

	insert into `route` values('RU1001','京张路','S1001','C1002','S1001','C1001','S1002','C1002',15,'');
	select * from `route`;


# 车辆
create table if not exists `vehicle`
(
	veh_id nvarchar(10) not null primary key comment'车辆编号(主键)',
	veh_type nvarchar(10) comment'车辆型号',
	veh_address nvarchar(20) comment'场地',
	rou_id nvarchar(10) references route(rou_id),
	veh_birth datetime comment'生产日期',
	veh_purchase_date datetime comment'购买日期',
	veh_remarks nvarchar(50) comment'备注'
);

	insert into `vehicle`(veh_id,veh_type,veh_address,rou_id,veh_birth,veh_purchase_date,veh_remarks) values('1','E4682','南方场地',1,'2018-10-1',now(),'');
select * from vehicle;

# 配送点
create table if not exists `distribution`
(
	dis_id int not null primary key comment'配送点id(主键)',
	dis_name nvarchar(10) comment'配送点名称',
	pro_id nvarchar(10) comment'省份id(外键)',
	cit_id nvarchar(10) comment'城市id(外键)',
	adm_id nvarchar(10) comment'管理员id(外键)',
	dis_phone nvarchar(20) comment'联系电话',
	dis_address nvarchar(50) comment'地址',
	dis_remarks nvarchar(50) comment'备注',
	foreign key(adm_id) references admin(adm_id)
);
#配送范围
create table if not exists `distribution_scope`
(
	distr_id int not null primary key comment'配送区域id',
	distr_name nvarchar(10) comment'配送区域名称',
	distr_price decimal(18,0) comment'配送价格',
	cit_id nvarchar(10) comment'所属城市id(外键)',
	distr_remarks nvarchar(10) comment'备注',
	foreign key(cit_id) references city(cit_id)
);



