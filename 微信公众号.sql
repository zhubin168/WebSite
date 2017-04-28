-- Create table
create table DAFY_OA.HR_WEIXIN_USER
(
  id             NUMBER(10) default "DAFY_OA"."SEQ_HR_WEIXIN_USER"."NEXTVAL" not null,
  open_id        VARCHAR2(100) not null,
  nickname       VARCHAR2(100),
  sex            NUMBER(2),
  city           VARCHAR2(100),
  country        VARCHAR2(100),
  province       VARCHAR2(100),
  headimgurl     VARCHAR2(1000),
  subscribe_time DATE,
  unionid        VARCHAR2(100),
  remark         VARCHAR2(500),
  create_time    DATE,
  username       VARCHAR2(200),
  password       VARCHAR2(100)
)
tablespace TBS_DAFY_OA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16
    next 8
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table DAFY_OA.HR_WEIXIN_USER
  is '微信用户表';
-- Add comments to the columns 
comment on column DAFY_OA.HR_WEIXIN_USER.id
  is '序列';
comment on column DAFY_OA.HR_WEIXIN_USER.open_id
  is '微信openId';
comment on column DAFY_OA.HR_WEIXIN_USER.nickname
  is '昵称';
comment on column DAFY_OA.HR_WEIXIN_USER.sex
  is '性别';
comment on column DAFY_OA.HR_WEIXIN_USER.city
  is '用户所在城市';
comment on column DAFY_OA.HR_WEIXIN_USER.country
  is '用户所在国家';
comment on column DAFY_OA.HR_WEIXIN_USER.province
  is '用户所在省份';
comment on column DAFY_OA.HR_WEIXIN_USER.headimgurl
  is '用户头像';
comment on column DAFY_OA.HR_WEIXIN_USER.subscribe_time
  is '用户关注时间，为时间戳。如果用户曾多次关注，则取最后关注时间  ';
comment on column DAFY_OA.HR_WEIXIN_USER.unionid
  is '只有在用户将公众号绑定到微信开放平台帐号后，才会出现该字段。详见：获取用户个人信息（UnionID机制）';
comment on column DAFY_OA.HR_WEIXIN_USER.remark
  is '公众号运营者对粉丝的备注，公众号运营者可在微信公众平台用户管理界面对粉丝添加备注';
comment on column DAFY_OA.HR_WEIXIN_USER.create_time
  is '创建时间';
comment on column DAFY_OA.HR_WEIXIN_USER.username
  is '用户名';
comment on column DAFY_OA.HR_WEIXIN_USER.password
  is '密码';
-- Create/Recreate primary, unique and foreign key constraints 
alter table DAFY_OA.HR_WEIXIN_USER
  add constraint HR_WEIXIN_USER_PK_ID primary key (ID)
  using index 
  tablespace TBS_DAFY_OA
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Grant/Revoke object privileges 
grant update, references, alter, index on DAFY_OA.HR_WEIXIN_USER to DAFY_SALES;
grant select, insert, delete on DAFY_OA.HR_WEIXIN_USER to DAFY_SALES with grant option;
