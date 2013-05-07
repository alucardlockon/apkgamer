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

#测试数据
insert into g_apk values (null,"",".png","",".apk");

insert into g_apk values (1,"anydo","anydo.png","anydo","anydo.apk");
insert into g_apk values (null,"百度输入法","baiduinput.png","百度输入法","baiduinput.apk");
insert into g_apk values (null,"Google Chrome","chrome.png","谷歌chrome浏览器 for android","chrome.apk");
insert into g_apk values (null,"Dropbox","dropbox.png","dropbox云存储","dropbox.apk");
insert into g_apk values (null,"多看","duokan.png","多看阅读","duokan.apk");
insert into g_apk values (null,"ES文件浏览器","es.png","ES文件浏览器","es.apk");
insert into g_apk values (null,"evernote","evernote.png","印象笔记云笔记","evernote.apk");
insert into g_apk values (null,"Gmail","gmail.png","Google Gmail","gmail.apk");
insert into g_apk values (null,"Google+","google+.png","Google +社交","google+.apk");
insert into g_apk values (null,"谷歌地球","google.png","谷歌地球","google.apk");
insert into g_apk values (null,"谷歌地图","googlemap.png","谷歌地图","googlemap.apk");
insert into g_apk values (null,"海鲜寿司街","haixianshousijie.png","开罗游戏","haixianshousijie.apk");
insert into g_apk values (null,"金山快盘","jskp.png","金山快盘云存储","jskp.apk");
insert into g_apk values (null,"开罗之星","karostar.png","开罗游戏","karostar.apk");
insert into g_apk values (null,"LBE安全大师","lbe.png","安全大师","lbe.apk");
insert into g_apk values (null,"Line连我","line.png","连我line","line.apk");
insert into g_apk values (null,"陌陌","momo.png","陌陌","momo.apk");
insert into g_apk values (null,"OperaMini浏览器","opermini.png","Operamimi","operamini.apk");
insert into g_apk values (null,"Path","path.png","Path社交","path.apk");
insert into g_apk values (null,"QQ2013","qq2013.png","QQ2013","qq2013.apk");
insert into g_apk values (null,"QQ音乐","qqmusic.png","QQ音乐","qqmusic.apk");
insert into g_apk values (null,"搜狐新闻","sohonews.png","搜狐新闻客户端","sohonews.apk");
insert into g_apk values (null,"淘宝","taobao.png","淘宝客户端","taobao.apk");
insert into g_apk values (null,"神庙逃亡2","templerun2.png","temple run2","templerun2.apk");
insert into g_apk values (null,"Whatsapp","whatsapp.png","whatsapp","whatsapp.apk");
insert into g_apk values (null,"网易云阅读","wangyireader.png","网易云阅读","wangyireader.apk");
insert into g_apk values (null,"新浪微博","weibo.png","新浪微博","weibo.apk");
insert into g_apk values (null,"优酷","youku.png","优酷客户端","youku.apk");
insert into g_apk values (null,"游戏发展国","youxifazhanguo.png","开罗游戏经典推荐","youxifazhanguo.apk");
insert into g_apk values (null,"支付宝","zhifubao.png","支付宝钱包","zhifubao.apk");
insert into g_apk values (null,"智器阅读","zhiyue.png","智阅","zhiyue.apk");
