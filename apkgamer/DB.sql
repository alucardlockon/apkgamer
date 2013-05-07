drop database if exists apkgamer;
create database apkgamer;
use apkgamer;

drop table if exists g_user;
create table g_user(
id int(8) primary key auto_increment,
name varchar(20) unique,
password varchar(20) not null,
email varchar(30) unique,
isverify int(1) not null,
registdate date not null,
lastlogin date
);

drop table if exists g_apk;
create table g_apk(
id int(8) primary key auto_increment,
title varchar(100) not null,
image varchar(100),
content varchar(1000),
link varchar(100)
);

drop table if exists g_comment;
create table g_comment(
id int(8) primary key auto_increment,
uid int(8) not null,
apkid int(8) not null,
content varchar(300),
rnum int(5),
senddate date
);

#��������
insert into g_apk values (null,"",".png","",".apk");

insert into g_apk values (1,"anydo","anydo.png","anydo","anydo.apk");
insert into g_apk values (null,"�ٶ����뷨","baiduinput.png","�ٶ����뷨","baiduinput.apk");
insert into g_apk values (null,"Google Chrome","chrome.png","�ȸ�chrome����� for android","chrome.apk");
insert into g_apk values (null,"Dropbox","dropbox.png","dropbox�ƴ洢","dropbox.apk");
insert into g_apk values (null,"�࿴","duokan.png","�࿴�Ķ�","duokan.apk");
insert into g_apk values (null,"ES�ļ������","es.png","ES�ļ������","es.apk");
insert into g_apk values (null,"evernote","evernote.png","ӡ��ʼ��Ʊʼ�","evernote.apk");
insert into g_apk values (null,"Gmail","gmail.png","Google Gmail","gmail.apk");
insert into g_apk values (null,"Google+","google+.png","Google +�罻","google+.apk");
insert into g_apk values (null,"�ȸ����","google.png","�ȸ����","google.apk");
insert into g_apk values (null,"�ȸ��ͼ","googlemap.png","�ȸ��ͼ","googlemap.apk");
insert into g_apk values (null,"������˾��","haixianshousijie.png","������Ϸ","haixianshousijie.apk");
insert into g_apk values (null,"��ɽ����","jskp.png","��ɽ�����ƴ洢","jskp.apk");
insert into g_apk values (null,"����֮��","karostar.png","������Ϸ","karostar.apk");
insert into g_apk values (null,"LBE��ȫ��ʦ","lbe.png","��ȫ��ʦ","lbe.apk");
insert into g_apk values (null,"Line����","line.png","����line","line.apk");
insert into g_apk values (null,"İİ","momo.png","İİ","momo.apk");
insert into g_apk values (null,"OperaMini�����","opermini.png","Operamimi","operamini.apk");
insert into g_apk values (null,"Path","path.png","Path�罻","path.apk");
insert into g_apk values (null,"QQ2013","qq2013.png","QQ2013","qq2013.apk");
insert into g_apk values (null,"QQ����","qqmusic.png","QQ����","qqmusic.apk");
insert into g_apk values (null,"�Ѻ�����","sohonews.png","�Ѻ����ſͻ���","sohonews.apk");
insert into g_apk values (null,"�Ա�","taobao.png","�Ա��ͻ���","taobao.apk");
insert into g_apk values (null,"��������2","templerun2.png","temple run2","templerun2.apk");
insert into g_apk values (null,"Whatsapp","whatsapp.png","whatsapp","whatsapp.apk");
insert into g_apk values (null,"�������Ķ�","wangyireader.png","�������Ķ�","wangyireader.apk");
insert into g_apk values (null,"����΢��","weibo.png","����΢��","weibo.apk");
insert into g_apk values (null,"�ſ�","youku.png","�ſ�ͻ���","youku.apk");
insert into g_apk values (null,"��Ϸ��չ��","youxifazhanguo.png","������Ϸ�����Ƽ�","youxifazhanguo.apk");
insert into g_apk values (null,"֧����","zhifubao.png","֧����Ǯ��","zhifubao.apk");
insert into g_apk values (null,"�����Ķ�","zhiyue.png","����","zhiyue.apk");
