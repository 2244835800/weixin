prompt PL/SQL Developer import file
prompt Created on 2018年7月27日, 星期五 by Administrator
set feedback off
set define off
prompt Creating ADMIN_TIP_MSG...
create table ADMIN_TIP_MSG
(
  str_tip_id          NUMBER(11) not null,
  str_person_name     VARCHAR2(40),
  str_person_telphone VARCHAR2(13),
  str_tip_title       VARCHAR2(30),
  str_tip_description VARCHAR2(300),
  str_tip_pic1        VARCHAR2(200),
  str_tip_pic2        VARCHAR2(200),
  str_tip_state       VARCHAR2(4),
  str_tip_source      VARCHAR2(2),
  str_tip_type        VARCHAR2(4),
  comments            VARCHAR2(300),
  comm                VARCHAR2(300),
  createtime          DATE default sysdate,
  districtid          VARCHAR2(30),
  x                   VARCHAR2(32),
  y                   VARCHAR2(32)
)
;
comment on table ADMIN_TIP_MSG
  is '微信网络案件';
comment on column ADMIN_TIP_MSG.str_tip_id
  is '举报信息id';
comment on column ADMIN_TIP_MSG.str_person_name
  is '姓名';
comment on column ADMIN_TIP_MSG.str_person_telphone
  is '电话';
comment on column ADMIN_TIP_MSG.str_tip_title
  is '举报标题';
comment on column ADMIN_TIP_MSG.str_tip_description
  is '举报描述';
comment on column ADMIN_TIP_MSG.str_tip_pic1
  is '图片1';
comment on column ADMIN_TIP_MSG.str_tip_pic2
  is '图片2';
comment on column ADMIN_TIP_MSG.str_tip_state
  is '举报状态：0为未处理；1为已受理；2为处理中；3为处理完成';
comment on column ADMIN_TIP_MSG.str_tip_source
  is '举报来源：1微信；2APP；3网页';
comment on column ADMIN_TIP_MSG.str_tip_type
  is '举报类型';
comment on column ADMIN_TIP_MSG.comments
  is '备注1';
comment on column ADMIN_TIP_MSG.comm
  is '备注2';
comment on column ADMIN_TIP_MSG.createtime
  is '举报时间';
comment on column ADMIN_TIP_MSG.districtid
  is '所属区域编码';
comment on column ADMIN_TIP_MSG.x
  is 'x坐标';
comment on column ADMIN_TIP_MSG.y
  is 'y坐标';
alter table ADMIN_TIP_MSG
  add constraint PK_ADMIN_TIP_MSG primary key (STR_TIP_ID);

