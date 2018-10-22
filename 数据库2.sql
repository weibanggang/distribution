create table Order(
  order_id varchar(20) primary key ,
  car_id varchar(20),
  cu_id varchar(20),
  postPName varchar(20),
  postPTel varchar(50),
  getPName varchar(20),
  getPTel varchar(20),
  getPAddr varchar(50),
  goodsName varchar(100),
  goodsWeight int,
  orderType varchar(10),
  orderState varchar(20),
  transportPrice decimal(20),
  deliveryPrice decimal(20),
  totalPrice varchar(20),
  Comment varchar(100)
);
create table City(
  cityId varchar(20) primary key ,
  provinceId varchar(20),
  cityName varchar(20),
  provinceName varchar(20)
);
create table privance(
  provinceId varchar(20) primary key ,
  provinceName varchar(20)
);
create table CityArea(
  areaId varchar(20) primary key ,
  cityId varchar(20),
  rangeId varchar(20),
  areaName varchar(20),
  cityName varchar(20)
);
create table DeliveryRange(
  rangeId varchar(20) primary key ,
  dePid varchar(20),
  areaId varchar(20),
  rangeName varchar(20),
  deliveryPrice decimal(20),
  COMMENT varchar(100)
);
create table Role(
  roleId varchar(20) primary key ,
  roleName varchar(20),
  COMMENT  varchar(100)
);
create table Route(
  routeId varchar(20) primary key ,
  cityId varchar(20),
  provinceId varchar(20),
  routeName varchar(20),
  startProvince varchar(20),
  startCity varchar(20),
  endProvince varchar(20),
  endCity varchar(20),
  midProvince varchar(20),
  midCity varchar(20),
  transportPrice decimal(20),
  COMMENT varchar(100)
);
create table Customer(
  cuId VARCHAR(20) PRIMARY KEY ,
  customerName VARCHAR(30),
  customerPsd VARCHAR(20),
  customerSex char(10),
  Brithday datetime,
  Tel varchar(20),
  Address varchar(50),
  COMMENT varchar(100)
);
create table DeliveryPlace(
  dePid varchar(20) primary key ,
  mgId varchar(20),
  depname varchar(20),
  provinceName varchar(20),
  cityName varchar(20),
  mgName varchar(20),
  dePtel varchar(20),
  dePAddr varchar(100),
  COMMENT varchar(100)
);
create table Manager(
  mgId varchar(20) primary key ,
  roleId varchar(20),
  managerName varchar(20),
  managerPsd varchar(20),
  managerSex char(10),
  Tel varchar(20),
  Address varchar(50),
  COMMENT varchar(100)
);
create table Car(
  carId varchar(20) primary key ,
  routeId varchar(20),
  carType varchar(20),
  carOrgin varchar(50),
  carProDate datetime,
  carBuyDate datetime,
  carCapacity int ,
  carState bit,
  COMMENT varchar(100)
);
create table DeliveryReceipt(
  deliveryReceiptId varchar(20) primary key ,
  startCity varchar(20),
  endCity varchar(20),
  midCity varchar(20),
  makeDtae datetime,
  state varchar(20),
  comment varchar(100)
)
