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
  is '΢���û���';
-- Add comments to the columns 
comment on column DAFY_OA.HR_WEIXIN_USER.id
  is '����';
comment on column DAFY_OA.HR_WEIXIN_USER.open_id
  is '΢��openId';
comment on column DAFY_OA.HR_WEIXIN_USER.nickname
  is '�ǳ�';
comment on column DAFY_OA.HR_WEIXIN_USER.sex
  is '�Ա�';
comment on column DAFY_OA.HR_WEIXIN_USER.city
  is '�û����ڳ���';
comment on column DAFY_OA.HR_WEIXIN_USER.country
  is '�û����ڹ���';
comment on column DAFY_OA.HR_WEIXIN_USER.province
  is '�û�����ʡ��';
comment on column DAFY_OA.HR_WEIXIN_USER.headimgurl
  is '�û�ͷ��';
comment on column DAFY_OA.HR_WEIXIN_USER.subscribe_time
  is '�û���עʱ�䣬Ϊʱ���������û�����ι�ע����ȡ����עʱ��  ';
comment on column DAFY_OA.HR_WEIXIN_USER.unionid
  is 'ֻ�����û������ںŰ󶨵�΢�ſ���ƽ̨�ʺź󣬲Ż���ָ��ֶΡ��������ȡ�û�������Ϣ��UnionID���ƣ�';
comment on column DAFY_OA.HR_WEIXIN_USER.remark
  is '���ں���Ӫ�߶Է�˿�ı�ע�����ں���Ӫ�߿���΢�Ź���ƽ̨�û��������Է�˿��ӱ�ע';
comment on column DAFY_OA.HR_WEIXIN_USER.create_time
  is '����ʱ��';
comment on column DAFY_OA.HR_WEIXIN_USER.username
  is '�û���';
comment on column DAFY_OA.HR_WEIXIN_USER.password
  is '����';
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