prompt Loading ADMIN_TIP_MSG...
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000097, '何泼', '13773999909', '何泼微信举报', 'testN4', 'media/2018/07/26/wx_20180726111741_1.jpeg', '20180726111928_2.jpeg', '0', '1', '101', '秦淮区五老村街道秦淮区机关办公大楼', null, to_date('26-07-2018 11:19:40', 'dd-mm-yyyy hh24:mi:ss'), null, '118.7945', '32.039');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000098, '何泼', '13777878787', '何泼微信举报', '永智路有人贴小广告', '20180726152319_1.jpeg', null, '0', '1', '102', '秦淮区五老村街道秦淮区机关办公大楼', 'oUV9_1s3LmHWSGDgmgGuRn_2_vFQ', to_date('26-07-2018 15:26:30', 'dd-mm-yyyy hh24:mi:ss'), null, '118.7945', '32.039');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000067, '何泼', '13232323232', null, 'test25', null, null, '0', '1', '1', '阳关路', null, to_date('20-07-2018 14:18:01', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000068, '何泼', '13232323232', null, 'test26', null, null, '0', '1', '1', '阳关路', null, to_date('20-07-2018 14:19:36', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000069, '何泼', '13232323232', null, 'test27', null, null, '0', '1', '1', '阳关路', null, to_date('20-07-2018 14:24:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000070, '何泼', '13232323232', null, 'test31', null, null, '0', '1', '1', '阳关路', null, to_date('20-07-2018 15:02:58', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000099, '何泼', '13778787989', '何泼微信举报', '永智路有人张贴小广告2', 'media/2018/07/26/wx_20180726161318_1.jpeg', null, '0', '1', '102', '秦淮区五老村街道秦淮区机关办公大楼', 'oUV9_1s3LmHWSGDgmgGuRn_2_vFQ', to_date('26-07-2018 16:13:29', 'dd-mm-yyyy hh24:mi:ss'), null, '118.7945', '32.039');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (21, 'ceshiyxia', '13567890999', '1234', 'asdfg', 'media/2017/12/23/web_20171223180508485.jpg', 'media/2017/12/23/web_20171223180558694.jpg', '2', '3', '102', null, null, to_date('23-12-2017 17:35:57', 'dd-mm-yyyy hh24:mi:ss'), '321181002', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (25, '没事做来随便举报一下呗hiuhiuhiu', '13234567899', '随手乱贴小广告真讨厌', 'dagdsgdgdsgsdgdsgdsgdssgsdgds', 'media/2018/01/08/web_20180108172136479.jpg', 'media/2018/01/08/web_20180108172131382.jpg', '0', '3', '102', null, null, to_date('08-01-2018 16:49:24', 'dd-mm-yyyy hh24:mi:ss'), '321181004', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (26, 'testtestte', '13988888888', 'testtestte', 'testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest', 'media/2018/01/15/web_20180115135739886.jpg', 'media/2018/01/15/web_20180115135742133.jpg', '-1', '3', '101', null, null, to_date('15-01-2018 13:24:27', 'dd-mm-yyyy hh24:mi:ss'), '321181002', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (1, '0', '1', null, '1', null, null, '0', '1', '101', '123', null, to_date('08-01-2018 10:06:00', 'dd-mm-yyyy hh24:mi:ss'), '111', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000041, '9012309128', '13000000000', '9012309128微信举报', '1232', 'media\2018\03\21\wx_20180321205033_1.jpeg', 'media\2018\03\21\wx_20180321205033_1.jpeg', '0', '1', '103', '1111', null, to_date('21-03-2018 20:50:56', 'dd-mm-yyyy hh24:mi:ss'), '321181005', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000042, '23423', '1300000000', '23423微信举报', '1232123', '20180321205839_1.jpeg', '20180321205839_1.jpeg', '0', '1', '104', 'lksjflk', null, to_date('21-03-2018 20:58:46', 'dd-mm-yyyy hh24:mi:ss'), '321181005', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000043, '0000', '13000000000', '0000微信举报', '123123', 'media\2018\03\21\wx_20180321210224_1.jpeg', 'media\2018\03\21\wx_20180321210224_1.jpeg', '0', '1', '104', 'lkjljlj', null, to_date('21-03-2018 21:03:39', 'dd-mm-yyyy hh24:mi:ss'), '321181006', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000044, '123123', '13000000000', '123123微信举报', '123', 'media\2018\03\21\wx_20180321211222_1.jpeg', 'media\2018\03\21\wx_20180321211222_1.jpeg', '0', '1', '102', '12321', null, to_date('21-03-2018 21:14:47', 'dd-mm-yyyy hh24:mi:ss'), '321181005', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000053, '13', '13000000000', '13微信举报', '123', 'media\2018\03\21\wx_20180321234549_1.jpeg', null, '0', '1', '101', '12321', null, to_date('21-03-2018 23:50:26', 'dd-mm-yyyy hh24:mi:ss'), '410422002', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000054, 'qwe', '13000000000', 'qwe微信举报', 'qweewqew', 'media/2018/03/21/wx_20180321235120_1.jpeg', null, '1', '1', '102', '1231', null, to_date('21-03-2018 23:51:36', 'dd-mm-yyyy hh24:mi:ss'), '410422001002', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (5, 'people', '17256325698', 'title', 'des', 'media/2017/12/20/web_20171220140019537.jpg', 'media/2017/12/20/web_20171220140024645.jpg', '1', '3', '101', null, null, to_date('20-12-2017 13:33:07', 'dd-mm-yyyy hh24:mi:ss'), '321181001', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (6, 'people', '17256325698', 'title', 'des', 'media/2017/12/20/web_20171220140019537.jpg', 'media/2017/12/20/web_20171220140024645.jpg', '1', '3', '101', null, null, to_date('20-12-2017 13:34:14', 'dd-mm-yyyy hh24:mi:ss'), '321181001', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (11, 'dere', '18596569856', 'dfd', 'fdfdf', 'media/2017/12/20/web_20171220140837313.jpg', 'media/2017/12/20/web_20171220140843058.jpg', '-1', '3', '101', null, null, to_date('20-12-2017 13:39:05', 'dd-mm-yyyy hh24:mi:ss'), '321181001', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (12, 'rer', '15263525896', 'dfdf', 'dfdfdf', 'media/2017/12/20/web_20171220141125860.jpg', 'media/2017/12/20/web_20171220141130688.jpg', '0', '3', '101', null, null, to_date('20-12-2017 13:41:43', 'dd-mm-yyyy hh24:mi:ss'), '321181001', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (13, 'rer', '15263525896', 'dfdf', 'dfdfdf', 'media/2017/12/20/web_20171220141125860.jpg', 'media/2017/12/20/web_20171220141130688.jpg', '1', '3', '101', null, null, to_date('20-12-2017 13:42:31', 'dd-mm-yyyy hh24:mi:ss'), '321181001', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (16, 'dfd', '15263256358', 'dfd', 'fdfdfdf', 'media/2017/12/20/web_20171220142623462.jpg', 'media/2017/12/20/web_20171220142629697.jpg', '-1', '3', '101', null, null, to_date('20-12-2017 13:56:42', 'dd-mm-yyyy hh24:mi:ss'), '321181001', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (19, '3333', '15263256985', '1222', '奔奔在', 'media/2017/12/20/web_20171220151409536.jpg', 'media/2017/12/20/web_20171220151414776.jpg', '3', '3', '101', null, null, to_date('20-12-2017 14:44:32', 'dd-mm-yyyy hh24:mi:ss'), '321181002', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (4, 'people', '17256325698', 'title', 'des', 'media/2017/12/20/web_20171220140019537.jpg', 'media/2017/12/20/web_20171220140024645.jpg', '0', '3', '101', null, null, to_date('20-12-2017 13:30:42', 'dd-mm-yyyy hh24:mi:ss'), null, '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (7, 'people', '17256325698', 'title', 'des', 'media/2017/12/20/web_20171220140019537.jpg', 'media/2017/12/20/web_20171220140024645.jpg', '0', '3', '101', null, null, to_date('20-12-2017 13:35:55', 'dd-mm-yyyy hh24:mi:ss'), '321181001', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (8, 'people', '17256325698', 'title', 'des', 'media/2017/12/20/web_20171220140019537.jpg', 'media/2017/12/20/web_20171220140024645.jpg', '0', '3', '101', null, null, to_date('20-12-2017 13:36:11', 'dd-mm-yyyy hh24:mi:ss'), '321181001', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (9, 'people', '17256325698', 'title', 'des', 'media/2017/12/20/web_20171220140019537.jpg', 'media/2017/12/20/web_20171220140024645.jpg', '1', '3', '101', null, null, to_date('20-12-2017 13:36:48', 'dd-mm-yyyy hh24:mi:ss'), '321181001', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (10, 'rtre', '15623569856', 'erer', 'erere', 'media/2017/12/20/web_20171220140726784.jpg', 'media/2017/12/20/web_20171220140732475.jpg', '1', '3', '101', null, null, to_date('20-12-2017 13:37:49', 'dd-mm-yyyy hh24:mi:ss'), '321181001', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (14, '34343', '15263256325', 'dfdfd', 'fdfdf', 'media/2017/12/20/web_20171220141412457.jpg', 'media/2017/12/20/web_20171220141417860.jpg', '1', '3', '103', null, null, to_date('20-12-2017 13:44:35', 'dd-mm-yyyy hh24:mi:ss'), '321181004', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (15, 'dfdfd', '15263256325', 'dfdfdfd', 'dfdfdf', 'media/2017/12/20/web_20171220141901260.jpg', 'media/2017/12/20/web_20171220141908276.jpg', '1', '3', '103', null, null, to_date('20-12-2017 13:49:29', 'dd-mm-yyyy hh24:mi:ss'), '321181005', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (17, '11111', '15263256985', '1234567895', '1234567895123456789512345678951234567895123456789512345678951234567895123456789512345678951234567895', 'media/2017/12/20/web_20171220142948238.jpg', 'media/2017/12/20/web_20171220142953438.jpg', '2', '3', '101', null, null, to_date('20-12-2017 14:00:13', 'dd-mm-yyyy hh24:mi:ss'), '321181001', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (18, '举报人举报人举报人举', '15246859658', '标题标题标题标题标题', '标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题', 'media/2017/12/20/web_20171220143223923.jpg', 'media/2017/12/20/web_20171220143229741.jpg', '3', '3', '101', null, null, to_date('20-12-2017 14:02:51', 'dd-mm-yyyy hh24:mi:ss'), '321181004', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (20, '测试举报信息-人', '15265236523', 'test title', 'description', 'media/2017/12/21/web_20171221094017796.jpg', 'media/2017/12/21/web_20171221094031385.jpg', '-1', '3', '101', null, null, to_date('21-12-2017 09:10:41', 'dd-mm-yyyy hh24:mi:ss'), '321181004', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (134, '000001', '18512544628', 'aaaaa', 'aaaaa', 'media/2018/01/19/web_20180119155831578.jpg', 'media/2018/01/19/web_20180119155835404.jpg', '0', '3', '101', null, null, to_date('19-01-2018 15:28:36', 'dd-mm-yyyy hh24:mi:ss'), '321181001', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (135, '孙六', '13100000000', '测试0', '测试0', 'media/2018/01/19/web_20180119161642823.jpg', 'media/2018/01/19/web_20180119161651736.jpg', '0', '3', '102', null, null, to_date('19-01-2018 15:43:03', 'dd-mm-yyyy hh24:mi:ss'), '321181001', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000031, '223', '13000000000', '223微信举报', '123', '20180321181241_1.jpeg', '20180321181241_1.jpeg', '0', '1', '104', '1', null, to_date('21-03-2018 18:12:43', 'dd-mm-yyyy hh24:mi:ss'), '321181005', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000032, '333', '13000000000', '333微信举报', '123', null, null, '0', '1', '104', '1', null, to_date('21-03-2018 18:22:39', 'dd-mm-yyyy hh24:mi:ss'), '321181005', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000033, '34', '13000000000', '34微信举报', '123', '20180321182308_1.jpeg', '20180321182308_1.jpeg', '0', '1', '104', '1', null, to_date('21-03-2018 18:23:12', 'dd-mm-yyyy hh24:mi:ss'), '321181005', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (29, 'testtestte', '13988888888', 'testtestte', 'testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest', 'media/2018/01/18/web_20180118134552351.jpg', 'media/2018/01/18/web_20180118134555454.jpg', '0', '3', '101', null, null, to_date('18-01-2018 13:12:28', 'dd-mm-yyyy hh24:mi:ss'), '321181001', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (30, '测试', '13988888888', '测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', 'media/2018/01/18/web_20180118134708020.jpg', 'media/2018/01/18/web_20180118134710155.jpg', '-1', '3', '101', null, null, to_date('18-01-2018 13:13:31', 'dd-mm-yyyy hh24:mi:ss'), '321181001', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000030, '123', '1300000000', '123微信举报', '123', '20180321175634_1.jpeg', '20180321175634_1.jpeg', '0', '1', '102', '1300000000', null, to_date('21-03-2018 17:56:51', 'dd-mm-yyyy hh24:mi:ss'), '321181001', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000037, '333', '13000000000', '333微信举报', '123', '20180321195450_1.jpeg', '20180321195450_1.jpeg', '0', '1', '101', '123路', null, to_date('21-03-2018 19:54:57', 'dd-mm-yyyy hh24:mi:ss'), '321181001', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000038, '333', '13000000000', '333微信举报', '123', '20180321195621_1.jpeg', '20180321195621_1.jpeg', '0', '1', '101', '123路', null, to_date('21-03-2018 19:56:25', 'dd-mm-yyyy hh24:mi:ss'), '321181001', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000039, '333', '13000000000', '333微信举报', '123', '20180321195901_1.jpeg', '20180321195901_1.jpeg', '0', '1', '101', '123路', null, to_date('21-03-2018 19:59:04', 'dd-mm-yyyy hh24:mi:ss'), '321181001', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (28, '234', '18512544628', null, '123', null, null, '0', '1', '1', '123路', null, to_date('18-01-2018 11:21:59', 'dd-mm-yyyy hh24:mi:ss'), '234', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (31, 'qwq', '18512544628', null, '121212', null, null, '0', '1', '1', '1212', null, to_date('18-01-2018 15:13:40', 'dd-mm-yyyy hh24:mi:ss'), 'qwq', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000040, '3412', '1300000000', '3412微信举报', '123', '20180321202707_1.jpeg', '20180321202707_1.jpeg', '0', '1', '103', '1', null, to_date('21-03-2018 20:27:20', 'dd-mm-yyyy hh24:mi:ss'), '321181002', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (22, '测试测试测试测试测试', '15951071398', '测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', 'media/2017/12/27/web_20171227165931287.jpg', 'media/2017/12/27/web_20171227165940720.jpg', '1', '3', '101', null, null, to_date('27-12-2017 16:29:19', 'dd-mm-yyyy hh24:mi:ss'), '321181002', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (24, '呼叫受理页面', '13922222222', '测试!@#$ Tes', '测试!@#$ Test123', 'media/2017/12/27/web_20171227183011040.jpg', 'media/2017/12/27/web_20171227183013588.jpg', '1', '3', '205', null, null, to_date('27-12-2017 17:59:31', 'dd-mm-yyyy hh24:mi:ss'), '321181001', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (27, '测试', '13988888888', '测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', 'media/2018/01/15/web_20180115143208003.jpg', 'media/2018/01/15/web_20180115143209834.jpg', '3', '3', '104', null, null, to_date('15-01-2018 13:58:54', 'dd-mm-yyyy hh24:mi:ss'), '321181004', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (32, '张三', '18512544628', null, '破损', 'media\2018\01\18\wx_20180118194715_1.jpeg', 'media\2018\01\18\wx_20180118194715_1.jpeg', '0', '1', '201', '测试路10号', null, to_date('18-01-2018 19:47:38', 'dd-mm-yyyy hh24:mi:ss'), '321181002', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (33, '李四', '15905192071', '李四微信举报', '小商小贩', 'media\2018\01\18\wx_20180118195105_1.jpeg', 'media\2018\01\18\wx_20180118195105_1.jpeg', '0', '1', '103', '大马路20号', null, to_date('18-01-2018 19:51:19', 'dd-mm-yyyy hh24:mi:ss'), '321181005', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000045, '11111', '13000000000', '11111微信举报', 'kkkk', 'media\2018\03\21\wx_20180321211837_1.jpeg', null, '0', '1', '101', '222', null, to_date('21-03-2018 21:18:44', 'dd-mm-yyyy hh24:mi:ss'), '321181001', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000046, 'xxxx', '1300000000', 'xxxx微信举报', 'xxx', 'media\2018\03\21\wx_20180321213950_1.jpeg', null, '0', '1', '102', 'xxx', null, to_date('21-03-2018 21:41:26', 'dd-mm-yyyy hh24:mi:ss'), '321181004', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000047, '123', '13000000000', '123微信举报', '123', '20180321222734_1.jpeg', null, '0', '1', '103', '123', null, to_date('21-03-2018 22:29:06', 'dd-mm-yyyy hh24:mi:ss'), '321181002', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000048, '123', '13000000000', '123微信举报', '123', '20180321222951_1.jpeg', null, '0', '1', '101', '132', null, to_date('21-03-2018 22:29:57', 'dd-mm-yyyy hh24:mi:ss'), '321181004', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000049, '333', '13000000000', '333微信举报', '1323', '20180321223211_1.jpeg', null, '0', '1', '101', '13', null, to_date('21-03-2018 22:32:22', 'dd-mm-yyyy hh24:mi:ss'), '321181004', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000050, '123', '13000000000', '123微信举报', '132', '20180321223436_1.jpeg', null, '0', '1', '103', '13', null, to_date('21-03-2018 22:34:42', 'dd-mm-yyyy hh24:mi:ss'), '321181004', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000051, '123', '13000000000', '123微信举报', '123', '20180321223558_1.jpeg', null, '0', '1', '101', '23', null, to_date('21-03-2018 22:36:07', 'dd-mm-yyyy hh24:mi:ss'), '321181001', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000052, '213', '13000000000', '213微信举报', '123', 'media\2018\03\21\wx_20180321223748_1.jpeg', null, '0', '1', '105', '23', null, to_date('21-03-2018 22:38:09', 'dd-mm-yyyy hh24:mi:ss'), '321181004', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (23, '测试!@#$ Test123', '13911111111', '测试!@#$ Tes', '测试!@#$ Test123', 'media/2017/12/27/web_20171227182756622.jpg', 'media/2017/12/27/web_20171227182800643.jpg', '0', '3', '101', null, null, to_date('27-12-2017 17:57:17', 'dd-mm-yyyy hh24:mi:ss'), '321181001', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000034, '123', '13000000000', '123微信举报', '123', '20180321182852_1.jpeg', '20180321182852_1.jpeg', '0', '1', '201', '123', null, to_date('21-03-2018 18:29:08', 'dd-mm-yyyy hh24:mi:ss'), '321181005', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000035, null, null, 'null微信举报', null, null, null, '0', '1', null, null, null, to_date('21-03-2018 19:51:50', 'dd-mm-yyyy hh24:mi:ss'), null, '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000036, '333', '13000000000', '333微信举报', '123', '20180321195306_1.jpeg', '20180321195306_1.jpeg', '0', '1', '101', '123路', null, to_date('21-03-2018 19:54:42', 'dd-mm-yyyy hh24:mi:ss'), '321181001', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000002, '王五', '13000000000', '王五微信举报', '哈哈哈', 'media\2018\01\19\wx_20180119161550_1.jpeg', 'media\2018\01\19\wx_20180119161550_1.jpeg', '0', '1', '103', '测试测试', null, to_date('19-01-2018 16:15:57', 'dd-mm-yyyy hh24:mi:ss'), '321181006', '460513.61011838284', '3540563.631952132');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000071, '何泼', '13232323232', null, 'fef', null, null, '0', '1', '1', '阳关路', null, to_date('20-07-2018 15:17:42', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000072, '何泼', '13232323232', null, 'fef', null, null, '0', '1', '1', '阳关路', null, to_date('20-07-2018 15:18:16', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000091, '何泼', '13776777777', '何泼微信举报', '1', null, null, '0', '1', '101', '秦淮区五老村街道秦淮区机关办公大楼', null, to_date('26-07-2018 10:50:55', 'dd-mm-yyyy hh24:mi:ss'), null, '0', '0');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000092, '何泼', '13776778999', '何泼微信举报', '何泼', '20180726105354_1.jpeg', null, '0', '1', '101', '秦淮区五老村街道秦淮区机关办公大楼', null, to_date('26-07-2018 10:54:10', 'dd-mm-yyyy hh24:mi:ss'), null, '0', '0');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000093, '何泼', '13773999909', '何泼微信举报', 'testN1', '20180726110032_1.jpeg', '20180726110036_2.jpeg', '0', '1', '101', '秦淮区五老村街道秦淮区机关办公大楼', null, to_date('26-07-2018 11:01:28', 'dd-mm-yyyy hh24:mi:ss'), null, '118.7945', '32.039');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000094, '何泼', '13773999909', '何泼微信举报', 'testN2', '20180726110338_1.jpeg', 'media/2018/07/26/wx_20180726110948_2.jpeg', '0', '1', '101', '秦淮区五老村街道秦淮区机关办公大楼', null, to_date('26-07-2018 11:11:34', 'dd-mm-yyyy hh24:mi:ss'), null, '118.7945', '32.039');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000095, '何泼', '13773999909', '何泼微信举报', 'testN3', 'media/2018/07/26/wx_20180726111400_1.jpeg', 'media/2018/07/26/wx_20180726111403_2.jpeg', '0', '1', '101', '秦淮区五老村街道秦淮区机关办公大楼', null, to_date('26-07-2018 11:16:18', 'dd-mm-yyyy hh24:mi:ss'), null, '118.7945', '32.039');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000096, '何泼', '13773999909', '何泼微信举报', 'testN4', 'media/2018/07/26/wx_20180726111741_1.jpeg', 'media/2018/07/26/wx_20180726111403_2.jpeg', '0', '1', '101', '秦淮区五老村街道秦淮区机关办公大楼', null, to_date('26-07-2018 11:18:06', 'dd-mm-yyyy hh24:mi:ss'), null, '118.7945', '32.039');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000103, '何泼', '13777888888', '何泼微信举报', '9527', '2018/07/26/wx_20180726173340_1.jpeg', null, '0', '1', '102', '秦淮区五老村街道秦淮区机关办公大楼', 'oUV9_1s3LmHWSGDgmgGuRn_2_vFQ', to_date('26-07-2018 17:33:44', 'dd-mm-yyyy hh24:mi:ss'), null, '118.7945', '32.039');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000073, '何泼', '13666666666', null, '好的', null, null, '0', '1', '1', '的', null, to_date('20-07-2018 15:34:07', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000074, '何泼', '13666666666', null, '好的', null, null, '0', '1', '1', '的', null, to_date('20-07-2018 15:34:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000075, '何泼', '13232323232', null, '1', null, null, '0', '1', '1', '阳关路', null, to_date('20-07-2018 15:34:43', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000090, '何泼', '13232323232', null, 'test30', null, null, '0', '1', '1', '阳关路', null, to_date('23-07-2018 16:21:34', 'dd-mm-yyyy hh24:mi:ss'), null, null, null);
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000100, '你', '13265478965', '你微信举报', '测试', 'media/2018/07/26/wx_20180726162640_1.jpeg', null, '0', '1', '103', '秦淮区光华路街道紫光路', 'oUV9_1qgzAEBsAhAjvhjxnuJSiAw', to_date('26-07-2018 16:27:15', 'dd-mm-yyyy hh24:mi:ss'), null, '118.8724', '32.0157');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000101, '脸', '13256478965', '脸微信举报', '埂', 'media/2018/07/26/wx_20180726162814_1.jpeg', null, '0', '1', '102', '秦淮区光华路街道紫光路', 'oUV9_1qgzAEBsAhAjvhjxnuJSiAw', to_date('26-07-2018 16:28:26', 'dd-mm-yyyy hh24:mi:ss'), null, '118.8724', '32.0158');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000102, '何泼', '13778778781', '何泼微信举报', '永智路有人贴小广告', 'media/2018/07/26/wx_20180726172302_1.jpeg', null, '0', '1', '102', '秦淮区五老村街道秦淮区机关办公大楼', 'oUV9_1s3LmHWSGDgmgGuRn_2_vFQ', to_date('26-07-2018 17:23:08', 'dd-mm-yyyy hh24:mi:ss'), null, '118.7945', '32.039');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000104, '何泼', '13773998888', '何泼微信举报', '吾问无为谓无无无无', '/2018/07/26/wx_20180726173921_1.jpeg', null, '0', '1', '101', '秦淮区五老村街道秦淮区机关办公大楼', 'oUV9_1s3LmHWSGDgmgGuRn_2_vFQ', to_date('26-07-2018 17:39:25', 'dd-mm-yyyy hh24:mi:ss'), null, '118.7945', '32.039');
insert into ADMIN_TIP_MSG (str_tip_id, str_person_name, str_person_telphone, str_tip_title, str_tip_description, str_tip_pic1, str_tip_pic2, str_tip_state, str_tip_source, str_tip_type, comments, comm, createtime, districtid, x, y)
values (100000105, '何泼', '13777777777', '何泼微信举报', '我问问', '/2018/07/27/wx_20180727105411_1.jpeg', null, '0', '1', '101', '秦淮区五老村街道秦淮区机关办公大楼', 'oUV9_1s3LmHWSGDgmgGuRn_2_vFQ', to_date('27-07-2018 10:54:14', 'dd-mm-yyyy hh24:mi:ss'), null, '118.7945', '32.039');
commit;
prompt 84 records loaded
set feedback on
set define on
prompt Done.
