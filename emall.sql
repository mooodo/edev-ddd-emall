SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_account
-- ----------------------------
DROP TABLE IF EXISTS `t_account`;
CREATE TABLE `t_account` (
  `id` int(20) NOT NULL,
  `balance` decimal(20,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_account
-- ----------------------------
INSERT INTO `t_account` VALUES ('10001', '276000.00', '2022-03-31 02:51:49', '2024-09-29 13:23:21');
INSERT INTO `t_account` VALUES ('10002', '100000.00', '2022-03-31 02:51:49', null);
INSERT INTO `t_account` VALUES ('10003', '100000.00', '2022-03-31 02:51:49', null);
INSERT INTO `t_account` VALUES ('10004', '100000.00', '2022-03-31 02:51:49', null);
INSERT INTO `t_account` VALUES ('10005', '100000.00', '2022-03-31 02:51:49', null);
INSERT INTO `t_account` VALUES ('10006', '100000.00', '2022-03-31 02:51:49', null);
INSERT INTO `t_account` VALUES ('10007', '100000.00', '2022-03-31 02:51:49', null);
INSERT INTO `t_account` VALUES ('10008', '100000.00', '2022-03-31 02:51:49', null);
INSERT INTO `t_account` VALUES ('10009', '846184.00', '2022-03-31 02:51:49', '2024-04-23 11:51:43');
INSERT INTO `t_account` VALUES ('10012', '100000.00', '2022-03-31 02:51:49', null);
INSERT INTO `t_account` VALUES ('10013', '100000.00', '2022-03-31 02:51:49', null);
INSERT INTO `t_account` VALUES ('10014', '100000.00', '2022-03-31 02:51:49', null);
INSERT INTO `t_account` VALUES ('10015', '100000.00', '2022-03-31 02:51:49', null);

-- ----------------------------
-- Table structure for t_address
-- ----------------------------
DROP TABLE IF EXISTS `t_address`;
CREATE TABLE `t_address` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `customer_id` int(20) NOT NULL,
  `country_id` int(4) DEFAULT NULL,
  `province_id` int(6) DEFAULT NULL,
  `city_id` int(6) DEFAULT NULL,
  `district_id` int(6) DEFAULT NULL,
  `detail_address` text NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `is_default` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001501 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_address
-- ----------------------------
INSERT INTO `t_address` VALUES ('1000100', '10001', '1000', '420000', '420100', '420111', '珞瑜路726号', '13300224466', '0');
INSERT INTO `t_address` VALUES ('1000101', '10001', '1000', '420000', '421000', '421002', '北京西路410号', '13388990123', '0');
INSERT INTO `t_address` VALUES ('1000200', '10002', '1000', '370000', '370100', '370102', '山大路202号', '13422584349', '0');
INSERT INTO `t_address` VALUES ('1000300', '10003', '1000', '110000', '110100', '110105', '朝阳公园西路9号碧湖居', null, '0');
INSERT INTO `t_address` VALUES ('1000400', '10004', '1000', '110000', '110100', '110108', '东钓鱼台家园', null, '0');
INSERT INTO `t_address` VALUES ('1000500', '10005', '1000', '440000', '440100', '440104', '广州圣心大教堂', null, '1');
INSERT INTO `t_address` VALUES ('1000501', '10005', '1000', '440000', '440100', '440104', '爱群大酒店', null, '0');
INSERT INTO `t_address` VALUES ('1000600', '10006', '1000', '440000', '440100', '440105', '华州街道办事处', null, '0');
INSERT INTO `t_address` VALUES ('1000700', '10007', '1000', '440000', '440300', '440304', '广电金融中心', null, '0');
INSERT INTO `t_address` VALUES ('1000800', '10008', '1000', '440000', '440300', '440305', '深圳湾出镜厅', null, '0');
INSERT INTO `t_address` VALUES ('1000900', '10009', '1000', '510000', '510100', '510105', '宽窄巷子', null, '0');
INSERT INTO `t_address` VALUES ('1001100', '10011', '1000', '500000', '500100', '500106', '重庆师范大学', null, '1');
INSERT INTO `t_address` VALUES ('1001101', '10011', '1000', '500000', '500100', '500103', '解放碑商业大厦', null, '0');
INSERT INTO `t_address` VALUES ('1001200', '10012', '1000', '310000', '310100', '310115', '陆家嘴中心绿地', null, '0');
INSERT INTO `t_address` VALUES ('1001201', '10012', '1000', '310000', '310100', '310109', '国际航运服务大厦', null, '1');
INSERT INTO `t_address` VALUES ('1001300', '10013', '1000', '330000', '330100', '330106', '莫干山路207号', null, '0');
INSERT INTO `t_address` VALUES ('1001400', '10014', '1000', '360000', '360100', '360103', '象湖南湿地公园', null, '0');
INSERT INTO `t_address` VALUES ('1001500', '10015', '1000', '650000', '650100', '650103', '宝山路17号', null, '0');

-- ----------------------------
-- Table structure for t_authority
-- ----------------------------
DROP TABLE IF EXISTS `t_authority`;
CREATE TABLE `t_authority` (
  `id` int(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT 'T',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_authority
-- ----------------------------
INSERT INTO `t_authority` VALUES ('998', 'test1', 'Just for test');
INSERT INTO `t_authority` VALUES ('999', 'test', 'Just for test');
INSERT INTO `t_authority` VALUES ('50001', 'admin', 'Administrator');
INSERT INTO `t_authority` VALUES ('50002', 'customer', 'A customer');
INSERT INTO `t_authority` VALUES ('50003', 'staff', 'A staff worked for a supplier');

-- ----------------------------
-- Table structure for t_brand
-- ----------------------------
DROP TABLE IF EXISTS `t_brand`;
CREATE TABLE `t_brand` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_brand
-- ----------------------------
INSERT INTO `t_brand` VALUES ('1000', 'Apple', null);
INSERT INTO `t_brand` VALUES ('1001', 'Microsoft', null);
INSERT INTO `t_brand` VALUES ('1002', 'Kindle', null);
INSERT INTO `t_brand` VALUES ('1003', 'HUAWEI', null);
INSERT INTO `t_brand` VALUES ('1004', 'SIEMENS', null);
INSERT INTO `t_brand` VALUES ('1005', '荣耀', null);
INSERT INTO `t_brand` VALUES ('2000', '异步图书', null);
INSERT INTO `t_brand` VALUES ('2001', '博文视点', null);
INSERT INTO `t_brand` VALUES ('3000', '万利达', null);

-- ----------------------------
-- Table structure for t_city
-- ----------------------------
DROP TABLE IF EXISTS `t_city`;
CREATE TABLE `t_city` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `province_id` int(6) DEFAULT NULL,
  `city_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=654301 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_city
-- ----------------------------
INSERT INTO `t_city` VALUES ('130100', '石家庄市', '130000', '1301');
INSERT INTO `t_city` VALUES ('130200', '唐山市', '130000', '1302');
INSERT INTO `t_city` VALUES ('130300', '秦皇岛市', '130000', '1303');
INSERT INTO `t_city` VALUES ('130400', '邯郸市', '130000', '1304');
INSERT INTO `t_city` VALUES ('130500', '邢台市', '130000', '1305');
INSERT INTO `t_city` VALUES ('130600', '保定市', '130000', '1306');
INSERT INTO `t_city` VALUES ('130700', '张家口市', '130000', '1307');
INSERT INTO `t_city` VALUES ('130800', '承德市', '130000', '1308');
INSERT INTO `t_city` VALUES ('130900', '沧州市', '130000', '1309');
INSERT INTO `t_city` VALUES ('131000', '廊坊市', '130000', '1310');
INSERT INTO `t_city` VALUES ('131100', '衡水市', '130000', '1311');
INSERT INTO `t_city` VALUES ('140100', '太原市', '140000', '1401');
INSERT INTO `t_city` VALUES ('140200', '大同市', '140000', '1402');
INSERT INTO `t_city` VALUES ('140300', '阳泉市', '140000', '1403');
INSERT INTO `t_city` VALUES ('140400', '长治市', '140000', '1404');
INSERT INTO `t_city` VALUES ('140500', '晋城市', '140000', '1405');
INSERT INTO `t_city` VALUES ('140600', '朔州市', '140000', '1406');
INSERT INTO `t_city` VALUES ('140700', '晋中市', '140000', '1407');
INSERT INTO `t_city` VALUES ('140800', '运城市', '140000', '1408');
INSERT INTO `t_city` VALUES ('140900', '忻州市', '140000', '1409');
INSERT INTO `t_city` VALUES ('141000', '临汾市', '140000', '1410');
INSERT INTO `t_city` VALUES ('141100', '吕梁市', '140000', '1411');
INSERT INTO `t_city` VALUES ('150100', '呼和浩特市', '150000', '1501');
INSERT INTO `t_city` VALUES ('150200', '包头市', '150000', '1502');
INSERT INTO `t_city` VALUES ('150300', '乌海市', '150000', '1503');
INSERT INTO `t_city` VALUES ('150400', '赤峰市', '150000', '1504');
INSERT INTO `t_city` VALUES ('150500', '通辽市', '150000', '1505');
INSERT INTO `t_city` VALUES ('150600', '鄂尔多斯市', '150000', '1506');
INSERT INTO `t_city` VALUES ('150700', '呼伦贝尔市', '150000', '1507');
INSERT INTO `t_city` VALUES ('150800', '巴彦淖尔市', '150000', '1508');
INSERT INTO `t_city` VALUES ('150900', '乌兰察布市', '150000', '1509');
INSERT INTO `t_city` VALUES ('152200', '兴安盟', '150000', '1522');
INSERT INTO `t_city` VALUES ('152500', '锡林郭勒盟', '150000', '1525');
INSERT INTO `t_city` VALUES ('152900', '阿拉善盟', '150000', '1529');
INSERT INTO `t_city` VALUES ('210100', '沈阳市', '210000', '2101');
INSERT INTO `t_city` VALUES ('210200', '大连市', '210000', '2102');
INSERT INTO `t_city` VALUES ('210300', '鞍山市', '210000', '2103');
INSERT INTO `t_city` VALUES ('210400', '抚顺市', '210000', '2104');
INSERT INTO `t_city` VALUES ('210500', '本溪市', '210000', '2105');
INSERT INTO `t_city` VALUES ('210600', '丹东市', '210000', '2106');
INSERT INTO `t_city` VALUES ('210700', '锦州市', '210000', '2107');
INSERT INTO `t_city` VALUES ('210800', '营口市', '210000', '2108');
INSERT INTO `t_city` VALUES ('210900', '阜新市', '210000', '2109');
INSERT INTO `t_city` VALUES ('211000', '辽阳市', '210000', '2110');
INSERT INTO `t_city` VALUES ('211100', '盘锦市', '210000', '2111');
INSERT INTO `t_city` VALUES ('211200', '铁岭市', '210000', '2112');
INSERT INTO `t_city` VALUES ('211300', '朝阳市', '210000', '2113');
INSERT INTO `t_city` VALUES ('211400', '葫芦岛市', '210000', '2114');
INSERT INTO `t_city` VALUES ('220100', '长春市', '220000', '2201');
INSERT INTO `t_city` VALUES ('220200', '吉林市', '220000', '2202');
INSERT INTO `t_city` VALUES ('220300', '四平市', '220000', '2203');
INSERT INTO `t_city` VALUES ('220400', '辽源市', '220000', '2204');
INSERT INTO `t_city` VALUES ('220500', '通化市', '220000', '2205');
INSERT INTO `t_city` VALUES ('220600', '白山市', '220000', '2206');
INSERT INTO `t_city` VALUES ('220700', '松原市', '220000', '2207');
INSERT INTO `t_city` VALUES ('220800', '白城市', '220000', '2208');
INSERT INTO `t_city` VALUES ('222400', '延边朝鲜族自治州', '220000', '2224');
INSERT INTO `t_city` VALUES ('230100', '哈尔滨市', '230000', '2301');
INSERT INTO `t_city` VALUES ('230200', '齐齐哈尔市', '230000', '2302');
INSERT INTO `t_city` VALUES ('230300', '鸡西市', '230000', '2303');
INSERT INTO `t_city` VALUES ('230400', '鹤岗市', '230000', '2304');
INSERT INTO `t_city` VALUES ('230500', '双鸭山市', '230000', '2305');
INSERT INTO `t_city` VALUES ('230600', '大庆市', '230000', '2306');
INSERT INTO `t_city` VALUES ('230700', '伊春市', '230000', '2307');
INSERT INTO `t_city` VALUES ('230800', '佳木斯市', '230000', '2308');
INSERT INTO `t_city` VALUES ('230900', '七台河市', '230000', '2309');
INSERT INTO `t_city` VALUES ('231000', '牡丹江市', '230000', '2310');
INSERT INTO `t_city` VALUES ('231100', '黑河市', '230000', '2311');
INSERT INTO `t_city` VALUES ('231200', '绥化市', '230000', '2312');
INSERT INTO `t_city` VALUES ('232700', '大兴安岭地区', '230000', '2327');
INSERT INTO `t_city` VALUES ('320100', '南京市', '320000', '3201');
INSERT INTO `t_city` VALUES ('320200', '无锡市', '320000', '3202');
INSERT INTO `t_city` VALUES ('320300', '徐州市', '320000', '3203');
INSERT INTO `t_city` VALUES ('320400', '常州市', '320000', '3204');
INSERT INTO `t_city` VALUES ('320500', '苏州市', '320000', '3205');
INSERT INTO `t_city` VALUES ('320600', '南通市', '320000', '3206');
INSERT INTO `t_city` VALUES ('320700', '连云港市', '320000', '3207');
INSERT INTO `t_city` VALUES ('320800', '淮安市', '320000', '3208');
INSERT INTO `t_city` VALUES ('320900', '盐城市', '320000', '3209');
INSERT INTO `t_city` VALUES ('321000', '扬州市', '320000', '3210');
INSERT INTO `t_city` VALUES ('321100', '镇江市', '320000', '3211');
INSERT INTO `t_city` VALUES ('321200', '泰州市', '320000', '3212');
INSERT INTO `t_city` VALUES ('321300', '宿迁市', '320000', '3213');
INSERT INTO `t_city` VALUES ('330100', '杭州市', '330000', '3301');
INSERT INTO `t_city` VALUES ('330200', '宁波市', '330000', '3302');
INSERT INTO `t_city` VALUES ('330300', '温州市', '330000', '3303');
INSERT INTO `t_city` VALUES ('330400', '嘉兴市', '330000', '3304');
INSERT INTO `t_city` VALUES ('330500', '湖州市', '330000', '3305');
INSERT INTO `t_city` VALUES ('330600', '绍兴市', '330000', '3306');
INSERT INTO `t_city` VALUES ('330700', '金华市', '330000', '3307');
INSERT INTO `t_city` VALUES ('330800', '衢州市', '330000', '3308');
INSERT INTO `t_city` VALUES ('330900', '舟山市', '330000', '3309');
INSERT INTO `t_city` VALUES ('331000', '台州市', '330000', '3310');
INSERT INTO `t_city` VALUES ('331100', '丽水市', '330000', '3311');
INSERT INTO `t_city` VALUES ('340100', '合肥市', '340000', '3401');
INSERT INTO `t_city` VALUES ('340200', '芜湖市', '340000', '3402');
INSERT INTO `t_city` VALUES ('340300', '蚌埠市', '340000', '3403');
INSERT INTO `t_city` VALUES ('340400', '淮南市', '340000', '3404');
INSERT INTO `t_city` VALUES ('340500', '马鞍山市', '340000', '3405');
INSERT INTO `t_city` VALUES ('340600', '淮北市', '340000', '3406');
INSERT INTO `t_city` VALUES ('340700', '铜陵市', '340000', '3407');
INSERT INTO `t_city` VALUES ('340800', '安庆市', '340000', '3408');
INSERT INTO `t_city` VALUES ('341000', '黄山市', '340000', '3410');
INSERT INTO `t_city` VALUES ('341100', '滁州市', '340000', '3411');
INSERT INTO `t_city` VALUES ('341200', '阜阳市', '340000', '3412');
INSERT INTO `t_city` VALUES ('341300', '宿州市', '340000', '3413');
INSERT INTO `t_city` VALUES ('341500', '六安市', '340000', '3415');
INSERT INTO `t_city` VALUES ('341600', '亳州市', '340000', '3416');
INSERT INTO `t_city` VALUES ('341700', '池州市', '340000', '3417');
INSERT INTO `t_city` VALUES ('341800', '宣城市', '340000', '3418');
INSERT INTO `t_city` VALUES ('350100', '福州市', '350000', '3501');
INSERT INTO `t_city` VALUES ('350200', '厦门市', '350000', '3502');
INSERT INTO `t_city` VALUES ('350300', '莆田市', '350000', '3503');
INSERT INTO `t_city` VALUES ('350400', '三明市', '350000', '3504');
INSERT INTO `t_city` VALUES ('350500', '泉州市', '350000', '3505');
INSERT INTO `t_city` VALUES ('350600', '漳州市', '350000', '3506');
INSERT INTO `t_city` VALUES ('350700', '南平市', '350000', '3507');
INSERT INTO `t_city` VALUES ('350800', '龙岩市', '350000', '3508');
INSERT INTO `t_city` VALUES ('350900', '宁德市', '350000', '3509');
INSERT INTO `t_city` VALUES ('360100', '南昌市', '360000', '3601');
INSERT INTO `t_city` VALUES ('360200', '景德镇市', '360000', '3602');
INSERT INTO `t_city` VALUES ('360300', '萍乡市', '360000', '3603');
INSERT INTO `t_city` VALUES ('360400', '九江市', '360000', '3604');
INSERT INTO `t_city` VALUES ('360500', '新余市', '360000', '3605');
INSERT INTO `t_city` VALUES ('360600', '鹰潭市', '360000', '3606');
INSERT INTO `t_city` VALUES ('360700', '赣州市', '360000', '3607');
INSERT INTO `t_city` VALUES ('360800', '吉安市', '360000', '3608');
INSERT INTO `t_city` VALUES ('360900', '宜春市', '360000', '3609');
INSERT INTO `t_city` VALUES ('361000', '抚州市', '360000', '3610');
INSERT INTO `t_city` VALUES ('361100', '上饶市', '360000', '3611');
INSERT INTO `t_city` VALUES ('370100', '济南市', '370000', '3701');
INSERT INTO `t_city` VALUES ('370200', '青岛市', '370000', '3702');
INSERT INTO `t_city` VALUES ('370300', '淄博市', '370000', '3703');
INSERT INTO `t_city` VALUES ('370400', '枣庄市', '370000', '3704');
INSERT INTO `t_city` VALUES ('370500', '东营市', '370000', '3705');
INSERT INTO `t_city` VALUES ('370600', '烟台市', '370000', '3706');
INSERT INTO `t_city` VALUES ('370700', '潍坊市', '370000', '3707');
INSERT INTO `t_city` VALUES ('370800', '济宁市', '370000', '3708');
INSERT INTO `t_city` VALUES ('370900', '泰安市', '370000', '3709');
INSERT INTO `t_city` VALUES ('371000', '威海市', '370000', '3710');
INSERT INTO `t_city` VALUES ('371100', '日照市', '370000', '3711');
INSERT INTO `t_city` VALUES ('371300', '临沂市', '370000', '3713');
INSERT INTO `t_city` VALUES ('371400', '德州市', '370000', '3714');
INSERT INTO `t_city` VALUES ('371500', '聊城市', '370000', '3715');
INSERT INTO `t_city` VALUES ('371600', '滨州市', '370000', '3716');
INSERT INTO `t_city` VALUES ('371700', '菏泽市', '370000', '3717');
INSERT INTO `t_city` VALUES ('410100', '郑州市', '410000', '4101');
INSERT INTO `t_city` VALUES ('410200', '开封市', '410000', '4102');
INSERT INTO `t_city` VALUES ('410300', '洛阳市', '410000', '4103');
INSERT INTO `t_city` VALUES ('410400', '平顶山市', '410000', '4104');
INSERT INTO `t_city` VALUES ('410500', '安阳市', '410000', '4105');
INSERT INTO `t_city` VALUES ('410600', '鹤壁市', '410000', '4106');
INSERT INTO `t_city` VALUES ('410700', '新乡市', '410000', '4107');
INSERT INTO `t_city` VALUES ('410800', '焦作市', '410000', '4108');
INSERT INTO `t_city` VALUES ('410900', '濮阳市', '410000', '4109');
INSERT INTO `t_city` VALUES ('411000', '许昌市', '410000', '4110');
INSERT INTO `t_city` VALUES ('411100', '漯河市', '410000', '4111');
INSERT INTO `t_city` VALUES ('411200', '三门峡市', '410000', '4112');
INSERT INTO `t_city` VALUES ('411300', '南阳市', '410000', '4113');
INSERT INTO `t_city` VALUES ('411400', '商丘市', '410000', '4114');
INSERT INTO `t_city` VALUES ('411500', '信阳市', '410000', '4115');
INSERT INTO `t_city` VALUES ('411600', '周口市', '410000', '4116');
INSERT INTO `t_city` VALUES ('411700', '驻马店市', '410000', '4117');
INSERT INTO `t_city` VALUES ('420100', '武汉市', '420000', '4201');
INSERT INTO `t_city` VALUES ('420200', '黄石市', '420000', '4202');
INSERT INTO `t_city` VALUES ('420300', '十堰市', '420000', '4203');
INSERT INTO `t_city` VALUES ('420500', '宜昌市', '420000', '4205');
INSERT INTO `t_city` VALUES ('420600', '襄阳市', '420000', '4206');
INSERT INTO `t_city` VALUES ('420700', '鄂州市', '420000', '4207');
INSERT INTO `t_city` VALUES ('420800', '荆门市', '420000', '4208');
INSERT INTO `t_city` VALUES ('420900', '孝感市', '420000', '4209');
INSERT INTO `t_city` VALUES ('421000', '荆州市', '420000', '4210');
INSERT INTO `t_city` VALUES ('421100', '黄冈市', '420000', '4211');
INSERT INTO `t_city` VALUES ('421200', '咸宁市', '420000', '4212');
INSERT INTO `t_city` VALUES ('421300', '随州市', '420000', '4213');
INSERT INTO `t_city` VALUES ('422800', '恩施土家族苗族自治州', '420000', '4228');
INSERT INTO `t_city` VALUES ('430100', '长沙市', '430000', '4301');
INSERT INTO `t_city` VALUES ('430200', '株洲市', '430000', '4302');
INSERT INTO `t_city` VALUES ('430300', '湘潭市', '430000', '4303');
INSERT INTO `t_city` VALUES ('430400', '衡阳市', '430000', '4304');
INSERT INTO `t_city` VALUES ('430500', '邵阳市', '430000', '4305');
INSERT INTO `t_city` VALUES ('430600', '岳阳市', '430000', '4306');
INSERT INTO `t_city` VALUES ('430700', '常德市', '430000', '4307');
INSERT INTO `t_city` VALUES ('430800', '张家界市', '430000', '4308');
INSERT INTO `t_city` VALUES ('430900', '益阳市', '430000', '4309');
INSERT INTO `t_city` VALUES ('431000', '郴州市', '430000', '4310');
INSERT INTO `t_city` VALUES ('431100', '永州市', '430000', '4311');
INSERT INTO `t_city` VALUES ('431200', '怀化市', '430000', '4312');
INSERT INTO `t_city` VALUES ('431300', '娄底市', '430000', '4313');
INSERT INTO `t_city` VALUES ('433100', '湘西土家族苗族自治州', '430000', '4331');
INSERT INTO `t_city` VALUES ('440100', '广州市', '440000', '4401');
INSERT INTO `t_city` VALUES ('440200', '韶关市', '440000', '4402');
INSERT INTO `t_city` VALUES ('440300', '深圳市', '440000', '4403');
INSERT INTO `t_city` VALUES ('440400', '珠海市', '440000', '4404');
INSERT INTO `t_city` VALUES ('440500', '汕头市', '440000', '4405');
INSERT INTO `t_city` VALUES ('440600', '佛山市', '440000', '4406');
INSERT INTO `t_city` VALUES ('440700', '江门市', '440000', '4407');
INSERT INTO `t_city` VALUES ('440800', '湛江市', '440000', '4408');
INSERT INTO `t_city` VALUES ('440900', '茂名市', '440000', '4409');
INSERT INTO `t_city` VALUES ('441200', '肇庆市', '440000', '4412');
INSERT INTO `t_city` VALUES ('441300', '惠州市', '440000', '4413');
INSERT INTO `t_city` VALUES ('441400', '梅州市', '440000', '4414');
INSERT INTO `t_city` VALUES ('441500', '汕尾市', '440000', '4415');
INSERT INTO `t_city` VALUES ('441600', '河源市', '440000', '4416');
INSERT INTO `t_city` VALUES ('441700', '阳江市', '440000', '4417');
INSERT INTO `t_city` VALUES ('441800', '清远市', '440000', '4418');
INSERT INTO `t_city` VALUES ('441900', '东莞市', '440000', '4419');
INSERT INTO `t_city` VALUES ('442000', '中山市', '440000', '4420');
INSERT INTO `t_city` VALUES ('445100', '潮州市', '440000', '4451');
INSERT INTO `t_city` VALUES ('445200', '揭阳市', '440000', '4452');
INSERT INTO `t_city` VALUES ('445300', '云浮市', '440000', '4453');
INSERT INTO `t_city` VALUES ('450100', '南宁市', '450000', '4501');
INSERT INTO `t_city` VALUES ('450200', '柳州市', '450000', '4502');
INSERT INTO `t_city` VALUES ('450300', '桂林市', '450000', '4503');
INSERT INTO `t_city` VALUES ('450400', '梧州市', '450000', '4504');
INSERT INTO `t_city` VALUES ('450500', '北海市', '450000', '4505');
INSERT INTO `t_city` VALUES ('450600', '防城港市', '450000', '4506');
INSERT INTO `t_city` VALUES ('450700', '钦州市', '450000', '4507');
INSERT INTO `t_city` VALUES ('450800', '贵港市', '450000', '4508');
INSERT INTO `t_city` VALUES ('450900', '玉林市', '450000', '4509');
INSERT INTO `t_city` VALUES ('451000', '百色市', '450000', '4510');
INSERT INTO `t_city` VALUES ('451100', '贺州市', '450000', '4511');
INSERT INTO `t_city` VALUES ('451200', '河池市', '450000', '4512');
INSERT INTO `t_city` VALUES ('451300', '来宾市', '450000', '4513');
INSERT INTO `t_city` VALUES ('451400', '崇左市', '450000', '4514');
INSERT INTO `t_city` VALUES ('460100', '海口市', '460000', '4601');
INSERT INTO `t_city` VALUES ('460200', '三亚市', '460000', '4602');
INSERT INTO `t_city` VALUES ('460300', '三沙市', '460000', '4603');
INSERT INTO `t_city` VALUES ('460400', '儋州市', '460000', '4604');
INSERT INTO `t_city` VALUES ('510100', '成都市', '510000', '5101');
INSERT INTO `t_city` VALUES ('510300', '自贡市', '510000', '5103');
INSERT INTO `t_city` VALUES ('510400', '攀枝花市', '510000', '5104');
INSERT INTO `t_city` VALUES ('510500', '泸州市', '510000', '5105');
INSERT INTO `t_city` VALUES ('510600', '德阳市', '510000', '5106');
INSERT INTO `t_city` VALUES ('510700', '绵阳市', '510000', '5107');
INSERT INTO `t_city` VALUES ('510800', '广元市', '510000', '5108');
INSERT INTO `t_city` VALUES ('510900', '遂宁市', '510000', '5109');
INSERT INTO `t_city` VALUES ('511000', '内江市', '510000', '5110');
INSERT INTO `t_city` VALUES ('511100', '乐山市', '510000', '5111');
INSERT INTO `t_city` VALUES ('511300', '南充市', '510000', '5113');
INSERT INTO `t_city` VALUES ('511400', '眉山市', '510000', '5114');
INSERT INTO `t_city` VALUES ('511500', '宜宾市', '510000', '5115');
INSERT INTO `t_city` VALUES ('511600', '广安市', '510000', '5116');
INSERT INTO `t_city` VALUES ('511700', '达州市', '510000', '5117');
INSERT INTO `t_city` VALUES ('511800', '雅安市', '510000', '5118');
INSERT INTO `t_city` VALUES ('511900', '巴中市', '510000', '5119');
INSERT INTO `t_city` VALUES ('512000', '资阳市', '510000', '5120');
INSERT INTO `t_city` VALUES ('513200', '阿坝藏族羌族自治州', '510000', '5132');
INSERT INTO `t_city` VALUES ('513300', '甘孜藏族自治州', '510000', '5133');
INSERT INTO `t_city` VALUES ('513400', '凉山彝族自治州', '510000', '5134');
INSERT INTO `t_city` VALUES ('520100', '贵阳市', '520000', '5201');
INSERT INTO `t_city` VALUES ('520200', '六盘水市', '520000', '5202');
INSERT INTO `t_city` VALUES ('520300', '遵义市', '520000', '5203');
INSERT INTO `t_city` VALUES ('520400', '安顺市', '520000', '5204');
INSERT INTO `t_city` VALUES ('520500', '毕节市', '520000', '5205');
INSERT INTO `t_city` VALUES ('520600', '铜仁市', '520000', '5206');
INSERT INTO `t_city` VALUES ('522300', '黔西南布依族苗族自治州', '520000', '5223');
INSERT INTO `t_city` VALUES ('522600', '黔东南苗族侗族自治州', '520000', '5226');
INSERT INTO `t_city` VALUES ('522700', '黔南布依族苗族自治州', '520000', '5227');
INSERT INTO `t_city` VALUES ('530100', '昆明市', '530000', '5301');
INSERT INTO `t_city` VALUES ('530300', '曲靖市', '530000', '5303');
INSERT INTO `t_city` VALUES ('530400', '玉溪市', '530000', '5304');
INSERT INTO `t_city` VALUES ('530500', '保山市', '530000', '5305');
INSERT INTO `t_city` VALUES ('530600', '昭通市', '530000', '5306');
INSERT INTO `t_city` VALUES ('530700', '丽江市', '530000', '5307');
INSERT INTO `t_city` VALUES ('530800', '普洱市', '530000', '5308');
INSERT INTO `t_city` VALUES ('530900', '临沧市', '530000', '5309');
INSERT INTO `t_city` VALUES ('532300', '楚雄彝族自治州', '530000', '5323');
INSERT INTO `t_city` VALUES ('532500', '红河哈尼族彝族自治州', '530000', '5325');
INSERT INTO `t_city` VALUES ('532600', '文山壮族苗族自治州', '530000', '5326');
INSERT INTO `t_city` VALUES ('532800', '西双版纳傣族自治州', '530000', '5328');
INSERT INTO `t_city` VALUES ('532900', '大理白族自治州', '530000', '5329');
INSERT INTO `t_city` VALUES ('533100', '德宏傣族景颇族自治州', '530000', '5331');
INSERT INTO `t_city` VALUES ('533300', '怒江傈僳族自治州', '530000', '5333');
INSERT INTO `t_city` VALUES ('533400', '迪庆藏族自治州', '530000', '5334');
INSERT INTO `t_city` VALUES ('540100', '拉萨市', '540000', '5401');
INSERT INTO `t_city` VALUES ('540200', '日喀则市', '540000', '5402');
INSERT INTO `t_city` VALUES ('540300', '昌都市', '540000', '5403');
INSERT INTO `t_city` VALUES ('540400', '林芝市', '540000', '5404');
INSERT INTO `t_city` VALUES ('540500', '山南市', '540000', '5405');
INSERT INTO `t_city` VALUES ('540600', '那曲市', '540000', '5406');
INSERT INTO `t_city` VALUES ('542500', '阿里地区', '540000', '5425');
INSERT INTO `t_city` VALUES ('610100', '西安市', '610000', '6101');
INSERT INTO `t_city` VALUES ('610200', '铜川市', '610000', '6102');
INSERT INTO `t_city` VALUES ('610300', '宝鸡市', '610000', '6103');
INSERT INTO `t_city` VALUES ('610400', '咸阳市', '610000', '6104');
INSERT INTO `t_city` VALUES ('610500', '渭南市', '610000', '6105');
INSERT INTO `t_city` VALUES ('610600', '延安市', '610000', '6106');
INSERT INTO `t_city` VALUES ('610700', '汉中市', '610000', '6107');
INSERT INTO `t_city` VALUES ('610800', '榆林市', '610000', '6108');
INSERT INTO `t_city` VALUES ('610900', '安康市', '610000', '6109');
INSERT INTO `t_city` VALUES ('611000', '商洛市', '610000', '6110');
INSERT INTO `t_city` VALUES ('620100', '兰州市', '620000', '6201');
INSERT INTO `t_city` VALUES ('620200', '嘉峪关市', '620000', '6202');
INSERT INTO `t_city` VALUES ('620300', '金昌市', '620000', '6203');
INSERT INTO `t_city` VALUES ('620400', '白银市', '620000', '6204');
INSERT INTO `t_city` VALUES ('620500', '天水市', '620000', '6205');
INSERT INTO `t_city` VALUES ('620600', '武威市', '620000', '6206');
INSERT INTO `t_city` VALUES ('620700', '张掖市', '620000', '6207');
INSERT INTO `t_city` VALUES ('620800', '平凉市', '620000', '6208');
INSERT INTO `t_city` VALUES ('620900', '酒泉市', '620000', '6209');
INSERT INTO `t_city` VALUES ('621000', '庆阳市', '620000', '6210');
INSERT INTO `t_city` VALUES ('621100', '定西市', '620000', '6211');
INSERT INTO `t_city` VALUES ('621200', '陇南市', '620000', '6212');
INSERT INTO `t_city` VALUES ('622900', '临夏回族自治州', '620000', '6229');
INSERT INTO `t_city` VALUES ('623000', '甘南藏族自治州', '620000', '6230');
INSERT INTO `t_city` VALUES ('630100', '西宁市', '630000', '6301');
INSERT INTO `t_city` VALUES ('630200', '海东市', '630000', '6302');
INSERT INTO `t_city` VALUES ('632200', '海北藏族自治州', '630000', '6322');
INSERT INTO `t_city` VALUES ('632300', '黄南藏族自治州', '630000', '6323');
INSERT INTO `t_city` VALUES ('632500', '海南藏族自治州', '630000', '6325');
INSERT INTO `t_city` VALUES ('632600', '果洛藏族自治州', '630000', '6326');
INSERT INTO `t_city` VALUES ('632700', '玉树藏族自治州', '630000', '6327');
INSERT INTO `t_city` VALUES ('632800', '海西蒙古族藏族自治州', '630000', '6328');
INSERT INTO `t_city` VALUES ('640100', '银川市', '640000', '6401');
INSERT INTO `t_city` VALUES ('640200', '石嘴山市', '640000', '6402');
INSERT INTO `t_city` VALUES ('640300', '吴忠市', '640000', '6403');
INSERT INTO `t_city` VALUES ('640400', '固原市', '640000', '6404');
INSERT INTO `t_city` VALUES ('640500', '中卫市', '640000', '6405');
INSERT INTO `t_city` VALUES ('650100', '乌鲁木齐市', '650000', '6501');
INSERT INTO `t_city` VALUES ('650200', '克拉玛依市', '650000', '6502');
INSERT INTO `t_city` VALUES ('650400', '吐鲁番市', '650000', '6504');
INSERT INTO `t_city` VALUES ('650500', '哈密市', '650000', '6505');
INSERT INTO `t_city` VALUES ('652300', '昌吉回族自治州', '650000', '6523');
INSERT INTO `t_city` VALUES ('652700', '博尔塔拉蒙古自治州', '650000', '6527');
INSERT INTO `t_city` VALUES ('652800', '巴音郭楞蒙古自治州', '650000', '6528');
INSERT INTO `t_city` VALUES ('652900', '阿克苏地区', '650000', '6529');
INSERT INTO `t_city` VALUES ('653000', '克孜勒苏柯尔克孜自治州', '650000', '6530');
INSERT INTO `t_city` VALUES ('653100', '喀什地区', '650000', '6531');
INSERT INTO `t_city` VALUES ('653200', '和田地区', '650000', '6532');
INSERT INTO `t_city` VALUES ('654000', '伊犁哈萨克自治州', '650000', '6540');
INSERT INTO `t_city` VALUES ('654200', '塔城地区', '650000', '6542');
INSERT INTO `t_city` VALUES ('654300', '阿勒泰地区', '650000', '6543');

-- ----------------------------
-- Table structure for t_country
-- ----------------------------
DROP TABLE IF EXISTS `t_country`;
CREATE TABLE `t_country` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `country_code` char(2) DEFAULT NULL,
  `currency_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_country
-- ----------------------------
INSERT INTO `t_country` VALUES ('1000', '中国', '86', 'RMB');
INSERT INTO `t_country` VALUES ('2000', '美国', '1', 'USD');
INSERT INTO `t_country` VALUES ('3000', '俄罗斯', '7', 'RUB');

-- ----------------------------
-- Table structure for t_customer
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `identification` char(18) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10016 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer
-- ----------------------------
INSERT INTO `t_customer` VALUES ('10001', '李秋水', 'female', '510110197910012312', '1979-10-01', null, '13388990123', '2024-07-01 12:06:12', '2024-07-01 12:06:12');
INSERT INTO `t_customer` VALUES ('10002', '逍遥子', 'male', '510110197607103322', '1976-07-10', null, '13422584349', '2024-07-01 12:06:12', '2024-07-01 12:06:12');
INSERT INTO `t_customer` VALUES ('10003', '巫行云', 'female', '110100198512057777', '1985-12-05', null, '19216212345', '2024-07-01 12:06:12', '2024-07-01 12:06:12');
INSERT INTO `t_customer` VALUES ('10004', '常青子', 'male', '110100197510207812', '1975-10-20', null, '13613671267', '2024-07-01 12:06:12', '2024-07-01 12:06:12');
INSERT INTO `t_customer` VALUES ('10005', '关二锅', 'male', '110110198711150001', '1987-11-15', null, '13613613666', '2024-07-01 12:06:12', '2024-07-01 12:06:12');
INSERT INTO `t_customer` VALUES ('10006', '诸葛村夫', 'male', '110110198205290002', '1982-05-29', null, '18613629999', '2024-07-01 12:06:12', '2024-07-01 12:06:12');
INSERT INTO `t_customer` VALUES ('10007', '西门吹雪', 'female', '510210200207113882', '2002-07-11', null, '18934345656', '2024-07-01 12:06:12', '2024-07-01 12:06:12');
INSERT INTO `t_customer` VALUES ('10008', '公孙无忌', 'male', '510212200203027812', '2002-03-02', null, '13457772777', '2024-07-01 12:06:12', '2024-07-01 12:06:12');
INSERT INTO `t_customer` VALUES ('10009', '张一德', 'male', '510212200004213344', '2000-04-21', null, '13656781234', '2024-07-01 12:06:12', '2024-07-01 12:06:12');
INSERT INTO `t_customer` VALUES ('10010', '刘玄德', 'male', '410110199910107779', '1999-10-10', null, '15466779900', '2024-07-01 12:06:12', '2024-07-01 12:06:12');
INSERT INTO `t_customer` VALUES ('10011', '马孟起', 'male', '110112200002218701', '2000-02-21', null, '13678901000', '2024-07-01 12:06:12', '2024-07-01 12:06:12');
INSERT INTO `t_customer` VALUES ('10012', '赵子龙', 'male', '110102199505123382', '1995-05-12', null, '13663100001', '2024-07-01 12:06:12', '2024-07-01 12:06:12');
INSERT INTO `t_customer` VALUES ('10013', '无涯子', 'male', '110102199210132828', '1992-10-13', null, '13279127912', '2024-07-01 12:06:12', '2024-07-01 12:06:12');
INSERT INTO `t_customer` VALUES ('10014', '次仁顿珠', 'male', '410110199208182323', '1992-08-18', null, '19100225757', '2024-07-01 12:06:12', '2024-07-01 12:06:12');
INSERT INTO `t_customer` VALUES ('10015', '娜扎买买提', 'female', '410110196211093349', '1962-11-09', null, '13478692312', '2024-07-01 12:06:12', '2024-07-01 12:06:12');

-- ----------------------------
-- Table structure for t_district
-- ----------------------------
DROP TABLE IF EXISTS `t_district`;
CREATE TABLE `t_district` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `province_id` int(6) DEFAULT NULL,
  `city_id` int(6) DEFAULT NULL,
  `district_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=659011 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_district
-- ----------------------------
INSERT INTO `t_district` VALUES ('110101', '东城区', '110000', '110100', '110101');
INSERT INTO `t_district` VALUES ('110102', '西城区', '110000', '110100', '110102');
INSERT INTO `t_district` VALUES ('110105', '朝阳区', '110000', '110100', '110105');
INSERT INTO `t_district` VALUES ('110106', '丰台区', '110000', '110100', '110106');
INSERT INTO `t_district` VALUES ('110107', '石景山区', '110000', '110100', '110107');
INSERT INTO `t_district` VALUES ('110108', '海淀区', '110000', '110100', '110108');
INSERT INTO `t_district` VALUES ('110109', '门头沟区', '110000', '110100', '110109');
INSERT INTO `t_district` VALUES ('110111', '房山区', '110000', '110100', '110111');
INSERT INTO `t_district` VALUES ('110112', '通州区', '110000', '110100', '110112');
INSERT INTO `t_district` VALUES ('110113', '顺义区', '110000', '110100', '110113');
INSERT INTO `t_district` VALUES ('110114', '昌平区', '110000', '110100', '110114');
INSERT INTO `t_district` VALUES ('110115', '大兴区', '110000', '110100', '110115');
INSERT INTO `t_district` VALUES ('110116', '怀柔区', '110000', '110100', '110116');
INSERT INTO `t_district` VALUES ('110117', '平谷区', '110000', '110100', '110117');
INSERT INTO `t_district` VALUES ('110118', '密云区', '110000', '110100', '110118');
INSERT INTO `t_district` VALUES ('110119', '延庆区', '110000', '110100', '110119');
INSERT INTO `t_district` VALUES ('120101', '和平区', '120000', '120100', '120101');
INSERT INTO `t_district` VALUES ('120102', '河东区', '120000', '120100', '120102');
INSERT INTO `t_district` VALUES ('120103', '河西区', '120000', '120100', '120103');
INSERT INTO `t_district` VALUES ('120104', '南开区', '120000', '120100', '120104');
INSERT INTO `t_district` VALUES ('120105', '河北区', '120000', '120100', '120105');
INSERT INTO `t_district` VALUES ('120106', '红桥区', '120000', '120100', '120106');
INSERT INTO `t_district` VALUES ('120110', '东丽区', '120000', '120100', '120110');
INSERT INTO `t_district` VALUES ('120111', '西青区', '120000', '120100', '120111');
INSERT INTO `t_district` VALUES ('120112', '津南区', '120000', '120100', '120112');
INSERT INTO `t_district` VALUES ('120113', '北辰区', '120000', '120100', '120113');
INSERT INTO `t_district` VALUES ('120114', '武清区', '120000', '120100', '120114');
INSERT INTO `t_district` VALUES ('120115', '宝坻区', '120000', '120100', '120115');
INSERT INTO `t_district` VALUES ('120116', '滨海新区', '120000', '120100', '120116');
INSERT INTO `t_district` VALUES ('120117', '宁河区', '120000', '120100', '120117');
INSERT INTO `t_district` VALUES ('120118', '静海区', '120000', '120100', '120118');
INSERT INTO `t_district` VALUES ('120119', '蓟州区', '120000', '120100', '120119');
INSERT INTO `t_district` VALUES ('130102', '长安区', '130000', '130100', '130102');
INSERT INTO `t_district` VALUES ('130104', '桥西区', '130000', '130100', '130104');
INSERT INTO `t_district` VALUES ('130105', '新华区', '130000', '130100', '130105');
INSERT INTO `t_district` VALUES ('130107', '井陉矿区', '130000', '130100', '130107');
INSERT INTO `t_district` VALUES ('130108', '裕华区', '130000', '130100', '130108');
INSERT INTO `t_district` VALUES ('130109', '藁城区', '130000', '130100', '130109');
INSERT INTO `t_district` VALUES ('130110', '鹿泉区', '130000', '130100', '130110');
INSERT INTO `t_district` VALUES ('130111', '栾城区', '130000', '130100', '130111');
INSERT INTO `t_district` VALUES ('130121', '井陉县', '130000', '130100', '130121');
INSERT INTO `t_district` VALUES ('130123', '正定县', '130000', '130100', '130123');
INSERT INTO `t_district` VALUES ('130125', '行唐县', '130000', '130100', '130125');
INSERT INTO `t_district` VALUES ('130126', '灵寿县', '130000', '130100', '130126');
INSERT INTO `t_district` VALUES ('130127', '高邑县', '130000', '130100', '130127');
INSERT INTO `t_district` VALUES ('130128', '深泽县', '130000', '130100', '130128');
INSERT INTO `t_district` VALUES ('130129', '赞皇县', '130000', '130100', '130129');
INSERT INTO `t_district` VALUES ('130130', '无极县', '130000', '130100', '130130');
INSERT INTO `t_district` VALUES ('130131', '平山县', '130000', '130100', '130131');
INSERT INTO `t_district` VALUES ('130132', '元氏县', '130000', '130100', '130132');
INSERT INTO `t_district` VALUES ('130133', '赵县', '130000', '130100', '130133');
INSERT INTO `t_district` VALUES ('130181', '辛集市', '130000', '130100', '130181');
INSERT INTO `t_district` VALUES ('130183', '晋州市', '130000', '130100', '130183');
INSERT INTO `t_district` VALUES ('130184', '新乐市', '130000', '130100', '130184');
INSERT INTO `t_district` VALUES ('130202', '路南区', '130000', '130200', '130202');
INSERT INTO `t_district` VALUES ('130203', '路北区', '130000', '130200', '130203');
INSERT INTO `t_district` VALUES ('130204', '古冶区', '130000', '130200', '130204');
INSERT INTO `t_district` VALUES ('130205', '开平区', '130000', '130200', '130205');
INSERT INTO `t_district` VALUES ('130207', '丰南区', '130000', '130200', '130207');
INSERT INTO `t_district` VALUES ('130208', '丰润区', '130000', '130200', '130208');
INSERT INTO `t_district` VALUES ('130209', '曹妃甸区', '130000', '130200', '130209');
INSERT INTO `t_district` VALUES ('130224', '滦南县', '130000', '130200', '130224');
INSERT INTO `t_district` VALUES ('130225', '乐亭县', '130000', '130200', '130225');
INSERT INTO `t_district` VALUES ('130227', '迁西县', '130000', '130200', '130227');
INSERT INTO `t_district` VALUES ('130229', '玉田县', '130000', '130200', '130229');
INSERT INTO `t_district` VALUES ('130281', '遵化市', '130000', '130200', '130281');
INSERT INTO `t_district` VALUES ('130283', '迁安市', '130000', '130200', '130283');
INSERT INTO `t_district` VALUES ('130284', '滦州市', '130000', '130200', '130284');
INSERT INTO `t_district` VALUES ('130302', '海港区', '130000', '130300', '130302');
INSERT INTO `t_district` VALUES ('130303', '山海关区', '130000', '130300', '130303');
INSERT INTO `t_district` VALUES ('130304', '北戴河区', '130000', '130300', '130304');
INSERT INTO `t_district` VALUES ('130306', '抚宁区', '130000', '130300', '130306');
INSERT INTO `t_district` VALUES ('130321', '青龙满族自治县', '130000', '130300', '130321');
INSERT INTO `t_district` VALUES ('130322', '昌黎县', '130000', '130300', '130322');
INSERT INTO `t_district` VALUES ('130324', '卢龙县', '130000', '130300', '130324');
INSERT INTO `t_district` VALUES ('130402', '邯山区', '130000', '130400', '130402');
INSERT INTO `t_district` VALUES ('130403', '丛台区', '130000', '130400', '130403');
INSERT INTO `t_district` VALUES ('130404', '复兴区', '130000', '130400', '130404');
INSERT INTO `t_district` VALUES ('130406', '峰峰矿区', '130000', '130400', '130406');
INSERT INTO `t_district` VALUES ('130407', '肥乡区', '130000', '130400', '130407');
INSERT INTO `t_district` VALUES ('130408', '永年区', '130000', '130400', '130408');
INSERT INTO `t_district` VALUES ('130423', '临漳县', '130000', '130400', '130423');
INSERT INTO `t_district` VALUES ('130424', '成安县', '130000', '130400', '130424');
INSERT INTO `t_district` VALUES ('130425', '大名县', '130000', '130400', '130425');
INSERT INTO `t_district` VALUES ('130426', '涉县', '130000', '130400', '130426');
INSERT INTO `t_district` VALUES ('130427', '磁县', '130000', '130400', '130427');
INSERT INTO `t_district` VALUES ('130430', '邱县', '130000', '130400', '130430');
INSERT INTO `t_district` VALUES ('130431', '鸡泽县', '130000', '130400', '130431');
INSERT INTO `t_district` VALUES ('130432', '广平县', '130000', '130400', '130432');
INSERT INTO `t_district` VALUES ('130433', '馆陶县', '130000', '130400', '130433');
INSERT INTO `t_district` VALUES ('130434', '魏县', '130000', '130400', '130434');
INSERT INTO `t_district` VALUES ('130435', '曲周县', '130000', '130400', '130435');
INSERT INTO `t_district` VALUES ('130481', '武安市', '130000', '130400', '130481');
INSERT INTO `t_district` VALUES ('130502', '桥东区', '130000', '130500', '130502');
INSERT INTO `t_district` VALUES ('130503', '桥西区', '130000', '130500', '130503');
INSERT INTO `t_district` VALUES ('130521', '邢台县', '130000', '130500', '130521');
INSERT INTO `t_district` VALUES ('130522', '临城县', '130000', '130500', '130522');
INSERT INTO `t_district` VALUES ('130523', '内丘县', '130000', '130500', '130523');
INSERT INTO `t_district` VALUES ('130524', '柏乡县', '130000', '130500', '130524');
INSERT INTO `t_district` VALUES ('130525', '隆尧县', '130000', '130500', '130525');
INSERT INTO `t_district` VALUES ('130526', '任县', '130000', '130500', '130526');
INSERT INTO `t_district` VALUES ('130527', '南和县', '130000', '130500', '130527');
INSERT INTO `t_district` VALUES ('130528', '宁晋县', '130000', '130500', '130528');
INSERT INTO `t_district` VALUES ('130529', '巨鹿县', '130000', '130500', '130529');
INSERT INTO `t_district` VALUES ('130530', '新河县', '130000', '130500', '130530');
INSERT INTO `t_district` VALUES ('130531', '广宗县', '130000', '130500', '130531');
INSERT INTO `t_district` VALUES ('130532', '平乡县', '130000', '130500', '130532');
INSERT INTO `t_district` VALUES ('130533', '威县', '130000', '130500', '130533');
INSERT INTO `t_district` VALUES ('130534', '清河县', '130000', '130500', '130534');
INSERT INTO `t_district` VALUES ('130535', '临西县', '130000', '130500', '130535');
INSERT INTO `t_district` VALUES ('130581', '南宫市', '130000', '130500', '130581');
INSERT INTO `t_district` VALUES ('130582', '沙河市', '130000', '130500', '130582');
INSERT INTO `t_district` VALUES ('130602', '竞秀区', '130000', '130600', '130602');
INSERT INTO `t_district` VALUES ('130606', '莲池区', '130000', '130600', '130606');
INSERT INTO `t_district` VALUES ('130607', '满城区', '130000', '130600', '130607');
INSERT INTO `t_district` VALUES ('130608', '清苑区', '130000', '130600', '130608');
INSERT INTO `t_district` VALUES ('130609', '徐水区', '130000', '130600', '130609');
INSERT INTO `t_district` VALUES ('130623', '涞水县', '130000', '130600', '130623');
INSERT INTO `t_district` VALUES ('130624', '阜平县', '130000', '130600', '130624');
INSERT INTO `t_district` VALUES ('130626', '定兴县', '130000', '130600', '130626');
INSERT INTO `t_district` VALUES ('130627', '唐县', '130000', '130600', '130627');
INSERT INTO `t_district` VALUES ('130628', '高阳县', '130000', '130600', '130628');
INSERT INTO `t_district` VALUES ('130629', '容城县', '130000', '130600', '130629');
INSERT INTO `t_district` VALUES ('130630', '涞源县', '130000', '130600', '130630');
INSERT INTO `t_district` VALUES ('130631', '望都县', '130000', '130600', '130631');
INSERT INTO `t_district` VALUES ('130632', '安新县', '130000', '130600', '130632');
INSERT INTO `t_district` VALUES ('130633', '易县', '130000', '130600', '130633');
INSERT INTO `t_district` VALUES ('130634', '曲阳县', '130000', '130600', '130634');
INSERT INTO `t_district` VALUES ('130635', '蠡县', '130000', '130600', '130635');
INSERT INTO `t_district` VALUES ('130636', '顺平县', '130000', '130600', '130636');
INSERT INTO `t_district` VALUES ('130637', '博野县', '130000', '130600', '130637');
INSERT INTO `t_district` VALUES ('130638', '雄县', '130000', '130600', '130638');
INSERT INTO `t_district` VALUES ('130681', '涿州市', '130000', '130600', '130681');
INSERT INTO `t_district` VALUES ('130682', '定州市', '130000', '130600', '130682');
INSERT INTO `t_district` VALUES ('130683', '安国市', '130000', '130600', '130683');
INSERT INTO `t_district` VALUES ('130684', '高碑店市', '130000', '130600', '130684');
INSERT INTO `t_district` VALUES ('130702', '桥东区', '130000', '130700', '130702');
INSERT INTO `t_district` VALUES ('130703', '桥西区', '130000', '130700', '130703');
INSERT INTO `t_district` VALUES ('130705', '宣化区', '130000', '130700', '130705');
INSERT INTO `t_district` VALUES ('130706', '下花园区', '130000', '130700', '130706');
INSERT INTO `t_district` VALUES ('130708', '万全区', '130000', '130700', '130708');
INSERT INTO `t_district` VALUES ('130709', '崇礼区', '130000', '130700', '130709');
INSERT INTO `t_district` VALUES ('130722', '张北县', '130000', '130700', '130722');
INSERT INTO `t_district` VALUES ('130723', '康保县', '130000', '130700', '130723');
INSERT INTO `t_district` VALUES ('130724', '沽源县', '130000', '130700', '130724');
INSERT INTO `t_district` VALUES ('130725', '尚义县', '130000', '130700', '130725');
INSERT INTO `t_district` VALUES ('130726', '蔚县', '130000', '130700', '130726');
INSERT INTO `t_district` VALUES ('130727', '阳原县', '130000', '130700', '130727');
INSERT INTO `t_district` VALUES ('130728', '怀安县', '130000', '130700', '130728');
INSERT INTO `t_district` VALUES ('130730', '怀来县', '130000', '130700', '130730');
INSERT INTO `t_district` VALUES ('130731', '涿鹿县', '130000', '130700', '130731');
INSERT INTO `t_district` VALUES ('130732', '赤城县', '130000', '130700', '130732');
INSERT INTO `t_district` VALUES ('130802', '双桥区', '130000', '130800', '130802');
INSERT INTO `t_district` VALUES ('130803', '双滦区', '130000', '130800', '130803');
INSERT INTO `t_district` VALUES ('130804', '鹰手营子矿区', '130000', '130800', '130804');
INSERT INTO `t_district` VALUES ('130821', '承德县', '130000', '130800', '130821');
INSERT INTO `t_district` VALUES ('130822', '兴隆县', '130000', '130800', '130822');
INSERT INTO `t_district` VALUES ('130824', '滦平县', '130000', '130800', '130824');
INSERT INTO `t_district` VALUES ('130825', '隆化县', '130000', '130800', '130825');
INSERT INTO `t_district` VALUES ('130826', '丰宁满族自治县', '130000', '130800', '130826');
INSERT INTO `t_district` VALUES ('130827', '宽城满族自治县', '130000', '130800', '130827');
INSERT INTO `t_district` VALUES ('130828', '围场满族蒙古族自治县', '130000', '130800', '130828');
INSERT INTO `t_district` VALUES ('130881', '平泉市', '130000', '130800', '130881');
INSERT INTO `t_district` VALUES ('130902', '新华区', '130000', '130900', '130902');
INSERT INTO `t_district` VALUES ('130903', '运河区', '130000', '130900', '130903');
INSERT INTO `t_district` VALUES ('130921', '沧县', '130000', '130900', '130921');
INSERT INTO `t_district` VALUES ('130922', '青县', '130000', '130900', '130922');
INSERT INTO `t_district` VALUES ('130923', '东光县', '130000', '130900', '130923');
INSERT INTO `t_district` VALUES ('130924', '海兴县', '130000', '130900', '130924');
INSERT INTO `t_district` VALUES ('130925', '盐山县', '130000', '130900', '130925');
INSERT INTO `t_district` VALUES ('130926', '肃宁县', '130000', '130900', '130926');
INSERT INTO `t_district` VALUES ('130927', '南皮县', '130000', '130900', '130927');
INSERT INTO `t_district` VALUES ('130928', '吴桥县', '130000', '130900', '130928');
INSERT INTO `t_district` VALUES ('130929', '献县', '130000', '130900', '130929');
INSERT INTO `t_district` VALUES ('130930', '孟村回族自治县', '130000', '130900', '130930');
INSERT INTO `t_district` VALUES ('130981', '泊头市', '130000', '130900', '130981');
INSERT INTO `t_district` VALUES ('130982', '任丘市', '130000', '130900', '130982');
INSERT INTO `t_district` VALUES ('130983', '黄骅市', '130000', '130900', '130983');
INSERT INTO `t_district` VALUES ('130984', '河间市', '130000', '130900', '130984');
INSERT INTO `t_district` VALUES ('131002', '安次区', '130000', '131000', '131002');
INSERT INTO `t_district` VALUES ('131003', '广阳区', '130000', '131000', '131003');
INSERT INTO `t_district` VALUES ('131022', '固安县', '130000', '131000', '131022');
INSERT INTO `t_district` VALUES ('131023', '永清县', '130000', '131000', '131023');
INSERT INTO `t_district` VALUES ('131024', '香河县', '130000', '131000', '131024');
INSERT INTO `t_district` VALUES ('131025', '大城县', '130000', '131000', '131025');
INSERT INTO `t_district` VALUES ('131026', '文安县', '130000', '131000', '131026');
INSERT INTO `t_district` VALUES ('131028', '大厂回族自治县', '130000', '131000', '131028');
INSERT INTO `t_district` VALUES ('131081', '霸州市', '130000', '131000', '131081');
INSERT INTO `t_district` VALUES ('131082', '三河市', '130000', '131000', '131082');
INSERT INTO `t_district` VALUES ('131102', '桃城区', '130000', '131100', '131102');
INSERT INTO `t_district` VALUES ('131103', '冀州区', '130000', '131100', '131103');
INSERT INTO `t_district` VALUES ('131121', '枣强县', '130000', '131100', '131121');
INSERT INTO `t_district` VALUES ('131122', '武邑县', '130000', '131100', '131122');
INSERT INTO `t_district` VALUES ('131123', '武强县', '130000', '131100', '131123');
INSERT INTO `t_district` VALUES ('131124', '饶阳县', '130000', '131100', '131124');
INSERT INTO `t_district` VALUES ('131125', '安平县', '130000', '131100', '131125');
INSERT INTO `t_district` VALUES ('131126', '故城县', '130000', '131100', '131126');
INSERT INTO `t_district` VALUES ('131127', '景县', '130000', '131100', '131127');
INSERT INTO `t_district` VALUES ('131128', '阜城县', '130000', '131100', '131128');
INSERT INTO `t_district` VALUES ('131182', '深州市', '130000', '131100', '131182');
INSERT INTO `t_district` VALUES ('140105', '小店区', '140000', '140100', '140105');
INSERT INTO `t_district` VALUES ('140106', '迎泽区', '140000', '140100', '140106');
INSERT INTO `t_district` VALUES ('140107', '杏花岭区', '140000', '140100', '140107');
INSERT INTO `t_district` VALUES ('140108', '尖草坪区', '140000', '140100', '140108');
INSERT INTO `t_district` VALUES ('140109', '万柏林区', '140000', '140100', '140109');
INSERT INTO `t_district` VALUES ('140110', '晋源区', '140000', '140100', '140110');
INSERT INTO `t_district` VALUES ('140121', '清徐县', '140000', '140100', '140121');
INSERT INTO `t_district` VALUES ('140122', '阳曲县', '140000', '140100', '140122');
INSERT INTO `t_district` VALUES ('140123', '娄烦县', '140000', '140100', '140123');
INSERT INTO `t_district` VALUES ('140181', '古交市', '140000', '140100', '140181');
INSERT INTO `t_district` VALUES ('140212', '新荣区', '140000', '140200', '140212');
INSERT INTO `t_district` VALUES ('140213', '平城区', '140000', '140200', '140213');
INSERT INTO `t_district` VALUES ('140214', '云冈区', '140000', '140200', '140214');
INSERT INTO `t_district` VALUES ('140215', '云州区', '140000', '140200', '140215');
INSERT INTO `t_district` VALUES ('140221', '阳高县', '140000', '140200', '140221');
INSERT INTO `t_district` VALUES ('140222', '天镇县', '140000', '140200', '140222');
INSERT INTO `t_district` VALUES ('140223', '广灵县', '140000', '140200', '140223');
INSERT INTO `t_district` VALUES ('140224', '灵丘县', '140000', '140200', '140224');
INSERT INTO `t_district` VALUES ('140225', '浑源县', '140000', '140200', '140225');
INSERT INTO `t_district` VALUES ('140226', '左云县', '140000', '140200', '140226');
INSERT INTO `t_district` VALUES ('140302', '城区', '140000', '140300', '140302');
INSERT INTO `t_district` VALUES ('140303', '矿区', '140000', '140300', '140303');
INSERT INTO `t_district` VALUES ('140311', '郊区', '140000', '140300', '140311');
INSERT INTO `t_district` VALUES ('140321', '平定县', '140000', '140300', '140321');
INSERT INTO `t_district` VALUES ('140322', '盂县', '140000', '140300', '140322');
INSERT INTO `t_district` VALUES ('140403', '潞州区', '140000', '140400', '140403');
INSERT INTO `t_district` VALUES ('140404', '上党区', '140000', '140400', '140404');
INSERT INTO `t_district` VALUES ('140405', '屯留区', '140000', '140400', '140405');
INSERT INTO `t_district` VALUES ('140406', '潞城区', '140000', '140400', '140406');
INSERT INTO `t_district` VALUES ('140423', '襄垣县', '140000', '140400', '140423');
INSERT INTO `t_district` VALUES ('140425', '平顺县', '140000', '140400', '140425');
INSERT INTO `t_district` VALUES ('140426', '黎城县', '140000', '140400', '140426');
INSERT INTO `t_district` VALUES ('140427', '壶关县', '140000', '140400', '140427');
INSERT INTO `t_district` VALUES ('140428', '长子县', '140000', '140400', '140428');
INSERT INTO `t_district` VALUES ('140429', '武乡县', '140000', '140400', '140429');
INSERT INTO `t_district` VALUES ('140430', '沁县', '140000', '140400', '140430');
INSERT INTO `t_district` VALUES ('140431', '沁源县', '140000', '140400', '140431');
INSERT INTO `t_district` VALUES ('140502', '城区', '140000', '140500', '140502');
INSERT INTO `t_district` VALUES ('140521', '沁水县', '140000', '140500', '140521');
INSERT INTO `t_district` VALUES ('140522', '阳城县', '140000', '140500', '140522');
INSERT INTO `t_district` VALUES ('140524', '陵川县', '140000', '140500', '140524');
INSERT INTO `t_district` VALUES ('140525', '泽州县', '140000', '140500', '140525');
INSERT INTO `t_district` VALUES ('140581', '高平市', '140000', '140500', '140581');
INSERT INTO `t_district` VALUES ('140602', '朔城区', '140000', '140600', '140602');
INSERT INTO `t_district` VALUES ('140603', '平鲁区', '140000', '140600', '140603');
INSERT INTO `t_district` VALUES ('140621', '山阴县', '140000', '140600', '140621');
INSERT INTO `t_district` VALUES ('140622', '应县', '140000', '140600', '140622');
INSERT INTO `t_district` VALUES ('140623', '右玉县', '140000', '140600', '140623');
INSERT INTO `t_district` VALUES ('140681', '怀仁市', '140000', '140600', '140681');
INSERT INTO `t_district` VALUES ('140702', '榆次区', '140000', '140700', '140702');
INSERT INTO `t_district` VALUES ('140703', '太谷区', '140000', '140700', '140703');
INSERT INTO `t_district` VALUES ('140721', '榆社县', '140000', '140700', '140721');
INSERT INTO `t_district` VALUES ('140722', '左权县', '140000', '140700', '140722');
INSERT INTO `t_district` VALUES ('140723', '和顺县', '140000', '140700', '140723');
INSERT INTO `t_district` VALUES ('140724', '昔阳县', '140000', '140700', '140724');
INSERT INTO `t_district` VALUES ('140725', '寿阳县', '140000', '140700', '140725');
INSERT INTO `t_district` VALUES ('140727', '祁县', '140000', '140700', '140727');
INSERT INTO `t_district` VALUES ('140728', '平遥县', '140000', '140700', '140728');
INSERT INTO `t_district` VALUES ('140729', '灵石县', '140000', '140700', '140729');
INSERT INTO `t_district` VALUES ('140781', '介休市', '140000', '140700', '140781');
INSERT INTO `t_district` VALUES ('140802', '盐湖区', '140000', '140800', '140802');
INSERT INTO `t_district` VALUES ('140821', '临猗县', '140000', '140800', '140821');
INSERT INTO `t_district` VALUES ('140822', '万荣县', '140000', '140800', '140822');
INSERT INTO `t_district` VALUES ('140823', '闻喜县', '140000', '140800', '140823');
INSERT INTO `t_district` VALUES ('140824', '稷山县', '140000', '140800', '140824');
INSERT INTO `t_district` VALUES ('140825', '新绛县', '140000', '140800', '140825');
INSERT INTO `t_district` VALUES ('140826', '绛县', '140000', '140800', '140826');
INSERT INTO `t_district` VALUES ('140827', '垣曲县', '140000', '140800', '140827');
INSERT INTO `t_district` VALUES ('140828', '夏县', '140000', '140800', '140828');
INSERT INTO `t_district` VALUES ('140829', '平陆县', '140000', '140800', '140829');
INSERT INTO `t_district` VALUES ('140830', '芮城县', '140000', '140800', '140830');
INSERT INTO `t_district` VALUES ('140881', '永济市', '140000', '140800', '140881');
INSERT INTO `t_district` VALUES ('140882', '河津市', '140000', '140800', '140882');
INSERT INTO `t_district` VALUES ('140902', '忻府区', '140000', '140900', '140902');
INSERT INTO `t_district` VALUES ('140921', '定襄县', '140000', '140900', '140921');
INSERT INTO `t_district` VALUES ('140922', '五台县', '140000', '140900', '140922');
INSERT INTO `t_district` VALUES ('140923', '代县', '140000', '140900', '140923');
INSERT INTO `t_district` VALUES ('140924', '繁峙县', '140000', '140900', '140924');
INSERT INTO `t_district` VALUES ('140925', '宁武县', '140000', '140900', '140925');
INSERT INTO `t_district` VALUES ('140926', '静乐县', '140000', '140900', '140926');
INSERT INTO `t_district` VALUES ('140927', '神池县', '140000', '140900', '140927');
INSERT INTO `t_district` VALUES ('140928', '五寨县', '140000', '140900', '140928');
INSERT INTO `t_district` VALUES ('140929', '岢岚县', '140000', '140900', '140929');
INSERT INTO `t_district` VALUES ('140930', '河曲县', '140000', '140900', '140930');
INSERT INTO `t_district` VALUES ('140931', '保德县', '140000', '140900', '140931');
INSERT INTO `t_district` VALUES ('140932', '偏关县', '140000', '140900', '140932');
INSERT INTO `t_district` VALUES ('140981', '原平市', '140000', '140900', '140981');
INSERT INTO `t_district` VALUES ('141002', '尧都区', '140000', '141000', '141002');
INSERT INTO `t_district` VALUES ('141021', '曲沃县', '140000', '141000', '141021');
INSERT INTO `t_district` VALUES ('141022', '翼城县', '140000', '141000', '141022');
INSERT INTO `t_district` VALUES ('141023', '襄汾县', '140000', '141000', '141023');
INSERT INTO `t_district` VALUES ('141024', '洪洞县', '140000', '141000', '141024');
INSERT INTO `t_district` VALUES ('141025', '古县', '140000', '141000', '141025');
INSERT INTO `t_district` VALUES ('141026', '安泽县', '140000', '141000', '141026');
INSERT INTO `t_district` VALUES ('141027', '浮山县', '140000', '141000', '141027');
INSERT INTO `t_district` VALUES ('141028', '吉县', '140000', '141000', '141028');
INSERT INTO `t_district` VALUES ('141029', '乡宁县', '140000', '141000', '141029');
INSERT INTO `t_district` VALUES ('141030', '大宁县', '140000', '141000', '141030');
INSERT INTO `t_district` VALUES ('141031', '隰县', '140000', '141000', '141031');
INSERT INTO `t_district` VALUES ('141032', '永和县', '140000', '141000', '141032');
INSERT INTO `t_district` VALUES ('141033', '蒲县', '140000', '141000', '141033');
INSERT INTO `t_district` VALUES ('141034', '汾西县', '140000', '141000', '141034');
INSERT INTO `t_district` VALUES ('141081', '侯马市', '140000', '141000', '141081');
INSERT INTO `t_district` VALUES ('141082', '霍州市', '140000', '141000', '141082');
INSERT INTO `t_district` VALUES ('141102', '离石区', '140000', '141100', '141102');
INSERT INTO `t_district` VALUES ('141121', '文水县', '140000', '141100', '141121');
INSERT INTO `t_district` VALUES ('141122', '交城县', '140000', '141100', '141122');
INSERT INTO `t_district` VALUES ('141123', '兴县', '140000', '141100', '141123');
INSERT INTO `t_district` VALUES ('141124', '临县', '140000', '141100', '141124');
INSERT INTO `t_district` VALUES ('141125', '柳林县', '140000', '141100', '141125');
INSERT INTO `t_district` VALUES ('141126', '石楼县', '140000', '141100', '141126');
INSERT INTO `t_district` VALUES ('141127', '岚县', '140000', '141100', '141127');
INSERT INTO `t_district` VALUES ('141128', '方山县', '140000', '141100', '141128');
INSERT INTO `t_district` VALUES ('141129', '中阳县', '140000', '141100', '141129');
INSERT INTO `t_district` VALUES ('141130', '交口县', '140000', '141100', '141130');
INSERT INTO `t_district` VALUES ('141181', '孝义市', '140000', '141100', '141181');
INSERT INTO `t_district` VALUES ('141182', '汾阳市', '140000', '141100', '141182');
INSERT INTO `t_district` VALUES ('150102', '新城区', '150000', '150100', '150102');
INSERT INTO `t_district` VALUES ('150103', '回民区', '150000', '150100', '150103');
INSERT INTO `t_district` VALUES ('150104', '玉泉区', '150000', '150100', '150104');
INSERT INTO `t_district` VALUES ('150105', '赛罕区', '150000', '150100', '150105');
INSERT INTO `t_district` VALUES ('150121', '土默特左旗', '150000', '150100', '150121');
INSERT INTO `t_district` VALUES ('150122', '托克托县', '150000', '150100', '150122');
INSERT INTO `t_district` VALUES ('150123', '和林格尔县', '150000', '150100', '150123');
INSERT INTO `t_district` VALUES ('150124', '清水河县', '150000', '150100', '150124');
INSERT INTO `t_district` VALUES ('150125', '武川县', '150000', '150100', '150125');
INSERT INTO `t_district` VALUES ('150202', '东河区', '150000', '150200', '150202');
INSERT INTO `t_district` VALUES ('150203', '昆都仑区', '150000', '150200', '150203');
INSERT INTO `t_district` VALUES ('150204', '青山区', '150000', '150200', '150204');
INSERT INTO `t_district` VALUES ('150205', '石拐区', '150000', '150200', '150205');
INSERT INTO `t_district` VALUES ('150206', '白云鄂博矿区', '150000', '150200', '150206');
INSERT INTO `t_district` VALUES ('150207', '九原区', '150000', '150200', '150207');
INSERT INTO `t_district` VALUES ('150221', '土默特右旗', '150000', '150200', '150221');
INSERT INTO `t_district` VALUES ('150222', '固阳县', '150000', '150200', '150222');
INSERT INTO `t_district` VALUES ('150223', '达尔罕茂明安联合旗', '150000', '150200', '150223');
INSERT INTO `t_district` VALUES ('150302', '海勃湾区', '150000', '150300', '150302');
INSERT INTO `t_district` VALUES ('150303', '海南区', '150000', '150300', '150303');
INSERT INTO `t_district` VALUES ('150304', '乌达区', '150000', '150300', '150304');
INSERT INTO `t_district` VALUES ('150402', '红山区', '150000', '150400', '150402');
INSERT INTO `t_district` VALUES ('150403', '元宝山区', '150000', '150400', '150403');
INSERT INTO `t_district` VALUES ('150404', '松山区', '150000', '150400', '150404');
INSERT INTO `t_district` VALUES ('150421', '阿鲁科尔沁旗', '150000', '150400', '150421');
INSERT INTO `t_district` VALUES ('150422', '巴林左旗', '150000', '150400', '150422');
INSERT INTO `t_district` VALUES ('150423', '巴林右旗', '150000', '150400', '150423');
INSERT INTO `t_district` VALUES ('150424', '林西县', '150000', '150400', '150424');
INSERT INTO `t_district` VALUES ('150425', '克什克腾旗', '150000', '150400', '150425');
INSERT INTO `t_district` VALUES ('150426', '翁牛特旗', '150000', '150400', '150426');
INSERT INTO `t_district` VALUES ('150428', '喀喇沁旗', '150000', '150400', '150428');
INSERT INTO `t_district` VALUES ('150429', '宁城县', '150000', '150400', '150429');
INSERT INTO `t_district` VALUES ('150430', '敖汉旗', '150000', '150400', '150430');
INSERT INTO `t_district` VALUES ('150502', '科尔沁区', '150000', '150500', '150502');
INSERT INTO `t_district` VALUES ('150521', '科尔沁左翼中旗', '150000', '150500', '150521');
INSERT INTO `t_district` VALUES ('150522', '科尔沁左翼后旗', '150000', '150500', '150522');
INSERT INTO `t_district` VALUES ('150523', '开鲁县', '150000', '150500', '150523');
INSERT INTO `t_district` VALUES ('150524', '库伦旗', '150000', '150500', '150524');
INSERT INTO `t_district` VALUES ('150525', '奈曼旗', '150000', '150500', '150525');
INSERT INTO `t_district` VALUES ('150526', '扎鲁特旗', '150000', '150500', '150526');
INSERT INTO `t_district` VALUES ('150581', '霍林郭勒市', '150000', '150500', '150581');
INSERT INTO `t_district` VALUES ('150602', '东胜区', '150000', '150600', '150602');
INSERT INTO `t_district` VALUES ('150603', '康巴什区', '150000', '150600', '150603');
INSERT INTO `t_district` VALUES ('150621', '达拉特旗', '150000', '150600', '150621');
INSERT INTO `t_district` VALUES ('150622', '准格尔旗', '150000', '150600', '150622');
INSERT INTO `t_district` VALUES ('150623', '鄂托克前旗', '150000', '150600', '150623');
INSERT INTO `t_district` VALUES ('150624', '鄂托克旗', '150000', '150600', '150624');
INSERT INTO `t_district` VALUES ('150625', '杭锦旗', '150000', '150600', '150625');
INSERT INTO `t_district` VALUES ('150626', '乌审旗', '150000', '150600', '150626');
INSERT INTO `t_district` VALUES ('150627', '伊金霍洛旗', '150000', '150600', '150627');
INSERT INTO `t_district` VALUES ('150702', '海拉尔区', '150000', '150700', '150702');
INSERT INTO `t_district` VALUES ('150703', '扎赉诺尔区', '150000', '150700', '150703');
INSERT INTO `t_district` VALUES ('150721', '阿荣旗', '150000', '150700', '150721');
INSERT INTO `t_district` VALUES ('150722', '莫力达瓦达斡尔族自治旗', '150000', '150700', '150722');
INSERT INTO `t_district` VALUES ('150723', '鄂伦春自治旗', '150000', '150700', '150723');
INSERT INTO `t_district` VALUES ('150724', '鄂温克族自治旗', '150000', '150700', '150724');
INSERT INTO `t_district` VALUES ('150725', '陈巴尔虎旗', '150000', '150700', '150725');
INSERT INTO `t_district` VALUES ('150726', '新巴尔虎左旗', '150000', '150700', '150726');
INSERT INTO `t_district` VALUES ('150727', '新巴尔虎右旗', '150000', '150700', '150727');
INSERT INTO `t_district` VALUES ('150781', '满洲里市', '150000', '150700', '150781');
INSERT INTO `t_district` VALUES ('150782', '牙克石市', '150000', '150700', '150782');
INSERT INTO `t_district` VALUES ('150783', '扎兰屯市', '150000', '150700', '150783');
INSERT INTO `t_district` VALUES ('150784', '额尔古纳市', '150000', '150700', '150784');
INSERT INTO `t_district` VALUES ('150785', '根河市', '150000', '150700', '150785');
INSERT INTO `t_district` VALUES ('150802', '临河区', '150000', '150800', '150802');
INSERT INTO `t_district` VALUES ('150821', '五原县', '150000', '150800', '150821');
INSERT INTO `t_district` VALUES ('150822', '磴口县', '150000', '150800', '150822');
INSERT INTO `t_district` VALUES ('150823', '乌拉特前旗', '150000', '150800', '150823');
INSERT INTO `t_district` VALUES ('150824', '乌拉特中旗', '150000', '150800', '150824');
INSERT INTO `t_district` VALUES ('150825', '乌拉特后旗', '150000', '150800', '150825');
INSERT INTO `t_district` VALUES ('150826', '杭锦后旗', '150000', '150800', '150826');
INSERT INTO `t_district` VALUES ('150902', '集宁区', '150000', '150900', '150902');
INSERT INTO `t_district` VALUES ('150921', '卓资县', '150000', '150900', '150921');
INSERT INTO `t_district` VALUES ('150922', '化德县', '150000', '150900', '150922');
INSERT INTO `t_district` VALUES ('150923', '商都县', '150000', '150900', '150923');
INSERT INTO `t_district` VALUES ('150924', '兴和县', '150000', '150900', '150924');
INSERT INTO `t_district` VALUES ('150925', '凉城县', '150000', '150900', '150925');
INSERT INTO `t_district` VALUES ('150926', '察哈尔右翼前旗', '150000', '150900', '150926');
INSERT INTO `t_district` VALUES ('150927', '察哈尔右翼中旗', '150000', '150900', '150927');
INSERT INTO `t_district` VALUES ('150928', '察哈尔右翼后旗', '150000', '150900', '150928');
INSERT INTO `t_district` VALUES ('150929', '四子王旗', '150000', '150900', '150929');
INSERT INTO `t_district` VALUES ('150981', '丰镇市', '150000', '150900', '150981');
INSERT INTO `t_district` VALUES ('152201', '乌兰浩特市', '150000', '152200', '152201');
INSERT INTO `t_district` VALUES ('152202', '阿尔山市', '150000', '152200', '152202');
INSERT INTO `t_district` VALUES ('152221', '科尔沁右翼前旗', '150000', '152200', '152221');
INSERT INTO `t_district` VALUES ('152222', '科尔沁右翼中旗', '150000', '152200', '152222');
INSERT INTO `t_district` VALUES ('152223', '扎赉特旗', '150000', '152200', '152223');
INSERT INTO `t_district` VALUES ('152224', '突泉县', '150000', '152200', '152224');
INSERT INTO `t_district` VALUES ('152501', '二连浩特市', '150000', '152500', '152501');
INSERT INTO `t_district` VALUES ('152502', '锡林浩特市', '150000', '152500', '152502');
INSERT INTO `t_district` VALUES ('152522', '阿巴嘎旗', '150000', '152500', '152522');
INSERT INTO `t_district` VALUES ('152523', '苏尼特左旗', '150000', '152500', '152523');
INSERT INTO `t_district` VALUES ('152524', '苏尼特右旗', '150000', '152500', '152524');
INSERT INTO `t_district` VALUES ('152525', '东乌珠穆沁旗', '150000', '152500', '152525');
INSERT INTO `t_district` VALUES ('152526', '西乌珠穆沁旗', '150000', '152500', '152526');
INSERT INTO `t_district` VALUES ('152527', '太仆寺旗', '150000', '152500', '152527');
INSERT INTO `t_district` VALUES ('152528', '镶黄旗', '150000', '152500', '152528');
INSERT INTO `t_district` VALUES ('152529', '正镶白旗', '150000', '152500', '152529');
INSERT INTO `t_district` VALUES ('152530', '正蓝旗', '150000', '152500', '152530');
INSERT INTO `t_district` VALUES ('152531', '多伦县', '150000', '152500', '152531');
INSERT INTO `t_district` VALUES ('152921', '阿拉善左旗', '150000', '152900', '152921');
INSERT INTO `t_district` VALUES ('152922', '阿拉善右旗', '150000', '152900', '152922');
INSERT INTO `t_district` VALUES ('152923', '额济纳旗', '150000', '152900', '152923');
INSERT INTO `t_district` VALUES ('210102', '和平区', '210000', '210100', '210102');
INSERT INTO `t_district` VALUES ('210103', '沈河区', '210000', '210100', '210103');
INSERT INTO `t_district` VALUES ('210104', '大东区', '210000', '210100', '210104');
INSERT INTO `t_district` VALUES ('210105', '皇姑区', '210000', '210100', '210105');
INSERT INTO `t_district` VALUES ('210106', '铁西区', '210000', '210100', '210106');
INSERT INTO `t_district` VALUES ('210111', '苏家屯区', '210000', '210100', '210111');
INSERT INTO `t_district` VALUES ('210112', '浑南区', '210000', '210100', '210112');
INSERT INTO `t_district` VALUES ('210113', '沈北新区', '210000', '210100', '210113');
INSERT INTO `t_district` VALUES ('210114', '于洪区', '210000', '210100', '210114');
INSERT INTO `t_district` VALUES ('210115', '辽中区', '210000', '210100', '210115');
INSERT INTO `t_district` VALUES ('210123', '康平县', '210000', '210100', '210123');
INSERT INTO `t_district` VALUES ('210124', '法库县', '210000', '210100', '210124');
INSERT INTO `t_district` VALUES ('210181', '新民市', '210000', '210100', '210181');
INSERT INTO `t_district` VALUES ('210202', '中山区', '210000', '210200', '210202');
INSERT INTO `t_district` VALUES ('210203', '西岗区', '210000', '210200', '210203');
INSERT INTO `t_district` VALUES ('210204', '沙河口区', '210000', '210200', '210204');
INSERT INTO `t_district` VALUES ('210211', '甘井子区', '210000', '210200', '210211');
INSERT INTO `t_district` VALUES ('210212', '旅顺口区', '210000', '210200', '210212');
INSERT INTO `t_district` VALUES ('210213', '金州区', '210000', '210200', '210213');
INSERT INTO `t_district` VALUES ('210214', '普兰店区', '210000', '210200', '210214');
INSERT INTO `t_district` VALUES ('210224', '长海县', '210000', '210200', '210224');
INSERT INTO `t_district` VALUES ('210281', '瓦房店市', '210000', '210200', '210281');
INSERT INTO `t_district` VALUES ('210283', '庄河市', '210000', '210200', '210283');
INSERT INTO `t_district` VALUES ('210302', '铁东区', '210000', '210300', '210302');
INSERT INTO `t_district` VALUES ('210303', '铁西区', '210000', '210300', '210303');
INSERT INTO `t_district` VALUES ('210304', '立山区', '210000', '210300', '210304');
INSERT INTO `t_district` VALUES ('210311', '千山区', '210000', '210300', '210311');
INSERT INTO `t_district` VALUES ('210321', '台安县', '210000', '210300', '210321');
INSERT INTO `t_district` VALUES ('210323', '岫岩满族自治县', '210000', '210300', '210323');
INSERT INTO `t_district` VALUES ('210381', '海城市', '210000', '210300', '210381');
INSERT INTO `t_district` VALUES ('210402', '新抚区', '210000', '210400', '210402');
INSERT INTO `t_district` VALUES ('210403', '东洲区', '210000', '210400', '210403');
INSERT INTO `t_district` VALUES ('210404', '望花区', '210000', '210400', '210404');
INSERT INTO `t_district` VALUES ('210411', '顺城区', '210000', '210400', '210411');
INSERT INTO `t_district` VALUES ('210421', '抚顺县', '210000', '210400', '210421');
INSERT INTO `t_district` VALUES ('210422', '新宾满族自治县', '210000', '210400', '210422');
INSERT INTO `t_district` VALUES ('210423', '清原满族自治县', '210000', '210400', '210423');
INSERT INTO `t_district` VALUES ('210502', '平山区', '210000', '210500', '210502');
INSERT INTO `t_district` VALUES ('210503', '溪湖区', '210000', '210500', '210503');
INSERT INTO `t_district` VALUES ('210504', '明山区', '210000', '210500', '210504');
INSERT INTO `t_district` VALUES ('210505', '南芬区', '210000', '210500', '210505');
INSERT INTO `t_district` VALUES ('210521', '本溪满族自治县', '210000', '210500', '210521');
INSERT INTO `t_district` VALUES ('210522', '桓仁满族自治县', '210000', '210500', '210522');
INSERT INTO `t_district` VALUES ('210602', '元宝区', '210000', '210600', '210602');
INSERT INTO `t_district` VALUES ('210603', '振兴区', '210000', '210600', '210603');
INSERT INTO `t_district` VALUES ('210604', '振安区', '210000', '210600', '210604');
INSERT INTO `t_district` VALUES ('210624', '宽甸满族自治县', '210000', '210600', '210624');
INSERT INTO `t_district` VALUES ('210681', '东港市', '210000', '210600', '210681');
INSERT INTO `t_district` VALUES ('210682', '凤城市', '210000', '210600', '210682');
INSERT INTO `t_district` VALUES ('210702', '古塔区', '210000', '210700', '210702');
INSERT INTO `t_district` VALUES ('210703', '凌河区', '210000', '210700', '210703');
INSERT INTO `t_district` VALUES ('210711', '太和区', '210000', '210700', '210711');
INSERT INTO `t_district` VALUES ('210726', '黑山县', '210000', '210700', '210726');
INSERT INTO `t_district` VALUES ('210727', '义县', '210000', '210700', '210727');
INSERT INTO `t_district` VALUES ('210781', '凌海市', '210000', '210700', '210781');
INSERT INTO `t_district` VALUES ('210782', '北镇市', '210000', '210700', '210782');
INSERT INTO `t_district` VALUES ('210802', '站前区', '210000', '210800', '210802');
INSERT INTO `t_district` VALUES ('210803', '西市区', '210000', '210800', '210803');
INSERT INTO `t_district` VALUES ('210804', '鲅鱼圈区', '210000', '210800', '210804');
INSERT INTO `t_district` VALUES ('210811', '老边区', '210000', '210800', '210811');
INSERT INTO `t_district` VALUES ('210881', '盖州市', '210000', '210800', '210881');
INSERT INTO `t_district` VALUES ('210882', '大石桥市', '210000', '210800', '210882');
INSERT INTO `t_district` VALUES ('210902', '海州区', '210000', '210900', '210902');
INSERT INTO `t_district` VALUES ('210903', '新邱区', '210000', '210900', '210903');
INSERT INTO `t_district` VALUES ('210904', '太平区', '210000', '210900', '210904');
INSERT INTO `t_district` VALUES ('210905', '清河门区', '210000', '210900', '210905');
INSERT INTO `t_district` VALUES ('210911', '细河区', '210000', '210900', '210911');
INSERT INTO `t_district` VALUES ('210921', '阜新蒙古族自治县', '210000', '210900', '210921');
INSERT INTO `t_district` VALUES ('210922', '彰武县', '210000', '210900', '210922');
INSERT INTO `t_district` VALUES ('211002', '白塔区', '210000', '211000', '211002');
INSERT INTO `t_district` VALUES ('211003', '文圣区', '210000', '211000', '211003');
INSERT INTO `t_district` VALUES ('211004', '宏伟区', '210000', '211000', '211004');
INSERT INTO `t_district` VALUES ('211005', '弓长岭区', '210000', '211000', '211005');
INSERT INTO `t_district` VALUES ('211011', '太子河区', '210000', '211000', '211011');
INSERT INTO `t_district` VALUES ('211021', '辽阳县', '210000', '211000', '211021');
INSERT INTO `t_district` VALUES ('211081', '灯塔市', '210000', '211000', '211081');
INSERT INTO `t_district` VALUES ('211102', '双台子区', '210000', '211100', '211102');
INSERT INTO `t_district` VALUES ('211103', '兴隆台区', '210000', '211100', '211103');
INSERT INTO `t_district` VALUES ('211104', '大洼区', '210000', '211100', '211104');
INSERT INTO `t_district` VALUES ('211122', '盘山县', '210000', '211100', '211122');
INSERT INTO `t_district` VALUES ('211202', '银州区', '210000', '211200', '211202');
INSERT INTO `t_district` VALUES ('211204', '清河区', '210000', '211200', '211204');
INSERT INTO `t_district` VALUES ('211221', '铁岭县', '210000', '211200', '211221');
INSERT INTO `t_district` VALUES ('211223', '西丰县', '210000', '211200', '211223');
INSERT INTO `t_district` VALUES ('211224', '昌图县', '210000', '211200', '211224');
INSERT INTO `t_district` VALUES ('211281', '调兵山市', '210000', '211200', '211281');
INSERT INTO `t_district` VALUES ('211282', '开原市', '210000', '211200', '211282');
INSERT INTO `t_district` VALUES ('211302', '双塔区', '210000', '211300', '211302');
INSERT INTO `t_district` VALUES ('211303', '龙城区', '210000', '211300', '211303');
INSERT INTO `t_district` VALUES ('211321', '朝阳县', '210000', '211300', '211321');
INSERT INTO `t_district` VALUES ('211322', '建平县', '210000', '211300', '211322');
INSERT INTO `t_district` VALUES ('211324', '喀喇沁左翼蒙古族自治县', '210000', '211300', '211324');
INSERT INTO `t_district` VALUES ('211381', '北票市', '210000', '211300', '211381');
INSERT INTO `t_district` VALUES ('211382', '凌源市', '210000', '211300', '211382');
INSERT INTO `t_district` VALUES ('211402', '连山区', '210000', '211400', '211402');
INSERT INTO `t_district` VALUES ('211403', '龙港区', '210000', '211400', '211403');
INSERT INTO `t_district` VALUES ('211404', '南票区', '210000', '211400', '211404');
INSERT INTO `t_district` VALUES ('211421', '绥中县', '210000', '211400', '211421');
INSERT INTO `t_district` VALUES ('211422', '建昌县', '210000', '211400', '211422');
INSERT INTO `t_district` VALUES ('211481', '兴城市', '210000', '211400', '211481');
INSERT INTO `t_district` VALUES ('220102', '南关区', '220000', '220100', '220102');
INSERT INTO `t_district` VALUES ('220103', '宽城区', '220000', '220100', '220103');
INSERT INTO `t_district` VALUES ('220104', '朝阳区', '220000', '220100', '220104');
INSERT INTO `t_district` VALUES ('220105', '二道区', '220000', '220100', '220105');
INSERT INTO `t_district` VALUES ('220106', '绿园区', '220000', '220100', '220106');
INSERT INTO `t_district` VALUES ('220112', '双阳区', '220000', '220100', '220112');
INSERT INTO `t_district` VALUES ('220113', '九台区', '220000', '220100', '220113');
INSERT INTO `t_district` VALUES ('220122', '农安县', '220000', '220100', '220122');
INSERT INTO `t_district` VALUES ('220182', '榆树市', '220000', '220100', '220182');
INSERT INTO `t_district` VALUES ('220183', '德惠市', '220000', '220100', '220183');
INSERT INTO `t_district` VALUES ('220202', '昌邑区', '220000', '220200', '220202');
INSERT INTO `t_district` VALUES ('220203', '龙潭区', '220000', '220200', '220203');
INSERT INTO `t_district` VALUES ('220204', '船营区', '220000', '220200', '220204');
INSERT INTO `t_district` VALUES ('220211', '丰满区', '220000', '220200', '220211');
INSERT INTO `t_district` VALUES ('220221', '永吉县', '220000', '220200', '220221');
INSERT INTO `t_district` VALUES ('220281', '蛟河市', '220000', '220200', '220281');
INSERT INTO `t_district` VALUES ('220282', '桦甸市', '220000', '220200', '220282');
INSERT INTO `t_district` VALUES ('220283', '舒兰市', '220000', '220200', '220283');
INSERT INTO `t_district` VALUES ('220284', '磐石市', '220000', '220200', '220284');
INSERT INTO `t_district` VALUES ('220302', '铁西区', '220000', '220300', '220302');
INSERT INTO `t_district` VALUES ('220303', '铁东区', '220000', '220300', '220303');
INSERT INTO `t_district` VALUES ('220322', '梨树县', '220000', '220300', '220322');
INSERT INTO `t_district` VALUES ('220323', '伊通满族自治县', '220000', '220300', '220323');
INSERT INTO `t_district` VALUES ('220381', '公主岭市', '220000', '220300', '220381');
INSERT INTO `t_district` VALUES ('220382', '双辽市', '220000', '220300', '220382');
INSERT INTO `t_district` VALUES ('220402', '龙山区', '220000', '220400', '220402');
INSERT INTO `t_district` VALUES ('220403', '西安区', '220000', '220400', '220403');
INSERT INTO `t_district` VALUES ('220421', '东丰县', '220000', '220400', '220421');
INSERT INTO `t_district` VALUES ('220422', '东辽县', '220000', '220400', '220422');
INSERT INTO `t_district` VALUES ('220502', '东昌区', '220000', '220500', '220502');
INSERT INTO `t_district` VALUES ('220503', '二道江区', '220000', '220500', '220503');
INSERT INTO `t_district` VALUES ('220521', '通化县', '220000', '220500', '220521');
INSERT INTO `t_district` VALUES ('220523', '辉南县', '220000', '220500', '220523');
INSERT INTO `t_district` VALUES ('220524', '柳河县', '220000', '220500', '220524');
INSERT INTO `t_district` VALUES ('220581', '梅河口市', '220000', '220500', '220581');
INSERT INTO `t_district` VALUES ('220582', '集安市', '220000', '220500', '220582');
INSERT INTO `t_district` VALUES ('220602', '浑江区', '220000', '220600', '220602');
INSERT INTO `t_district` VALUES ('220605', '江源区', '220000', '220600', '220605');
INSERT INTO `t_district` VALUES ('220621', '抚松县', '220000', '220600', '220621');
INSERT INTO `t_district` VALUES ('220622', '靖宇县', '220000', '220600', '220622');
INSERT INTO `t_district` VALUES ('220623', '长白朝鲜族自治县', '220000', '220600', '220623');
INSERT INTO `t_district` VALUES ('220681', '临江市', '220000', '220600', '220681');
INSERT INTO `t_district` VALUES ('220702', '宁江区', '220000', '220700', '220702');
INSERT INTO `t_district` VALUES ('220721', '前郭尔罗斯蒙古族自治县', '220000', '220700', '220721');
INSERT INTO `t_district` VALUES ('220722', '长岭县', '220000', '220700', '220722');
INSERT INTO `t_district` VALUES ('220723', '乾安县', '220000', '220700', '220723');
INSERT INTO `t_district` VALUES ('220781', '扶余市', '220000', '220700', '220781');
INSERT INTO `t_district` VALUES ('220802', '洮北区', '220000', '220800', '220802');
INSERT INTO `t_district` VALUES ('220821', '镇赉县', '220000', '220800', '220821');
INSERT INTO `t_district` VALUES ('220822', '通榆县', '220000', '220800', '220822');
INSERT INTO `t_district` VALUES ('220881', '洮南市', '220000', '220800', '220881');
INSERT INTO `t_district` VALUES ('220882', '大安市', '220000', '220800', '220882');
INSERT INTO `t_district` VALUES ('222401', '延吉市', '220000', '222400', '222401');
INSERT INTO `t_district` VALUES ('222402', '图们市', '220000', '222400', '222402');
INSERT INTO `t_district` VALUES ('222403', '敦化市', '220000', '222400', '222403');
INSERT INTO `t_district` VALUES ('222404', '珲春市', '220000', '222400', '222404');
INSERT INTO `t_district` VALUES ('222405', '龙井市', '220000', '222400', '222405');
INSERT INTO `t_district` VALUES ('222406', '和龙市', '220000', '222400', '222406');
INSERT INTO `t_district` VALUES ('222424', '汪清县', '220000', '222400', '222424');
INSERT INTO `t_district` VALUES ('222426', '安图县', '220000', '222400', '222426');
INSERT INTO `t_district` VALUES ('230102', '道里区', '230000', '230100', '230102');
INSERT INTO `t_district` VALUES ('230103', '南岗区', '230000', '230100', '230103');
INSERT INTO `t_district` VALUES ('230104', '道外区', '230000', '230100', '230104');
INSERT INTO `t_district` VALUES ('230108', '平房区', '230000', '230100', '230108');
INSERT INTO `t_district` VALUES ('230109', '松北区', '230000', '230100', '230109');
INSERT INTO `t_district` VALUES ('230110', '香坊区', '230000', '230100', '230110');
INSERT INTO `t_district` VALUES ('230111', '呼兰区', '230000', '230100', '230111');
INSERT INTO `t_district` VALUES ('230112', '阿城区', '230000', '230100', '230112');
INSERT INTO `t_district` VALUES ('230113', '双城区', '230000', '230100', '230113');
INSERT INTO `t_district` VALUES ('230123', '依兰县', '230000', '230100', '230123');
INSERT INTO `t_district` VALUES ('230124', '方正县', '230000', '230100', '230124');
INSERT INTO `t_district` VALUES ('230125', '宾县', '230000', '230100', '230125');
INSERT INTO `t_district` VALUES ('230126', '巴彦县', '230000', '230100', '230126');
INSERT INTO `t_district` VALUES ('230127', '木兰县', '230000', '230100', '230127');
INSERT INTO `t_district` VALUES ('230128', '通河县', '230000', '230100', '230128');
INSERT INTO `t_district` VALUES ('230129', '延寿县', '230000', '230100', '230129');
INSERT INTO `t_district` VALUES ('230183', '尚志市', '230000', '230100', '230183');
INSERT INTO `t_district` VALUES ('230184', '五常市', '230000', '230100', '230184');
INSERT INTO `t_district` VALUES ('230202', '龙沙区', '230000', '230200', '230202');
INSERT INTO `t_district` VALUES ('230203', '建华区', '230000', '230200', '230203');
INSERT INTO `t_district` VALUES ('230204', '铁锋区', '230000', '230200', '230204');
INSERT INTO `t_district` VALUES ('230205', '昂昂溪区', '230000', '230200', '230205');
INSERT INTO `t_district` VALUES ('230206', '富拉尔基区', '230000', '230200', '230206');
INSERT INTO `t_district` VALUES ('230207', '碾子山区', '230000', '230200', '230207');
INSERT INTO `t_district` VALUES ('230208', '梅里斯达斡尔族区', '230000', '230200', '230208');
INSERT INTO `t_district` VALUES ('230221', '龙江县', '230000', '230200', '230221');
INSERT INTO `t_district` VALUES ('230223', '依安县', '230000', '230200', '230223');
INSERT INTO `t_district` VALUES ('230224', '泰来县', '230000', '230200', '230224');
INSERT INTO `t_district` VALUES ('230225', '甘南县', '230000', '230200', '230225');
INSERT INTO `t_district` VALUES ('230227', '富裕县', '230000', '230200', '230227');
INSERT INTO `t_district` VALUES ('230229', '克山县', '230000', '230200', '230229');
INSERT INTO `t_district` VALUES ('230230', '克东县', '230000', '230200', '230230');
INSERT INTO `t_district` VALUES ('230231', '拜泉县', '230000', '230200', '230231');
INSERT INTO `t_district` VALUES ('230281', '讷河市', '230000', '230200', '230281');
INSERT INTO `t_district` VALUES ('230302', '鸡冠区', '230000', '230300', '230302');
INSERT INTO `t_district` VALUES ('230303', '恒山区', '230000', '230300', '230303');
INSERT INTO `t_district` VALUES ('230304', '滴道区', '230000', '230300', '230304');
INSERT INTO `t_district` VALUES ('230305', '梨树区', '230000', '230300', '230305');
INSERT INTO `t_district` VALUES ('230306', '城子河区', '230000', '230300', '230306');
INSERT INTO `t_district` VALUES ('230307', '麻山区', '230000', '230300', '230307');
INSERT INTO `t_district` VALUES ('230321', '鸡东县', '230000', '230300', '230321');
INSERT INTO `t_district` VALUES ('230381', '虎林市', '230000', '230300', '230381');
INSERT INTO `t_district` VALUES ('230382', '密山市', '230000', '230300', '230382');
INSERT INTO `t_district` VALUES ('230402', '向阳区', '230000', '230400', '230402');
INSERT INTO `t_district` VALUES ('230403', '工农区', '230000', '230400', '230403');
INSERT INTO `t_district` VALUES ('230404', '南山区', '230000', '230400', '230404');
INSERT INTO `t_district` VALUES ('230405', '兴安区', '230000', '230400', '230405');
INSERT INTO `t_district` VALUES ('230406', '东山区', '230000', '230400', '230406');
INSERT INTO `t_district` VALUES ('230407', '兴山区', '230000', '230400', '230407');
INSERT INTO `t_district` VALUES ('230421', '萝北县', '230000', '230400', '230421');
INSERT INTO `t_district` VALUES ('230422', '绥滨县', '230000', '230400', '230422');
INSERT INTO `t_district` VALUES ('230502', '尖山区', '230000', '230500', '230502');
INSERT INTO `t_district` VALUES ('230503', '岭东区', '230000', '230500', '230503');
INSERT INTO `t_district` VALUES ('230505', '四方台区', '230000', '230500', '230505');
INSERT INTO `t_district` VALUES ('230506', '宝山区', '230000', '230500', '230506');
INSERT INTO `t_district` VALUES ('230521', '集贤县', '230000', '230500', '230521');
INSERT INTO `t_district` VALUES ('230522', '友谊县', '230000', '230500', '230522');
INSERT INTO `t_district` VALUES ('230523', '宝清县', '230000', '230500', '230523');
INSERT INTO `t_district` VALUES ('230524', '饶河县', '230000', '230500', '230524');
INSERT INTO `t_district` VALUES ('230602', '萨尔图区', '230000', '230600', '230602');
INSERT INTO `t_district` VALUES ('230603', '龙凤区', '230000', '230600', '230603');
INSERT INTO `t_district` VALUES ('230604', '让胡路区', '230000', '230600', '230604');
INSERT INTO `t_district` VALUES ('230605', '红岗区', '230000', '230600', '230605');
INSERT INTO `t_district` VALUES ('230606', '大同区', '230000', '230600', '230606');
INSERT INTO `t_district` VALUES ('230621', '肇州县', '230000', '230600', '230621');
INSERT INTO `t_district` VALUES ('230622', '肇源县', '230000', '230600', '230622');
INSERT INTO `t_district` VALUES ('230623', '林甸县', '230000', '230600', '230623');
INSERT INTO `t_district` VALUES ('230624', '杜尔伯特蒙古族自治县', '230000', '230600', '230624');
INSERT INTO `t_district` VALUES ('230717', '伊美区', '230000', '230700', '230717');
INSERT INTO `t_district` VALUES ('230718', '乌翠区', '230000', '230700', '230718');
INSERT INTO `t_district` VALUES ('230719', '友好区', '230000', '230700', '230719');
INSERT INTO `t_district` VALUES ('230722', '嘉荫县', '230000', '230700', '230722');
INSERT INTO `t_district` VALUES ('230723', '汤旺县', '230000', '230700', '230723');
INSERT INTO `t_district` VALUES ('230724', '丰林县', '230000', '230700', '230724');
INSERT INTO `t_district` VALUES ('230725', '大箐山县', '230000', '230700', '230725');
INSERT INTO `t_district` VALUES ('230726', '南岔县', '230000', '230700', '230726');
INSERT INTO `t_district` VALUES ('230751', '金林区', '230000', '230700', '230751');
INSERT INTO `t_district` VALUES ('230781', '铁力市', '230000', '230700', '230781');
INSERT INTO `t_district` VALUES ('230803', '向阳区', '230000', '230800', '230803');
INSERT INTO `t_district` VALUES ('230804', '前进区', '230000', '230800', '230804');
INSERT INTO `t_district` VALUES ('230805', '东风区', '230000', '230800', '230805');
INSERT INTO `t_district` VALUES ('230811', '郊区', '230000', '230800', '230811');
INSERT INTO `t_district` VALUES ('230822', '桦南县', '230000', '230800', '230822');
INSERT INTO `t_district` VALUES ('230826', '桦川县', '230000', '230800', '230826');
INSERT INTO `t_district` VALUES ('230828', '汤原县', '230000', '230800', '230828');
INSERT INTO `t_district` VALUES ('230881', '同江市', '230000', '230800', '230881');
INSERT INTO `t_district` VALUES ('230882', '富锦市', '230000', '230800', '230882');
INSERT INTO `t_district` VALUES ('230883', '抚远市', '230000', '230800', '230883');
INSERT INTO `t_district` VALUES ('230902', '新兴区', '230000', '230900', '230902');
INSERT INTO `t_district` VALUES ('230903', '桃山区', '230000', '230900', '230903');
INSERT INTO `t_district` VALUES ('230904', '茄子河区', '230000', '230900', '230904');
INSERT INTO `t_district` VALUES ('230921', '勃利县', '230000', '230900', '230921');
INSERT INTO `t_district` VALUES ('231002', '东安区', '230000', '231000', '231002');
INSERT INTO `t_district` VALUES ('231003', '阳明区', '230000', '231000', '231003');
INSERT INTO `t_district` VALUES ('231004', '爱民区', '230000', '231000', '231004');
INSERT INTO `t_district` VALUES ('231005', '西安区', '230000', '231000', '231005');
INSERT INTO `t_district` VALUES ('231025', '林口县', '230000', '231000', '231025');
INSERT INTO `t_district` VALUES ('231081', '绥芬河市', '230000', '231000', '231081');
INSERT INTO `t_district` VALUES ('231083', '海林市', '230000', '231000', '231083');
INSERT INTO `t_district` VALUES ('231084', '宁安市', '230000', '231000', '231084');
INSERT INTO `t_district` VALUES ('231085', '穆棱市', '230000', '231000', '231085');
INSERT INTO `t_district` VALUES ('231086', '东宁市', '230000', '231000', '231086');
INSERT INTO `t_district` VALUES ('231102', '爱辉区', '230000', '231100', '231102');
INSERT INTO `t_district` VALUES ('231123', '逊克县', '230000', '231100', '231123');
INSERT INTO `t_district` VALUES ('231124', '孙吴县', '230000', '231100', '231124');
INSERT INTO `t_district` VALUES ('231181', '北安市', '230000', '231100', '231181');
INSERT INTO `t_district` VALUES ('231182', '五大连池市', '230000', '231100', '231182');
INSERT INTO `t_district` VALUES ('231183', '嫩江市', '230000', '231100', '231183');
INSERT INTO `t_district` VALUES ('231202', '北林区', '230000', '231200', '231202');
INSERT INTO `t_district` VALUES ('231221', '望奎县', '230000', '231200', '231221');
INSERT INTO `t_district` VALUES ('231222', '兰西县', '230000', '231200', '231222');
INSERT INTO `t_district` VALUES ('231223', '青冈县', '230000', '231200', '231223');
INSERT INTO `t_district` VALUES ('231224', '庆安县', '230000', '231200', '231224');
INSERT INTO `t_district` VALUES ('231225', '明水县', '230000', '231200', '231225');
INSERT INTO `t_district` VALUES ('231226', '绥棱县', '230000', '231200', '231226');
INSERT INTO `t_district` VALUES ('231281', '安达市', '230000', '231200', '231281');
INSERT INTO `t_district` VALUES ('231282', '肇东市', '230000', '231200', '231282');
INSERT INTO `t_district` VALUES ('231283', '海伦市', '230000', '231200', '231283');
INSERT INTO `t_district` VALUES ('232701', '漠河市', '230000', '232700', '232701');
INSERT INTO `t_district` VALUES ('232721', '呼玛县', '230000', '232700', '232721');
INSERT INTO `t_district` VALUES ('232722', '塔河县', '230000', '232700', '232722');
INSERT INTO `t_district` VALUES ('310101', '黄浦区', '310000', '310100', '310101');
INSERT INTO `t_district` VALUES ('310104', '徐汇区', '310000', '310100', '310104');
INSERT INTO `t_district` VALUES ('310105', '长宁区', '310000', '310100', '310105');
INSERT INTO `t_district` VALUES ('310106', '静安区', '310000', '310100', '310106');
INSERT INTO `t_district` VALUES ('310107', '普陀区', '310000', '310100', '310107');
INSERT INTO `t_district` VALUES ('310109', '虹口区', '310000', '310100', '310109');
INSERT INTO `t_district` VALUES ('310110', '杨浦区', '310000', '310100', '310110');
INSERT INTO `t_district` VALUES ('310112', '闵行区', '310000', '310100', '310112');
INSERT INTO `t_district` VALUES ('310113', '宝山区', '310000', '310100', '310113');
INSERT INTO `t_district` VALUES ('310114', '嘉定区', '310000', '310100', '310114');
INSERT INTO `t_district` VALUES ('310115', '浦东新区', '310000', '310100', '310115');
INSERT INTO `t_district` VALUES ('310116', '金山区', '310000', '310100', '310116');
INSERT INTO `t_district` VALUES ('310117', '松江区', '310000', '310100', '310117');
INSERT INTO `t_district` VALUES ('310118', '青浦区', '310000', '310100', '310118');
INSERT INTO `t_district` VALUES ('310120', '奉贤区', '310000', '310100', '310120');
INSERT INTO `t_district` VALUES ('310151', '崇明区', '310000', '310100', '310151');
INSERT INTO `t_district` VALUES ('320102', '玄武区', '320000', '320100', '320102');
INSERT INTO `t_district` VALUES ('320104', '秦淮区', '320000', '320100', '320104');
INSERT INTO `t_district` VALUES ('320105', '建邺区', '320000', '320100', '320105');
INSERT INTO `t_district` VALUES ('320106', '鼓楼区', '320000', '320100', '320106');
INSERT INTO `t_district` VALUES ('320111', '浦口区', '320000', '320100', '320111');
INSERT INTO `t_district` VALUES ('320113', '栖霞区', '320000', '320100', '320113');
INSERT INTO `t_district` VALUES ('320114', '雨花台区', '320000', '320100', '320114');
INSERT INTO `t_district` VALUES ('320115', '江宁区', '320000', '320100', '320115');
INSERT INTO `t_district` VALUES ('320116', '六合区', '320000', '320100', '320116');
INSERT INTO `t_district` VALUES ('320117', '溧水区', '320000', '320100', '320117');
INSERT INTO `t_district` VALUES ('320118', '高淳区', '320000', '320100', '320118');
INSERT INTO `t_district` VALUES ('320205', '锡山区', '320000', '320200', '320205');
INSERT INTO `t_district` VALUES ('320206', '惠山区', '320000', '320200', '320206');
INSERT INTO `t_district` VALUES ('320211', '滨湖区', '320000', '320200', '320211');
INSERT INTO `t_district` VALUES ('320213', '梁溪区', '320000', '320200', '320213');
INSERT INTO `t_district` VALUES ('320214', '新吴区', '320000', '320200', '320214');
INSERT INTO `t_district` VALUES ('320281', '江阴市', '320000', '320200', '320281');
INSERT INTO `t_district` VALUES ('320282', '宜兴市', '320000', '320200', '320282');
INSERT INTO `t_district` VALUES ('320302', '鼓楼区', '320000', '320300', '320302');
INSERT INTO `t_district` VALUES ('320303', '云龙区', '320000', '320300', '320303');
INSERT INTO `t_district` VALUES ('320305', '贾汪区', '320000', '320300', '320305');
INSERT INTO `t_district` VALUES ('320311', '泉山区', '320000', '320300', '320311');
INSERT INTO `t_district` VALUES ('320312', '铜山区', '320000', '320300', '320312');
INSERT INTO `t_district` VALUES ('320321', '丰县', '320000', '320300', '320321');
INSERT INTO `t_district` VALUES ('320322', '沛县', '320000', '320300', '320322');
INSERT INTO `t_district` VALUES ('320324', '睢宁县', '320000', '320300', '320324');
INSERT INTO `t_district` VALUES ('320381', '新沂市', '320000', '320300', '320381');
INSERT INTO `t_district` VALUES ('320382', '邳州市', '320000', '320300', '320382');
INSERT INTO `t_district` VALUES ('320402', '天宁区', '320000', '320400', '320402');
INSERT INTO `t_district` VALUES ('320404', '钟楼区', '320000', '320400', '320404');
INSERT INTO `t_district` VALUES ('320411', '新北区', '320000', '320400', '320411');
INSERT INTO `t_district` VALUES ('320412', '武进区', '320000', '320400', '320412');
INSERT INTO `t_district` VALUES ('320413', '金坛区', '320000', '320400', '320413');
INSERT INTO `t_district` VALUES ('320481', '溧阳市', '320000', '320400', '320481');
INSERT INTO `t_district` VALUES ('320505', '虎丘区', '320000', '320500', '320505');
INSERT INTO `t_district` VALUES ('320506', '吴中区', '320000', '320500', '320506');
INSERT INTO `t_district` VALUES ('320507', '相城区', '320000', '320500', '320507');
INSERT INTO `t_district` VALUES ('320508', '姑苏区', '320000', '320500', '320508');
INSERT INTO `t_district` VALUES ('320509', '吴江区', '320000', '320500', '320509');
INSERT INTO `t_district` VALUES ('320581', '常熟市', '320000', '320500', '320581');
INSERT INTO `t_district` VALUES ('320582', '张家港市', '320000', '320500', '320582');
INSERT INTO `t_district` VALUES ('320583', '昆山市', '320000', '320500', '320583');
INSERT INTO `t_district` VALUES ('320585', '太仓市', '320000', '320500', '320585');
INSERT INTO `t_district` VALUES ('320602', '崇川区', '320000', '320600', '320602');
INSERT INTO `t_district` VALUES ('320611', '港闸区', '320000', '320600', '320611');
INSERT INTO `t_district` VALUES ('320612', '通州区', '320000', '320600', '320612');
INSERT INTO `t_district` VALUES ('320623', '如东县', '320000', '320600', '320623');
INSERT INTO `t_district` VALUES ('320681', '启东市', '320000', '320600', '320681');
INSERT INTO `t_district` VALUES ('320682', '如皋市', '320000', '320600', '320682');
INSERT INTO `t_district` VALUES ('320684', '海门市', '320000', '320600', '320684');
INSERT INTO `t_district` VALUES ('320685', '海安市', '320000', '320600', '320685');
INSERT INTO `t_district` VALUES ('320703', '连云区', '320000', '320700', '320703');
INSERT INTO `t_district` VALUES ('320706', '海州区', '320000', '320700', '320706');
INSERT INTO `t_district` VALUES ('320707', '赣榆区', '320000', '320700', '320707');
INSERT INTO `t_district` VALUES ('320722', '东海县', '320000', '320700', '320722');
INSERT INTO `t_district` VALUES ('320723', '灌云县', '320000', '320700', '320723');
INSERT INTO `t_district` VALUES ('320724', '灌南县', '320000', '320700', '320724');
INSERT INTO `t_district` VALUES ('320803', '淮安区', '320000', '320800', '320803');
INSERT INTO `t_district` VALUES ('320804', '淮阴区', '320000', '320800', '320804');
INSERT INTO `t_district` VALUES ('320812', '清江浦区', '320000', '320800', '320812');
INSERT INTO `t_district` VALUES ('320813', '洪泽区', '320000', '320800', '320813');
INSERT INTO `t_district` VALUES ('320826', '涟水县', '320000', '320800', '320826');
INSERT INTO `t_district` VALUES ('320830', '盱眙县', '320000', '320800', '320830');
INSERT INTO `t_district` VALUES ('320831', '金湖县', '320000', '320800', '320831');
INSERT INTO `t_district` VALUES ('320902', '亭湖区', '320000', '320900', '320902');
INSERT INTO `t_district` VALUES ('320903', '盐都区', '320000', '320900', '320903');
INSERT INTO `t_district` VALUES ('320904', '大丰区', '320000', '320900', '320904');
INSERT INTO `t_district` VALUES ('320921', '响水县', '320000', '320900', '320921');
INSERT INTO `t_district` VALUES ('320922', '滨海县', '320000', '320900', '320922');
INSERT INTO `t_district` VALUES ('320923', '阜宁县', '320000', '320900', '320923');
INSERT INTO `t_district` VALUES ('320924', '射阳县', '320000', '320900', '320924');
INSERT INTO `t_district` VALUES ('320925', '建湖县', '320000', '320900', '320925');
INSERT INTO `t_district` VALUES ('320981', '东台市', '320000', '320900', '320981');
INSERT INTO `t_district` VALUES ('321002', '广陵区', '320000', '321000', '321002');
INSERT INTO `t_district` VALUES ('321003', '邗江区', '320000', '321000', '321003');
INSERT INTO `t_district` VALUES ('321012', '江都区', '320000', '321000', '321012');
INSERT INTO `t_district` VALUES ('321023', '宝应县', '320000', '321000', '321023');
INSERT INTO `t_district` VALUES ('321081', '仪征市', '320000', '321000', '321081');
INSERT INTO `t_district` VALUES ('321084', '高邮市', '320000', '321000', '321084');
INSERT INTO `t_district` VALUES ('321102', '京口区', '320000', '321100', '321102');
INSERT INTO `t_district` VALUES ('321111', '润州区', '320000', '321100', '321111');
INSERT INTO `t_district` VALUES ('321112', '丹徒区', '320000', '321100', '321112');
INSERT INTO `t_district` VALUES ('321181', '丹阳市', '320000', '321100', '321181');
INSERT INTO `t_district` VALUES ('321182', '扬中市', '320000', '321100', '321182');
INSERT INTO `t_district` VALUES ('321183', '句容市', '320000', '321100', '321183');
INSERT INTO `t_district` VALUES ('321202', '海陵区', '320000', '321200', '321202');
INSERT INTO `t_district` VALUES ('321203', '高港区', '320000', '321200', '321203');
INSERT INTO `t_district` VALUES ('321204', '姜堰区', '320000', '321200', '321204');
INSERT INTO `t_district` VALUES ('321281', '兴化市', '320000', '321200', '321281');
INSERT INTO `t_district` VALUES ('321282', '靖江市', '320000', '321200', '321282');
INSERT INTO `t_district` VALUES ('321283', '泰兴市', '320000', '321200', '321283');
INSERT INTO `t_district` VALUES ('321302', '宿城区', '320000', '321300', '321302');
INSERT INTO `t_district` VALUES ('321311', '宿豫区', '320000', '321300', '321311');
INSERT INTO `t_district` VALUES ('321322', '沭阳县', '320000', '321300', '321322');
INSERT INTO `t_district` VALUES ('321323', '泗阳县', '320000', '321300', '321323');
INSERT INTO `t_district` VALUES ('321324', '泗洪县', '320000', '321300', '321324');
INSERT INTO `t_district` VALUES ('330102', '上城区', '330000', '330100', '330102');
INSERT INTO `t_district` VALUES ('330103', '下城区', '330000', '330100', '330103');
INSERT INTO `t_district` VALUES ('330104', '江干区', '330000', '330100', '330104');
INSERT INTO `t_district` VALUES ('330105', '拱墅区', '330000', '330100', '330105');
INSERT INTO `t_district` VALUES ('330106', '西湖区', '330000', '330100', '330106');
INSERT INTO `t_district` VALUES ('330108', '滨江区', '330000', '330100', '330108');
INSERT INTO `t_district` VALUES ('330109', '萧山区', '330000', '330100', '330109');
INSERT INTO `t_district` VALUES ('330110', '余杭区', '330000', '330100', '330110');
INSERT INTO `t_district` VALUES ('330111', '富阳区', '330000', '330100', '330111');
INSERT INTO `t_district` VALUES ('330112', '临安区', '330000', '330100', '330112');
INSERT INTO `t_district` VALUES ('330122', '桐庐县', '330000', '330100', '330122');
INSERT INTO `t_district` VALUES ('330127', '淳安县', '330000', '330100', '330127');
INSERT INTO `t_district` VALUES ('330182', '建德市', '330000', '330100', '330182');
INSERT INTO `t_district` VALUES ('330203', '海曙区', '330000', '330200', '330203');
INSERT INTO `t_district` VALUES ('330205', '江北区', '330000', '330200', '330205');
INSERT INTO `t_district` VALUES ('330206', '北仑区', '330000', '330200', '330206');
INSERT INTO `t_district` VALUES ('330211', '镇海区', '330000', '330200', '330211');
INSERT INTO `t_district` VALUES ('330212', '鄞州区', '330000', '330200', '330212');
INSERT INTO `t_district` VALUES ('330213', '奉化区', '330000', '330200', '330213');
INSERT INTO `t_district` VALUES ('330225', '象山县', '330000', '330200', '330225');
INSERT INTO `t_district` VALUES ('330226', '宁海县', '330000', '330200', '330226');
INSERT INTO `t_district` VALUES ('330281', '余姚市', '330000', '330200', '330281');
INSERT INTO `t_district` VALUES ('330282', '慈溪市', '330000', '330200', '330282');
INSERT INTO `t_district` VALUES ('330302', '鹿城区', '330000', '330300', '330302');
INSERT INTO `t_district` VALUES ('330303', '龙湾区', '330000', '330300', '330303');
INSERT INTO `t_district` VALUES ('330304', '瓯海区', '330000', '330300', '330304');
INSERT INTO `t_district` VALUES ('330305', '洞头区', '330000', '330300', '330305');
INSERT INTO `t_district` VALUES ('330324', '永嘉县', '330000', '330300', '330324');
INSERT INTO `t_district` VALUES ('330326', '平阳县', '330000', '330300', '330326');
INSERT INTO `t_district` VALUES ('330327', '苍南县', '330000', '330300', '330327');
INSERT INTO `t_district` VALUES ('330328', '文成县', '330000', '330300', '330328');
INSERT INTO `t_district` VALUES ('330329', '泰顺县', '330000', '330300', '330329');
INSERT INTO `t_district` VALUES ('330381', '瑞安市', '330000', '330300', '330381');
INSERT INTO `t_district` VALUES ('330382', '乐清市', '330000', '330300', '330382');
INSERT INTO `t_district` VALUES ('330383', '龙港市', '330000', '330300', '330383');
INSERT INTO `t_district` VALUES ('330402', '南湖区', '330000', '330400', '330402');
INSERT INTO `t_district` VALUES ('330411', '秀洲区', '330000', '330400', '330411');
INSERT INTO `t_district` VALUES ('330421', '嘉善县', '330000', '330400', '330421');
INSERT INTO `t_district` VALUES ('330424', '海盐县', '330000', '330400', '330424');
INSERT INTO `t_district` VALUES ('330481', '海宁市', '330000', '330400', '330481');
INSERT INTO `t_district` VALUES ('330482', '平湖市', '330000', '330400', '330482');
INSERT INTO `t_district` VALUES ('330483', '桐乡市', '330000', '330400', '330483');
INSERT INTO `t_district` VALUES ('330502', '吴兴区', '330000', '330500', '330502');
INSERT INTO `t_district` VALUES ('330503', '南浔区', '330000', '330500', '330503');
INSERT INTO `t_district` VALUES ('330521', '德清县', '330000', '330500', '330521');
INSERT INTO `t_district` VALUES ('330522', '长兴县', '330000', '330500', '330522');
INSERT INTO `t_district` VALUES ('330523', '安吉县', '330000', '330500', '330523');
INSERT INTO `t_district` VALUES ('330602', '越城区', '330000', '330600', '330602');
INSERT INTO `t_district` VALUES ('330603', '柯桥区', '330000', '330600', '330603');
INSERT INTO `t_district` VALUES ('330604', '上虞区', '330000', '330600', '330604');
INSERT INTO `t_district` VALUES ('330624', '新昌县', '330000', '330600', '330624');
INSERT INTO `t_district` VALUES ('330681', '诸暨市', '330000', '330600', '330681');
INSERT INTO `t_district` VALUES ('330683', '嵊州市', '330000', '330600', '330683');
INSERT INTO `t_district` VALUES ('330702', '婺城区', '330000', '330700', '330702');
INSERT INTO `t_district` VALUES ('330703', '金东区', '330000', '330700', '330703');
INSERT INTO `t_district` VALUES ('330723', '武义县', '330000', '330700', '330723');
INSERT INTO `t_district` VALUES ('330726', '浦江县', '330000', '330700', '330726');
INSERT INTO `t_district` VALUES ('330727', '磐安县', '330000', '330700', '330727');
INSERT INTO `t_district` VALUES ('330781', '兰溪市', '330000', '330700', '330781');
INSERT INTO `t_district` VALUES ('330782', '义乌市', '330000', '330700', '330782');
INSERT INTO `t_district` VALUES ('330783', '东阳市', '330000', '330700', '330783');
INSERT INTO `t_district` VALUES ('330784', '永康市', '330000', '330700', '330784');
INSERT INTO `t_district` VALUES ('330802', '柯城区', '330000', '330800', '330802');
INSERT INTO `t_district` VALUES ('330803', '衢江区', '330000', '330800', '330803');
INSERT INTO `t_district` VALUES ('330822', '常山县', '330000', '330800', '330822');
INSERT INTO `t_district` VALUES ('330824', '开化县', '330000', '330800', '330824');
INSERT INTO `t_district` VALUES ('330825', '龙游县', '330000', '330800', '330825');
INSERT INTO `t_district` VALUES ('330881', '江山市', '330000', '330800', '330881');
INSERT INTO `t_district` VALUES ('330902', '定海区', '330000', '330900', '330902');
INSERT INTO `t_district` VALUES ('330903', '普陀区', '330000', '330900', '330903');
INSERT INTO `t_district` VALUES ('330921', '岱山县', '330000', '330900', '330921');
INSERT INTO `t_district` VALUES ('330922', '嵊泗县', '330000', '330900', '330922');
INSERT INTO `t_district` VALUES ('331002', '椒江区', '330000', '331000', '331002');
INSERT INTO `t_district` VALUES ('331003', '黄岩区', '330000', '331000', '331003');
INSERT INTO `t_district` VALUES ('331004', '路桥区', '330000', '331000', '331004');
INSERT INTO `t_district` VALUES ('331022', '三门县', '330000', '331000', '331022');
INSERT INTO `t_district` VALUES ('331023', '天台县', '330000', '331000', '331023');
INSERT INTO `t_district` VALUES ('331024', '仙居县', '330000', '331000', '331024');
INSERT INTO `t_district` VALUES ('331081', '温岭市', '330000', '331000', '331081');
INSERT INTO `t_district` VALUES ('331082', '临海市', '330000', '331000', '331082');
INSERT INTO `t_district` VALUES ('331083', '玉环市', '330000', '331000', '331083');
INSERT INTO `t_district` VALUES ('331102', '莲都区', '330000', '331100', '331102');
INSERT INTO `t_district` VALUES ('331121', '青田县', '330000', '331100', '331121');
INSERT INTO `t_district` VALUES ('331122', '缙云县', '330000', '331100', '331122');
INSERT INTO `t_district` VALUES ('331123', '遂昌县', '330000', '331100', '331123');
INSERT INTO `t_district` VALUES ('331124', '松阳县', '330000', '331100', '331124');
INSERT INTO `t_district` VALUES ('331125', '云和县', '330000', '331100', '331125');
INSERT INTO `t_district` VALUES ('331126', '庆元县', '330000', '331100', '331126');
INSERT INTO `t_district` VALUES ('331127', '景宁畲族自治县', '330000', '331100', '331127');
INSERT INTO `t_district` VALUES ('331181', '龙泉市', '330000', '331100', '331181');
INSERT INTO `t_district` VALUES ('340102', '瑶海区', '340000', '340100', '340102');
INSERT INTO `t_district` VALUES ('340103', '庐阳区', '340000', '340100', '340103');
INSERT INTO `t_district` VALUES ('340104', '蜀山区', '340000', '340100', '340104');
INSERT INTO `t_district` VALUES ('340111', '包河区', '340000', '340100', '340111');
INSERT INTO `t_district` VALUES ('340121', '长丰县', '340000', '340100', '340121');
INSERT INTO `t_district` VALUES ('340122', '肥东县', '340000', '340100', '340122');
INSERT INTO `t_district` VALUES ('340123', '肥西县', '340000', '340100', '340123');
INSERT INTO `t_district` VALUES ('340124', '庐江县', '340000', '340100', '340124');
INSERT INTO `t_district` VALUES ('340181', '巢湖市', '340000', '340100', '340181');
INSERT INTO `t_district` VALUES ('340202', '镜湖区', '340000', '340200', '340202');
INSERT INTO `t_district` VALUES ('340203', '弋江区', '340000', '340200', '340203');
INSERT INTO `t_district` VALUES ('340207', '鸠江区', '340000', '340200', '340207');
INSERT INTO `t_district` VALUES ('340208', '三山区', '340000', '340200', '340208');
INSERT INTO `t_district` VALUES ('340221', '芜湖县', '340000', '340200', '340221');
INSERT INTO `t_district` VALUES ('340222', '繁昌县', '340000', '340200', '340222');
INSERT INTO `t_district` VALUES ('340223', '南陵县', '340000', '340200', '340223');
INSERT INTO `t_district` VALUES ('340281', '无为市', '340000', '340200', '340281');
INSERT INTO `t_district` VALUES ('340302', '龙子湖区', '340000', '340300', '340302');
INSERT INTO `t_district` VALUES ('340303', '蚌山区', '340000', '340300', '340303');
INSERT INTO `t_district` VALUES ('340304', '禹会区', '340000', '340300', '340304');
INSERT INTO `t_district` VALUES ('340311', '淮上区', '340000', '340300', '340311');
INSERT INTO `t_district` VALUES ('340321', '怀远县', '340000', '340300', '340321');
INSERT INTO `t_district` VALUES ('340322', '五河县', '340000', '340300', '340322');
INSERT INTO `t_district` VALUES ('340323', '固镇县', '340000', '340300', '340323');
INSERT INTO `t_district` VALUES ('340402', '大通区', '340000', '340400', '340402');
INSERT INTO `t_district` VALUES ('340403', '田家庵区', '340000', '340400', '340403');
INSERT INTO `t_district` VALUES ('340404', '谢家集区', '340000', '340400', '340404');
INSERT INTO `t_district` VALUES ('340405', '八公山区', '340000', '340400', '340405');
INSERT INTO `t_district` VALUES ('340406', '潘集区', '340000', '340400', '340406');
INSERT INTO `t_district` VALUES ('340421', '凤台县', '340000', '340400', '340421');
INSERT INTO `t_district` VALUES ('340422', '寿县', '340000', '340400', '340422');
INSERT INTO `t_district` VALUES ('340503', '花山区', '340000', '340500', '340503');
INSERT INTO `t_district` VALUES ('340504', '雨山区', '340000', '340500', '340504');
INSERT INTO `t_district` VALUES ('340506', '博望区', '340000', '340500', '340506');
INSERT INTO `t_district` VALUES ('340521', '当涂县', '340000', '340500', '340521');
INSERT INTO `t_district` VALUES ('340522', '含山县', '340000', '340500', '340522');
INSERT INTO `t_district` VALUES ('340523', '和县', '340000', '340500', '340523');
INSERT INTO `t_district` VALUES ('340602', '杜集区', '340000', '340600', '340602');
INSERT INTO `t_district` VALUES ('340603', '相山区', '340000', '340600', '340603');
INSERT INTO `t_district` VALUES ('340604', '烈山区', '340000', '340600', '340604');
INSERT INTO `t_district` VALUES ('340621', '濉溪县', '340000', '340600', '340621');
INSERT INTO `t_district` VALUES ('340705', '铜官区', '340000', '340700', '340705');
INSERT INTO `t_district` VALUES ('340706', '义安区', '340000', '340700', '340706');
INSERT INTO `t_district` VALUES ('340711', '郊区', '340000', '340700', '340711');
INSERT INTO `t_district` VALUES ('340722', '枞阳县', '340000', '340700', '340722');
INSERT INTO `t_district` VALUES ('340802', '迎江区', '340000', '340800', '340802');
INSERT INTO `t_district` VALUES ('340803', '大观区', '340000', '340800', '340803');
INSERT INTO `t_district` VALUES ('340811', '宜秀区', '340000', '340800', '340811');
INSERT INTO `t_district` VALUES ('340822', '怀宁县', '340000', '340800', '340822');
INSERT INTO `t_district` VALUES ('340825', '太湖县', '340000', '340800', '340825');
INSERT INTO `t_district` VALUES ('340826', '宿松县', '340000', '340800', '340826');
INSERT INTO `t_district` VALUES ('340827', '望江县', '340000', '340800', '340827');
INSERT INTO `t_district` VALUES ('340828', '岳西县', '340000', '340800', '340828');
INSERT INTO `t_district` VALUES ('340881', '桐城市', '340000', '340800', '340881');
INSERT INTO `t_district` VALUES ('340882', '潜山市', '340000', '340800', '340882');
INSERT INTO `t_district` VALUES ('341002', '屯溪区', '340000', '341000', '341002');
INSERT INTO `t_district` VALUES ('341003', '黄山区', '340000', '341000', '341003');
INSERT INTO `t_district` VALUES ('341004', '徽州区', '340000', '341000', '341004');
INSERT INTO `t_district` VALUES ('341021', '歙县', '340000', '341000', '341021');
INSERT INTO `t_district` VALUES ('341022', '休宁县', '340000', '341000', '341022');
INSERT INTO `t_district` VALUES ('341023', '黟县', '340000', '341000', '341023');
INSERT INTO `t_district` VALUES ('341024', '祁门县', '340000', '341000', '341024');
INSERT INTO `t_district` VALUES ('341102', '琅琊区', '340000', '341100', '341102');
INSERT INTO `t_district` VALUES ('341103', '南谯区', '340000', '341100', '341103');
INSERT INTO `t_district` VALUES ('341122', '来安县', '340000', '341100', '341122');
INSERT INTO `t_district` VALUES ('341124', '全椒县', '340000', '341100', '341124');
INSERT INTO `t_district` VALUES ('341125', '定远县', '340000', '341100', '341125');
INSERT INTO `t_district` VALUES ('341126', '凤阳县', '340000', '341100', '341126');
INSERT INTO `t_district` VALUES ('341181', '天长市', '340000', '341100', '341181');
INSERT INTO `t_district` VALUES ('341182', '明光市', '340000', '341100', '341182');
INSERT INTO `t_district` VALUES ('341202', '颍州区', '340000', '341200', '341202');
INSERT INTO `t_district` VALUES ('341203', '颍东区', '340000', '341200', '341203');
INSERT INTO `t_district` VALUES ('341204', '颍泉区', '340000', '341200', '341204');
INSERT INTO `t_district` VALUES ('341221', '临泉县', '340000', '341200', '341221');
INSERT INTO `t_district` VALUES ('341222', '太和县', '340000', '341200', '341222');
INSERT INTO `t_district` VALUES ('341225', '阜南县', '340000', '341200', '341225');
INSERT INTO `t_district` VALUES ('341226', '颍上县', '340000', '341200', '341226');
INSERT INTO `t_district` VALUES ('341282', '界首市', '340000', '341200', '341282');
INSERT INTO `t_district` VALUES ('341302', '埇桥区', '340000', '341300', '341302');
INSERT INTO `t_district` VALUES ('341321', '砀山县', '340000', '341300', '341321');
INSERT INTO `t_district` VALUES ('341322', '萧县', '340000', '341300', '341322');
INSERT INTO `t_district` VALUES ('341323', '灵璧县', '340000', '341300', '341323');
INSERT INTO `t_district` VALUES ('341324', '泗县', '340000', '341300', '341324');
INSERT INTO `t_district` VALUES ('341502', '金安区', '340000', '341500', '341502');
INSERT INTO `t_district` VALUES ('341503', '裕安区', '340000', '341500', '341503');
INSERT INTO `t_district` VALUES ('341504', '叶集区', '340000', '341500', '341504');
INSERT INTO `t_district` VALUES ('341522', '霍邱县', '340000', '341500', '341522');
INSERT INTO `t_district` VALUES ('341523', '舒城县', '340000', '341500', '341523');
INSERT INTO `t_district` VALUES ('341524', '金寨县', '340000', '341500', '341524');
INSERT INTO `t_district` VALUES ('341525', '霍山县', '340000', '341500', '341525');
INSERT INTO `t_district` VALUES ('341602', '谯城区', '340000', '341600', '341602');
INSERT INTO `t_district` VALUES ('341621', '涡阳县', '340000', '341600', '341621');
INSERT INTO `t_district` VALUES ('341622', '蒙城县', '340000', '341600', '341622');
INSERT INTO `t_district` VALUES ('341623', '利辛县', '340000', '341600', '341623');
INSERT INTO `t_district` VALUES ('341702', '贵池区', '340000', '341700', '341702');
INSERT INTO `t_district` VALUES ('341721', '东至县', '340000', '341700', '341721');
INSERT INTO `t_district` VALUES ('341722', '石台县', '340000', '341700', '341722');
INSERT INTO `t_district` VALUES ('341723', '青阳县', '340000', '341700', '341723');
INSERT INTO `t_district` VALUES ('341802', '宣州区', '340000', '341800', '341802');
INSERT INTO `t_district` VALUES ('341821', '郎溪县', '340000', '341800', '341821');
INSERT INTO `t_district` VALUES ('341823', '泾县', '340000', '341800', '341823');
INSERT INTO `t_district` VALUES ('341824', '绩溪县', '340000', '341800', '341824');
INSERT INTO `t_district` VALUES ('341825', '旌德县', '340000', '341800', '341825');
INSERT INTO `t_district` VALUES ('341881', '宁国市', '340000', '341800', '341881');
INSERT INTO `t_district` VALUES ('341882', '广德市', '340000', '341800', '341882');
INSERT INTO `t_district` VALUES ('350102', '鼓楼区', '350000', '350100', '350102');
INSERT INTO `t_district` VALUES ('350103', '台江区', '350000', '350100', '350103');
INSERT INTO `t_district` VALUES ('350104', '仓山区', '350000', '350100', '350104');
INSERT INTO `t_district` VALUES ('350105', '马尾区', '350000', '350100', '350105');
INSERT INTO `t_district` VALUES ('350111', '晋安区', '350000', '350100', '350111');
INSERT INTO `t_district` VALUES ('350112', '长乐区', '350000', '350100', '350112');
INSERT INTO `t_district` VALUES ('350121', '闽侯县', '350000', '350100', '350121');
INSERT INTO `t_district` VALUES ('350122', '连江县', '350000', '350100', '350122');
INSERT INTO `t_district` VALUES ('350123', '罗源县', '350000', '350100', '350123');
INSERT INTO `t_district` VALUES ('350124', '闽清县', '350000', '350100', '350124');
INSERT INTO `t_district` VALUES ('350125', '永泰县', '350000', '350100', '350125');
INSERT INTO `t_district` VALUES ('350128', '平潭县', '350000', '350100', '350128');
INSERT INTO `t_district` VALUES ('350181', '福清市', '350000', '350100', '350181');
INSERT INTO `t_district` VALUES ('350203', '思明区', '350000', '350200', '350203');
INSERT INTO `t_district` VALUES ('350205', '海沧区', '350000', '350200', '350205');
INSERT INTO `t_district` VALUES ('350206', '湖里区', '350000', '350200', '350206');
INSERT INTO `t_district` VALUES ('350211', '集美区', '350000', '350200', '350211');
INSERT INTO `t_district` VALUES ('350212', '同安区', '350000', '350200', '350212');
INSERT INTO `t_district` VALUES ('350213', '翔安区', '350000', '350200', '350213');
INSERT INTO `t_district` VALUES ('350302', '城厢区', '350000', '350300', '350302');
INSERT INTO `t_district` VALUES ('350303', '涵江区', '350000', '350300', '350303');
INSERT INTO `t_district` VALUES ('350304', '荔城区', '350000', '350300', '350304');
INSERT INTO `t_district` VALUES ('350305', '秀屿区', '350000', '350300', '350305');
INSERT INTO `t_district` VALUES ('350322', '仙游县', '350000', '350300', '350322');
INSERT INTO `t_district` VALUES ('350402', '梅列区', '350000', '350400', '350402');
INSERT INTO `t_district` VALUES ('350403', '三元区', '350000', '350400', '350403');
INSERT INTO `t_district` VALUES ('350421', '明溪县', '350000', '350400', '350421');
INSERT INTO `t_district` VALUES ('350423', '清流县', '350000', '350400', '350423');
INSERT INTO `t_district` VALUES ('350424', '宁化县', '350000', '350400', '350424');
INSERT INTO `t_district` VALUES ('350425', '大田县', '350000', '350400', '350425');
INSERT INTO `t_district` VALUES ('350426', '尤溪县', '350000', '350400', '350426');
INSERT INTO `t_district` VALUES ('350427', '沙县', '350000', '350400', '350427');
INSERT INTO `t_district` VALUES ('350428', '将乐县', '350000', '350400', '350428');
INSERT INTO `t_district` VALUES ('350429', '泰宁县', '350000', '350400', '350429');
INSERT INTO `t_district` VALUES ('350430', '建宁县', '350000', '350400', '350430');
INSERT INTO `t_district` VALUES ('350481', '永安市', '350000', '350400', '350481');
INSERT INTO `t_district` VALUES ('350502', '鲤城区', '350000', '350500', '350502');
INSERT INTO `t_district` VALUES ('350503', '丰泽区', '350000', '350500', '350503');
INSERT INTO `t_district` VALUES ('350504', '洛江区', '350000', '350500', '350504');
INSERT INTO `t_district` VALUES ('350505', '泉港区', '350000', '350500', '350505');
INSERT INTO `t_district` VALUES ('350521', '惠安县', '350000', '350500', '350521');
INSERT INTO `t_district` VALUES ('350524', '安溪县', '350000', '350500', '350524');
INSERT INTO `t_district` VALUES ('350525', '永春县', '350000', '350500', '350525');
INSERT INTO `t_district` VALUES ('350526', '德化县', '350000', '350500', '350526');
INSERT INTO `t_district` VALUES ('350527', '金门县', '350000', '350500', '350527');
INSERT INTO `t_district` VALUES ('350581', '石狮市', '350000', '350500', '350581');
INSERT INTO `t_district` VALUES ('350582', '晋江市', '350000', '350500', '350582');
INSERT INTO `t_district` VALUES ('350583', '南安市', '350000', '350500', '350583');
INSERT INTO `t_district` VALUES ('350602', '芗城区', '350000', '350600', '350602');
INSERT INTO `t_district` VALUES ('350603', '龙文区', '350000', '350600', '350603');
INSERT INTO `t_district` VALUES ('350622', '云霄县', '350000', '350600', '350622');
INSERT INTO `t_district` VALUES ('350623', '漳浦县', '350000', '350600', '350623');
INSERT INTO `t_district` VALUES ('350624', '诏安县', '350000', '350600', '350624');
INSERT INTO `t_district` VALUES ('350625', '长泰县', '350000', '350600', '350625');
INSERT INTO `t_district` VALUES ('350626', '东山县', '350000', '350600', '350626');
INSERT INTO `t_district` VALUES ('350627', '南靖县', '350000', '350600', '350627');
INSERT INTO `t_district` VALUES ('350628', '平和县', '350000', '350600', '350628');
INSERT INTO `t_district` VALUES ('350629', '华安县', '350000', '350600', '350629');
INSERT INTO `t_district` VALUES ('350681', '龙海市', '350000', '350600', '350681');
INSERT INTO `t_district` VALUES ('350702', '延平区', '350000', '350700', '350702');
INSERT INTO `t_district` VALUES ('350703', '建阳区', '350000', '350700', '350703');
INSERT INTO `t_district` VALUES ('350721', '顺昌县', '350000', '350700', '350721');
INSERT INTO `t_district` VALUES ('350722', '浦城县', '350000', '350700', '350722');
INSERT INTO `t_district` VALUES ('350723', '光泽县', '350000', '350700', '350723');
INSERT INTO `t_district` VALUES ('350724', '松溪县', '350000', '350700', '350724');
INSERT INTO `t_district` VALUES ('350725', '政和县', '350000', '350700', '350725');
INSERT INTO `t_district` VALUES ('350781', '邵武市', '350000', '350700', '350781');
INSERT INTO `t_district` VALUES ('350782', '武夷山市', '350000', '350700', '350782');
INSERT INTO `t_district` VALUES ('350783', '建瓯市', '350000', '350700', '350783');
INSERT INTO `t_district` VALUES ('350802', '新罗区', '350000', '350800', '350802');
INSERT INTO `t_district` VALUES ('350803', '永定区', '350000', '350800', '350803');
INSERT INTO `t_district` VALUES ('350821', '长汀县', '350000', '350800', '350821');
INSERT INTO `t_district` VALUES ('350823', '上杭县', '350000', '350800', '350823');
INSERT INTO `t_district` VALUES ('350824', '武平县', '350000', '350800', '350824');
INSERT INTO `t_district` VALUES ('350825', '连城县', '350000', '350800', '350825');
INSERT INTO `t_district` VALUES ('350881', '漳平市', '350000', '350800', '350881');
INSERT INTO `t_district` VALUES ('350902', '蕉城区', '350000', '350900', '350902');
INSERT INTO `t_district` VALUES ('350921', '霞浦县', '350000', '350900', '350921');
INSERT INTO `t_district` VALUES ('350922', '古田县', '350000', '350900', '350922');
INSERT INTO `t_district` VALUES ('350923', '屏南县', '350000', '350900', '350923');
INSERT INTO `t_district` VALUES ('350924', '寿宁县', '350000', '350900', '350924');
INSERT INTO `t_district` VALUES ('350925', '周宁县', '350000', '350900', '350925');
INSERT INTO `t_district` VALUES ('350926', '柘荣县', '350000', '350900', '350926');
INSERT INTO `t_district` VALUES ('350981', '福安市', '350000', '350900', '350981');
INSERT INTO `t_district` VALUES ('350982', '福鼎市', '350000', '350900', '350982');
INSERT INTO `t_district` VALUES ('360102', '东湖区', '360000', '360100', '360102');
INSERT INTO `t_district` VALUES ('360103', '西湖区', '360000', '360100', '360103');
INSERT INTO `t_district` VALUES ('360104', '青云谱区', '360000', '360100', '360104');
INSERT INTO `t_district` VALUES ('360111', '青山湖区', '360000', '360100', '360111');
INSERT INTO `t_district` VALUES ('360112', '新建区', '360000', '360100', '360112');
INSERT INTO `t_district` VALUES ('360113', '红谷滩区', '360000', '360100', '360113');
INSERT INTO `t_district` VALUES ('360121', '南昌县', '360000', '360100', '360121');
INSERT INTO `t_district` VALUES ('360123', '安义县', '360000', '360100', '360123');
INSERT INTO `t_district` VALUES ('360124', '进贤县', '360000', '360100', '360124');
INSERT INTO `t_district` VALUES ('360202', '昌江区', '360000', '360200', '360202');
INSERT INTO `t_district` VALUES ('360203', '珠山区', '360000', '360200', '360203');
INSERT INTO `t_district` VALUES ('360222', '浮梁县', '360000', '360200', '360222');
INSERT INTO `t_district` VALUES ('360281', '乐平市', '360000', '360200', '360281');
INSERT INTO `t_district` VALUES ('360302', '安源区', '360000', '360300', '360302');
INSERT INTO `t_district` VALUES ('360313', '湘东区', '360000', '360300', '360313');
INSERT INTO `t_district` VALUES ('360321', '莲花县', '360000', '360300', '360321');
INSERT INTO `t_district` VALUES ('360322', '上栗县', '360000', '360300', '360322');
INSERT INTO `t_district` VALUES ('360323', '芦溪县', '360000', '360300', '360323');
INSERT INTO `t_district` VALUES ('360402', '濂溪区', '360000', '360400', '360402');
INSERT INTO `t_district` VALUES ('360403', '浔阳区', '360000', '360400', '360403');
INSERT INTO `t_district` VALUES ('360404', '柴桑区', '360000', '360400', '360404');
INSERT INTO `t_district` VALUES ('360423', '武宁县', '360000', '360400', '360423');
INSERT INTO `t_district` VALUES ('360424', '修水县', '360000', '360400', '360424');
INSERT INTO `t_district` VALUES ('360425', '永修县', '360000', '360400', '360425');
INSERT INTO `t_district` VALUES ('360426', '德安县', '360000', '360400', '360426');
INSERT INTO `t_district` VALUES ('360428', '都昌县', '360000', '360400', '360428');
INSERT INTO `t_district` VALUES ('360429', '湖口县', '360000', '360400', '360429');
INSERT INTO `t_district` VALUES ('360430', '彭泽县', '360000', '360400', '360430');
INSERT INTO `t_district` VALUES ('360481', '瑞昌市', '360000', '360400', '360481');
INSERT INTO `t_district` VALUES ('360482', '共青城市', '360000', '360400', '360482');
INSERT INTO `t_district` VALUES ('360483', '庐山市', '360000', '360400', '360483');
INSERT INTO `t_district` VALUES ('360502', '渝水区', '360000', '360500', '360502');
INSERT INTO `t_district` VALUES ('360521', '分宜县', '360000', '360500', '360521');
INSERT INTO `t_district` VALUES ('360602', '月湖区', '360000', '360600', '360602');
INSERT INTO `t_district` VALUES ('360603', '余江区', '360000', '360600', '360603');
INSERT INTO `t_district` VALUES ('360681', '贵溪市', '360000', '360600', '360681');
INSERT INTO `t_district` VALUES ('360702', '章贡区', '360000', '360700', '360702');
INSERT INTO `t_district` VALUES ('360703', '南康区', '360000', '360700', '360703');
INSERT INTO `t_district` VALUES ('360704', '赣县区', '360000', '360700', '360704');
INSERT INTO `t_district` VALUES ('360722', '信丰县', '360000', '360700', '360722');
INSERT INTO `t_district` VALUES ('360723', '大余县', '360000', '360700', '360723');
INSERT INTO `t_district` VALUES ('360724', '上犹县', '360000', '360700', '360724');
INSERT INTO `t_district` VALUES ('360725', '崇义县', '360000', '360700', '360725');
INSERT INTO `t_district` VALUES ('360726', '安远县', '360000', '360700', '360726');
INSERT INTO `t_district` VALUES ('360727', '龙南县', '360000', '360700', '360727');
INSERT INTO `t_district` VALUES ('360728', '定南县', '360000', '360700', '360728');
INSERT INTO `t_district` VALUES ('360729', '全南县', '360000', '360700', '360729');
INSERT INTO `t_district` VALUES ('360730', '宁都县', '360000', '360700', '360730');
INSERT INTO `t_district` VALUES ('360731', '于都县', '360000', '360700', '360731');
INSERT INTO `t_district` VALUES ('360732', '兴国县', '360000', '360700', '360732');
INSERT INTO `t_district` VALUES ('360733', '会昌县', '360000', '360700', '360733');
INSERT INTO `t_district` VALUES ('360734', '寻乌县', '360000', '360700', '360734');
INSERT INTO `t_district` VALUES ('360735', '石城县', '360000', '360700', '360735');
INSERT INTO `t_district` VALUES ('360781', '瑞金市', '360000', '360700', '360781');
INSERT INTO `t_district` VALUES ('360802', '吉州区', '360000', '360800', '360802');
INSERT INTO `t_district` VALUES ('360803', '青原区', '360000', '360800', '360803');
INSERT INTO `t_district` VALUES ('360821', '吉安县', '360000', '360800', '360821');
INSERT INTO `t_district` VALUES ('360822', '吉水县', '360000', '360800', '360822');
INSERT INTO `t_district` VALUES ('360823', '峡江县', '360000', '360800', '360823');
INSERT INTO `t_district` VALUES ('360824', '新干县', '360000', '360800', '360824');
INSERT INTO `t_district` VALUES ('360825', '永丰县', '360000', '360800', '360825');
INSERT INTO `t_district` VALUES ('360826', '泰和县', '360000', '360800', '360826');
INSERT INTO `t_district` VALUES ('360827', '遂川县', '360000', '360800', '360827');
INSERT INTO `t_district` VALUES ('360828', '万安县', '360000', '360800', '360828');
INSERT INTO `t_district` VALUES ('360829', '安福县', '360000', '360800', '360829');
INSERT INTO `t_district` VALUES ('360830', '永新县', '360000', '360800', '360830');
INSERT INTO `t_district` VALUES ('360881', '井冈山市', '360000', '360800', '360881');
INSERT INTO `t_district` VALUES ('360902', '袁州区', '360000', '360900', '360902');
INSERT INTO `t_district` VALUES ('360921', '奉新县', '360000', '360900', '360921');
INSERT INTO `t_district` VALUES ('360922', '万载县', '360000', '360900', '360922');
INSERT INTO `t_district` VALUES ('360923', '上高县', '360000', '360900', '360923');
INSERT INTO `t_district` VALUES ('360924', '宜丰县', '360000', '360900', '360924');
INSERT INTO `t_district` VALUES ('360925', '靖安县', '360000', '360900', '360925');
INSERT INTO `t_district` VALUES ('360926', '铜鼓县', '360000', '360900', '360926');
INSERT INTO `t_district` VALUES ('360981', '丰城市', '360000', '360900', '360981');
INSERT INTO `t_district` VALUES ('360982', '樟树市', '360000', '360900', '360982');
INSERT INTO `t_district` VALUES ('360983', '高安市', '360000', '360900', '360983');
INSERT INTO `t_district` VALUES ('361002', '临川区', '360000', '361000', '361002');
INSERT INTO `t_district` VALUES ('361003', '东乡区', '360000', '361000', '361003');
INSERT INTO `t_district` VALUES ('361021', '南城县', '360000', '361000', '361021');
INSERT INTO `t_district` VALUES ('361022', '黎川县', '360000', '361000', '361022');
INSERT INTO `t_district` VALUES ('361023', '南丰县', '360000', '361000', '361023');
INSERT INTO `t_district` VALUES ('361024', '崇仁县', '360000', '361000', '361024');
INSERT INTO `t_district` VALUES ('361025', '乐安县', '360000', '361000', '361025');
INSERT INTO `t_district` VALUES ('361026', '宜黄县', '360000', '361000', '361026');
INSERT INTO `t_district` VALUES ('361027', '金溪县', '360000', '361000', '361027');
INSERT INTO `t_district` VALUES ('361028', '资溪县', '360000', '361000', '361028');
INSERT INTO `t_district` VALUES ('361030', '广昌县', '360000', '361000', '361030');
INSERT INTO `t_district` VALUES ('361102', '信州区', '360000', '361100', '361102');
INSERT INTO `t_district` VALUES ('361103', '广丰区', '360000', '361100', '361103');
INSERT INTO `t_district` VALUES ('361104', '广信区', '360000', '361100', '361104');
INSERT INTO `t_district` VALUES ('361123', '玉山县', '360000', '361100', '361123');
INSERT INTO `t_district` VALUES ('361124', '铅山县', '360000', '361100', '361124');
INSERT INTO `t_district` VALUES ('361125', '横峰县', '360000', '361100', '361125');
INSERT INTO `t_district` VALUES ('361126', '弋阳县', '360000', '361100', '361126');
INSERT INTO `t_district` VALUES ('361127', '余干县', '360000', '361100', '361127');
INSERT INTO `t_district` VALUES ('361128', '鄱阳县', '360000', '361100', '361128');
INSERT INTO `t_district` VALUES ('361129', '万年县', '360000', '361100', '361129');
INSERT INTO `t_district` VALUES ('361130', '婺源县', '360000', '361100', '361130');
INSERT INTO `t_district` VALUES ('361181', '德兴市', '360000', '361100', '361181');
INSERT INTO `t_district` VALUES ('370102', '历下区', '370000', '370100', '370102');
INSERT INTO `t_district` VALUES ('370103', '市中区', '370000', '370100', '370103');
INSERT INTO `t_district` VALUES ('370104', '槐荫区', '370000', '370100', '370104');
INSERT INTO `t_district` VALUES ('370105', '天桥区', '370000', '370100', '370105');
INSERT INTO `t_district` VALUES ('370112', '历城区', '370000', '370100', '370112');
INSERT INTO `t_district` VALUES ('370113', '长清区', '370000', '370100', '370113');
INSERT INTO `t_district` VALUES ('370114', '章丘区', '370000', '370100', '370114');
INSERT INTO `t_district` VALUES ('370115', '济阳区', '370000', '370100', '370115');
INSERT INTO `t_district` VALUES ('370116', '莱芜区', '370000', '370100', '370116');
INSERT INTO `t_district` VALUES ('370117', '钢城区', '370000', '370100', '370117');
INSERT INTO `t_district` VALUES ('370124', '平阴县', '370000', '370100', '370124');
INSERT INTO `t_district` VALUES ('370126', '商河县', '370000', '370100', '370126');
INSERT INTO `t_district` VALUES ('370202', '市南区', '370000', '370200', '370202');
INSERT INTO `t_district` VALUES ('370203', '市北区', '370000', '370200', '370203');
INSERT INTO `t_district` VALUES ('370211', '黄岛区', '370000', '370200', '370211');
INSERT INTO `t_district` VALUES ('370212', '崂山区', '370000', '370200', '370212');
INSERT INTO `t_district` VALUES ('370213', '李沧区', '370000', '370200', '370213');
INSERT INTO `t_district` VALUES ('370214', '城阳区', '370000', '370200', '370214');
INSERT INTO `t_district` VALUES ('370215', '即墨区', '370000', '370200', '370215');
INSERT INTO `t_district` VALUES ('370281', '胶州市', '370000', '370200', '370281');
INSERT INTO `t_district` VALUES ('370283', '平度市', '370000', '370200', '370283');
INSERT INTO `t_district` VALUES ('370285', '莱西市', '370000', '370200', '370285');
INSERT INTO `t_district` VALUES ('370302', '淄川区', '370000', '370300', '370302');
INSERT INTO `t_district` VALUES ('370303', '张店区', '370000', '370300', '370303');
INSERT INTO `t_district` VALUES ('370304', '博山区', '370000', '370300', '370304');
INSERT INTO `t_district` VALUES ('370305', '临淄区', '370000', '370300', '370305');
INSERT INTO `t_district` VALUES ('370306', '周村区', '370000', '370300', '370306');
INSERT INTO `t_district` VALUES ('370321', '桓台县', '370000', '370300', '370321');
INSERT INTO `t_district` VALUES ('370322', '高青县', '370000', '370300', '370322');
INSERT INTO `t_district` VALUES ('370323', '沂源县', '370000', '370300', '370323');
INSERT INTO `t_district` VALUES ('370402', '市中区', '370000', '370400', '370402');
INSERT INTO `t_district` VALUES ('370403', '薛城区', '370000', '370400', '370403');
INSERT INTO `t_district` VALUES ('370404', '峄城区', '370000', '370400', '370404');
INSERT INTO `t_district` VALUES ('370405', '台儿庄区', '370000', '370400', '370405');
INSERT INTO `t_district` VALUES ('370406', '山亭区', '370000', '370400', '370406');
INSERT INTO `t_district` VALUES ('370481', '滕州市', '370000', '370400', '370481');
INSERT INTO `t_district` VALUES ('370502', '东营区', '370000', '370500', '370502');
INSERT INTO `t_district` VALUES ('370503', '河口区', '370000', '370500', '370503');
INSERT INTO `t_district` VALUES ('370505', '垦利区', '370000', '370500', '370505');
INSERT INTO `t_district` VALUES ('370522', '利津县', '370000', '370500', '370522');
INSERT INTO `t_district` VALUES ('370523', '广饶县', '370000', '370500', '370523');
INSERT INTO `t_district` VALUES ('370602', '芝罘区', '370000', '370600', '370602');
INSERT INTO `t_district` VALUES ('370611', '福山区', '370000', '370600', '370611');
INSERT INTO `t_district` VALUES ('370612', '牟平区', '370000', '370600', '370612');
INSERT INTO `t_district` VALUES ('370613', '莱山区', '370000', '370600', '370613');
INSERT INTO `t_district` VALUES ('370634', '长岛县', '370000', '370600', '370634');
INSERT INTO `t_district` VALUES ('370681', '龙口市', '370000', '370600', '370681');
INSERT INTO `t_district` VALUES ('370682', '莱阳市', '370000', '370600', '370682');
INSERT INTO `t_district` VALUES ('370683', '莱州市', '370000', '370600', '370683');
INSERT INTO `t_district` VALUES ('370684', '蓬莱市', '370000', '370600', '370684');
INSERT INTO `t_district` VALUES ('370685', '招远市', '370000', '370600', '370685');
INSERT INTO `t_district` VALUES ('370686', '栖霞市', '370000', '370600', '370686');
INSERT INTO `t_district` VALUES ('370687', '海阳市', '370000', '370600', '370687');
INSERT INTO `t_district` VALUES ('370702', '潍城区', '370000', '370700', '370702');
INSERT INTO `t_district` VALUES ('370703', '寒亭区', '370000', '370700', '370703');
INSERT INTO `t_district` VALUES ('370704', '坊子区', '370000', '370700', '370704');
INSERT INTO `t_district` VALUES ('370705', '奎文区', '370000', '370700', '370705');
INSERT INTO `t_district` VALUES ('370724', '临朐县', '370000', '370700', '370724');
INSERT INTO `t_district` VALUES ('370725', '昌乐县', '370000', '370700', '370725');
INSERT INTO `t_district` VALUES ('370781', '青州市', '370000', '370700', '370781');
INSERT INTO `t_district` VALUES ('370782', '诸城市', '370000', '370700', '370782');
INSERT INTO `t_district` VALUES ('370783', '寿光市', '370000', '370700', '370783');
INSERT INTO `t_district` VALUES ('370784', '安丘市', '370000', '370700', '370784');
INSERT INTO `t_district` VALUES ('370785', '高密市', '370000', '370700', '370785');
INSERT INTO `t_district` VALUES ('370786', '昌邑市', '370000', '370700', '370786');
INSERT INTO `t_district` VALUES ('370811', '任城区', '370000', '370800', '370811');
INSERT INTO `t_district` VALUES ('370812', '兖州区', '370000', '370800', '370812');
INSERT INTO `t_district` VALUES ('370826', '微山县', '370000', '370800', '370826');
INSERT INTO `t_district` VALUES ('370827', '鱼台县', '370000', '370800', '370827');
INSERT INTO `t_district` VALUES ('370828', '金乡县', '370000', '370800', '370828');
INSERT INTO `t_district` VALUES ('370829', '嘉祥县', '370000', '370800', '370829');
INSERT INTO `t_district` VALUES ('370830', '汶上县', '370000', '370800', '370830');
INSERT INTO `t_district` VALUES ('370831', '泗水县', '370000', '370800', '370831');
INSERT INTO `t_district` VALUES ('370832', '梁山县', '370000', '370800', '370832');
INSERT INTO `t_district` VALUES ('370881', '曲阜市', '370000', '370800', '370881');
INSERT INTO `t_district` VALUES ('370883', '邹城市', '370000', '370800', '370883');
INSERT INTO `t_district` VALUES ('370902', '泰山区', '370000', '370900', '370902');
INSERT INTO `t_district` VALUES ('370911', '岱岳区', '370000', '370900', '370911');
INSERT INTO `t_district` VALUES ('370921', '宁阳县', '370000', '370900', '370921');
INSERT INTO `t_district` VALUES ('370923', '东平县', '370000', '370900', '370923');
INSERT INTO `t_district` VALUES ('370982', '新泰市', '370000', '370900', '370982');
INSERT INTO `t_district` VALUES ('370983', '肥城市', '370000', '370900', '370983');
INSERT INTO `t_district` VALUES ('371002', '环翠区', '370000', '371000', '371002');
INSERT INTO `t_district` VALUES ('371003', '文登区', '370000', '371000', '371003');
INSERT INTO `t_district` VALUES ('371082', '荣成市', '370000', '371000', '371082');
INSERT INTO `t_district` VALUES ('371083', '乳山市', '370000', '371000', '371083');
INSERT INTO `t_district` VALUES ('371102', '东港区', '370000', '371100', '371102');
INSERT INTO `t_district` VALUES ('371103', '岚山区', '370000', '371100', '371103');
INSERT INTO `t_district` VALUES ('371121', '五莲县', '370000', '371100', '371121');
INSERT INTO `t_district` VALUES ('371122', '莒县', '370000', '371100', '371122');
INSERT INTO `t_district` VALUES ('371302', '兰山区', '370000', '371300', '371302');
INSERT INTO `t_district` VALUES ('371311', '罗庄区', '370000', '371300', '371311');
INSERT INTO `t_district` VALUES ('371312', '河东区', '370000', '371300', '371312');
INSERT INTO `t_district` VALUES ('371321', '沂南县', '370000', '371300', '371321');
INSERT INTO `t_district` VALUES ('371322', '郯城县', '370000', '371300', '371322');
INSERT INTO `t_district` VALUES ('371323', '沂水县', '370000', '371300', '371323');
INSERT INTO `t_district` VALUES ('371324', '兰陵县', '370000', '371300', '371324');
INSERT INTO `t_district` VALUES ('371325', '费县', '370000', '371300', '371325');
INSERT INTO `t_district` VALUES ('371326', '平邑县', '370000', '371300', '371326');
INSERT INTO `t_district` VALUES ('371327', '莒南县', '370000', '371300', '371327');
INSERT INTO `t_district` VALUES ('371328', '蒙阴县', '370000', '371300', '371328');
INSERT INTO `t_district` VALUES ('371329', '临沭县', '370000', '371300', '371329');
INSERT INTO `t_district` VALUES ('371402', '德城区', '370000', '371400', '371402');
INSERT INTO `t_district` VALUES ('371403', '陵城区', '370000', '371400', '371403');
INSERT INTO `t_district` VALUES ('371422', '宁津县', '370000', '371400', '371422');
INSERT INTO `t_district` VALUES ('371423', '庆云县', '370000', '371400', '371423');
INSERT INTO `t_district` VALUES ('371424', '临邑县', '370000', '371400', '371424');
INSERT INTO `t_district` VALUES ('371425', '齐河县', '370000', '371400', '371425');
INSERT INTO `t_district` VALUES ('371426', '平原县', '370000', '371400', '371426');
INSERT INTO `t_district` VALUES ('371427', '夏津县', '370000', '371400', '371427');
INSERT INTO `t_district` VALUES ('371428', '武城县', '370000', '371400', '371428');
INSERT INTO `t_district` VALUES ('371481', '乐陵市', '370000', '371400', '371481');
INSERT INTO `t_district` VALUES ('371482', '禹城市', '370000', '371400', '371482');
INSERT INTO `t_district` VALUES ('371502', '东昌府区', '370000', '371500', '371502');
INSERT INTO `t_district` VALUES ('371503', '茌平区', '370000', '371500', '371503');
INSERT INTO `t_district` VALUES ('371521', '阳谷县', '370000', '371500', '371521');
INSERT INTO `t_district` VALUES ('371522', '莘县', '370000', '371500', '371522');
INSERT INTO `t_district` VALUES ('371524', '东阿县', '370000', '371500', '371524');
INSERT INTO `t_district` VALUES ('371525', '冠县', '370000', '371500', '371525');
INSERT INTO `t_district` VALUES ('371526', '高唐县', '370000', '371500', '371526');
INSERT INTO `t_district` VALUES ('371581', '临清市', '370000', '371500', '371581');
INSERT INTO `t_district` VALUES ('371602', '滨城区', '370000', '371600', '371602');
INSERT INTO `t_district` VALUES ('371603', '沾化区', '370000', '371600', '371603');
INSERT INTO `t_district` VALUES ('371621', '惠民县', '370000', '371600', '371621');
INSERT INTO `t_district` VALUES ('371622', '阳信县', '370000', '371600', '371622');
INSERT INTO `t_district` VALUES ('371623', '无棣县', '370000', '371600', '371623');
INSERT INTO `t_district` VALUES ('371625', '博兴县', '370000', '371600', '371625');
INSERT INTO `t_district` VALUES ('371681', '邹平市', '370000', '371600', '371681');
INSERT INTO `t_district` VALUES ('371702', '牡丹区', '370000', '371700', '371702');
INSERT INTO `t_district` VALUES ('371703', '定陶区', '370000', '371700', '371703');
INSERT INTO `t_district` VALUES ('371721', '曹县', '370000', '371700', '371721');
INSERT INTO `t_district` VALUES ('371722', '单县', '370000', '371700', '371722');
INSERT INTO `t_district` VALUES ('371723', '成武县', '370000', '371700', '371723');
INSERT INTO `t_district` VALUES ('371724', '巨野县', '370000', '371700', '371724');
INSERT INTO `t_district` VALUES ('371725', '郓城县', '370000', '371700', '371725');
INSERT INTO `t_district` VALUES ('371726', '鄄城县', '370000', '371700', '371726');
INSERT INTO `t_district` VALUES ('371728', '东明县', '370000', '371700', '371728');
INSERT INTO `t_district` VALUES ('410102', '中原区', '410000', '410100', '410102');
INSERT INTO `t_district` VALUES ('410103', '二七区', '410000', '410100', '410103');
INSERT INTO `t_district` VALUES ('410104', '管城回族区', '410000', '410100', '410104');
INSERT INTO `t_district` VALUES ('410105', '金水区', '410000', '410100', '410105');
INSERT INTO `t_district` VALUES ('410106', '上街区', '410000', '410100', '410106');
INSERT INTO `t_district` VALUES ('410108', '惠济区', '410000', '410100', '410108');
INSERT INTO `t_district` VALUES ('410122', '中牟县', '410000', '410100', '410122');
INSERT INTO `t_district` VALUES ('410181', '巩义市', '410000', '410100', '410181');
INSERT INTO `t_district` VALUES ('410182', '荥阳市', '410000', '410100', '410182');
INSERT INTO `t_district` VALUES ('410183', '新密市', '410000', '410100', '410183');
INSERT INTO `t_district` VALUES ('410184', '新郑市', '410000', '410100', '410184');
INSERT INTO `t_district` VALUES ('410185', '登封市', '410000', '410100', '410185');
INSERT INTO `t_district` VALUES ('410202', '龙亭区', '410000', '410200', '410202');
INSERT INTO `t_district` VALUES ('410203', '顺河回族区', '410000', '410200', '410203');
INSERT INTO `t_district` VALUES ('410204', '鼓楼区', '410000', '410200', '410204');
INSERT INTO `t_district` VALUES ('410205', '禹王台区', '410000', '410200', '410205');
INSERT INTO `t_district` VALUES ('410212', '祥符区', '410000', '410200', '410212');
INSERT INTO `t_district` VALUES ('410221', '杞县', '410000', '410200', '410221');
INSERT INTO `t_district` VALUES ('410222', '通许县', '410000', '410200', '410222');
INSERT INTO `t_district` VALUES ('410223', '尉氏县', '410000', '410200', '410223');
INSERT INTO `t_district` VALUES ('410225', '兰考县', '410000', '410200', '410225');
INSERT INTO `t_district` VALUES ('410302', '老城区', '410000', '410300', '410302');
INSERT INTO `t_district` VALUES ('410303', '西工区', '410000', '410300', '410303');
INSERT INTO `t_district` VALUES ('410304', '瀍河回族区', '410000', '410300', '410304');
INSERT INTO `t_district` VALUES ('410305', '涧西区', '410000', '410300', '410305');
INSERT INTO `t_district` VALUES ('410306', '吉利区', '410000', '410300', '410306');
INSERT INTO `t_district` VALUES ('410311', '洛龙区', '410000', '410300', '410311');
INSERT INTO `t_district` VALUES ('410322', '孟津县', '410000', '410300', '410322');
INSERT INTO `t_district` VALUES ('410323', '新安县', '410000', '410300', '410323');
INSERT INTO `t_district` VALUES ('410324', '栾川县', '410000', '410300', '410324');
INSERT INTO `t_district` VALUES ('410325', '嵩县', '410000', '410300', '410325');
INSERT INTO `t_district` VALUES ('410326', '汝阳县', '410000', '410300', '410326');
INSERT INTO `t_district` VALUES ('410327', '宜阳县', '410000', '410300', '410327');
INSERT INTO `t_district` VALUES ('410328', '洛宁县', '410000', '410300', '410328');
INSERT INTO `t_district` VALUES ('410329', '伊川县', '410000', '410300', '410329');
INSERT INTO `t_district` VALUES ('410381', '偃师市', '410000', '410300', '410381');
INSERT INTO `t_district` VALUES ('410402', '新华区', '410000', '410400', '410402');
INSERT INTO `t_district` VALUES ('410403', '卫东区', '410000', '410400', '410403');
INSERT INTO `t_district` VALUES ('410404', '石龙区', '410000', '410400', '410404');
INSERT INTO `t_district` VALUES ('410411', '湛河区', '410000', '410400', '410411');
INSERT INTO `t_district` VALUES ('410421', '宝丰县', '410000', '410400', '410421');
INSERT INTO `t_district` VALUES ('410422', '叶县', '410000', '410400', '410422');
INSERT INTO `t_district` VALUES ('410423', '鲁山县', '410000', '410400', '410423');
INSERT INTO `t_district` VALUES ('410425', '郏县', '410000', '410400', '410425');
INSERT INTO `t_district` VALUES ('410481', '舞钢市', '410000', '410400', '410481');
INSERT INTO `t_district` VALUES ('410482', '汝州市', '410000', '410400', '410482');
INSERT INTO `t_district` VALUES ('410502', '文峰区', '410000', '410500', '410502');
INSERT INTO `t_district` VALUES ('410503', '北关区', '410000', '410500', '410503');
INSERT INTO `t_district` VALUES ('410505', '殷都区', '410000', '410500', '410505');
INSERT INTO `t_district` VALUES ('410506', '龙安区', '410000', '410500', '410506');
INSERT INTO `t_district` VALUES ('410522', '安阳县', '410000', '410500', '410522');
INSERT INTO `t_district` VALUES ('410523', '汤阴县', '410000', '410500', '410523');
INSERT INTO `t_district` VALUES ('410526', '滑县', '410000', '410500', '410526');
INSERT INTO `t_district` VALUES ('410527', '内黄县', '410000', '410500', '410527');
INSERT INTO `t_district` VALUES ('410581', '林州市', '410000', '410500', '410581');
INSERT INTO `t_district` VALUES ('410602', '鹤山区', '410000', '410600', '410602');
INSERT INTO `t_district` VALUES ('410603', '山城区', '410000', '410600', '410603');
INSERT INTO `t_district` VALUES ('410611', '淇滨区', '410000', '410600', '410611');
INSERT INTO `t_district` VALUES ('410621', '浚县', '410000', '410600', '410621');
INSERT INTO `t_district` VALUES ('410622', '淇县', '410000', '410600', '410622');
INSERT INTO `t_district` VALUES ('410702', '红旗区', '410000', '410700', '410702');
INSERT INTO `t_district` VALUES ('410703', '卫滨区', '410000', '410700', '410703');
INSERT INTO `t_district` VALUES ('410704', '凤泉区', '410000', '410700', '410704');
INSERT INTO `t_district` VALUES ('410711', '牧野区', '410000', '410700', '410711');
INSERT INTO `t_district` VALUES ('410721', '新乡县', '410000', '410700', '410721');
INSERT INTO `t_district` VALUES ('410724', '获嘉县', '410000', '410700', '410724');
INSERT INTO `t_district` VALUES ('410725', '原阳县', '410000', '410700', '410725');
INSERT INTO `t_district` VALUES ('410726', '延津县', '410000', '410700', '410726');
INSERT INTO `t_district` VALUES ('410727', '封丘县', '410000', '410700', '410727');
INSERT INTO `t_district` VALUES ('410781', '卫辉市', '410000', '410700', '410781');
INSERT INTO `t_district` VALUES ('410782', '辉县市', '410000', '410700', '410782');
INSERT INTO `t_district` VALUES ('410783', '长垣市', '410000', '410700', '410783');
INSERT INTO `t_district` VALUES ('410802', '解放区', '410000', '410800', '410802');
INSERT INTO `t_district` VALUES ('410803', '中站区', '410000', '410800', '410803');
INSERT INTO `t_district` VALUES ('410804', '马村区', '410000', '410800', '410804');
INSERT INTO `t_district` VALUES ('410811', '山阳区', '410000', '410800', '410811');
INSERT INTO `t_district` VALUES ('410821', '修武县', '410000', '410800', '410821');
INSERT INTO `t_district` VALUES ('410822', '博爱县', '410000', '410800', '410822');
INSERT INTO `t_district` VALUES ('410823', '武陟县', '410000', '410800', '410823');
INSERT INTO `t_district` VALUES ('410825', '温县', '410000', '410800', '410825');
INSERT INTO `t_district` VALUES ('410882', '沁阳市', '410000', '410800', '410882');
INSERT INTO `t_district` VALUES ('410883', '孟州市', '410000', '410800', '410883');
INSERT INTO `t_district` VALUES ('410902', '华龙区', '410000', '410900', '410902');
INSERT INTO `t_district` VALUES ('410922', '清丰县', '410000', '410900', '410922');
INSERT INTO `t_district` VALUES ('410923', '南乐县', '410000', '410900', '410923');
INSERT INTO `t_district` VALUES ('410926', '范县', '410000', '410900', '410926');
INSERT INTO `t_district` VALUES ('410927', '台前县', '410000', '410900', '410927');
INSERT INTO `t_district` VALUES ('410928', '濮阳县', '410000', '410900', '410928');
INSERT INTO `t_district` VALUES ('411002', '魏都区', '410000', '411000', '411002');
INSERT INTO `t_district` VALUES ('411003', '建安区', '410000', '411000', '411003');
INSERT INTO `t_district` VALUES ('411024', '鄢陵县', '410000', '411000', '411024');
INSERT INTO `t_district` VALUES ('411025', '襄城县', '410000', '411000', '411025');
INSERT INTO `t_district` VALUES ('411081', '禹州市', '410000', '411000', '411081');
INSERT INTO `t_district` VALUES ('411082', '长葛市', '410000', '411000', '411082');
INSERT INTO `t_district` VALUES ('411102', '源汇区', '410000', '411100', '411102');
INSERT INTO `t_district` VALUES ('411103', '郾城区', '410000', '411100', '411103');
INSERT INTO `t_district` VALUES ('411104', '召陵区', '410000', '411100', '411104');
INSERT INTO `t_district` VALUES ('411121', '舞阳县', '410000', '411100', '411121');
INSERT INTO `t_district` VALUES ('411122', '临颍县', '410000', '411100', '411122');
INSERT INTO `t_district` VALUES ('411202', '湖滨区', '410000', '411200', '411202');
INSERT INTO `t_district` VALUES ('411203', '陕州区', '410000', '411200', '411203');
INSERT INTO `t_district` VALUES ('411221', '渑池县', '410000', '411200', '411221');
INSERT INTO `t_district` VALUES ('411224', '卢氏县', '410000', '411200', '411224');
INSERT INTO `t_district` VALUES ('411281', '义马市', '410000', '411200', '411281');
INSERT INTO `t_district` VALUES ('411282', '灵宝市', '410000', '411200', '411282');
INSERT INTO `t_district` VALUES ('411302', '宛城区', '410000', '411300', '411302');
INSERT INTO `t_district` VALUES ('411303', '卧龙区', '410000', '411300', '411303');
INSERT INTO `t_district` VALUES ('411321', '南召县', '410000', '411300', '411321');
INSERT INTO `t_district` VALUES ('411322', '方城县', '410000', '411300', '411322');
INSERT INTO `t_district` VALUES ('411323', '西峡县', '410000', '411300', '411323');
INSERT INTO `t_district` VALUES ('411324', '镇平县', '410000', '411300', '411324');
INSERT INTO `t_district` VALUES ('411325', '内乡县', '410000', '411300', '411325');
INSERT INTO `t_district` VALUES ('411326', '淅川县', '410000', '411300', '411326');
INSERT INTO `t_district` VALUES ('411327', '社旗县', '410000', '411300', '411327');
INSERT INTO `t_district` VALUES ('411328', '唐河县', '410000', '411300', '411328');
INSERT INTO `t_district` VALUES ('411329', '新野县', '410000', '411300', '411329');
INSERT INTO `t_district` VALUES ('411330', '桐柏县', '410000', '411300', '411330');
INSERT INTO `t_district` VALUES ('411381', '邓州市', '410000', '411300', '411381');
INSERT INTO `t_district` VALUES ('411402', '梁园区', '410000', '411400', '411402');
INSERT INTO `t_district` VALUES ('411403', '睢阳区', '410000', '411400', '411403');
INSERT INTO `t_district` VALUES ('411421', '民权县', '410000', '411400', '411421');
INSERT INTO `t_district` VALUES ('411422', '睢县', '410000', '411400', '411422');
INSERT INTO `t_district` VALUES ('411423', '宁陵县', '410000', '411400', '411423');
INSERT INTO `t_district` VALUES ('411424', '柘城县', '410000', '411400', '411424');
INSERT INTO `t_district` VALUES ('411425', '虞城县', '410000', '411400', '411425');
INSERT INTO `t_district` VALUES ('411426', '夏邑县', '410000', '411400', '411426');
INSERT INTO `t_district` VALUES ('411481', '永城市', '410000', '411400', '411481');
INSERT INTO `t_district` VALUES ('411502', '浉河区', '410000', '411500', '411502');
INSERT INTO `t_district` VALUES ('411503', '平桥区', '410000', '411500', '411503');
INSERT INTO `t_district` VALUES ('411521', '罗山县', '410000', '411500', '411521');
INSERT INTO `t_district` VALUES ('411522', '光山县', '410000', '411500', '411522');
INSERT INTO `t_district` VALUES ('411523', '新县', '410000', '411500', '411523');
INSERT INTO `t_district` VALUES ('411524', '商城县', '410000', '411500', '411524');
INSERT INTO `t_district` VALUES ('411525', '固始县', '410000', '411500', '411525');
INSERT INTO `t_district` VALUES ('411526', '潢川县', '410000', '411500', '411526');
INSERT INTO `t_district` VALUES ('411527', '淮滨县', '410000', '411500', '411527');
INSERT INTO `t_district` VALUES ('411528', '息县', '410000', '411500', '411528');
INSERT INTO `t_district` VALUES ('411602', '川汇区', '410000', '411600', '411602');
INSERT INTO `t_district` VALUES ('411603', '淮阳区', '410000', '411600', '411603');
INSERT INTO `t_district` VALUES ('411621', '扶沟县', '410000', '411600', '411621');
INSERT INTO `t_district` VALUES ('411622', '西华县', '410000', '411600', '411622');
INSERT INTO `t_district` VALUES ('411623', '商水县', '410000', '411600', '411623');
INSERT INTO `t_district` VALUES ('411624', '沈丘县', '410000', '411600', '411624');
INSERT INTO `t_district` VALUES ('411625', '郸城县', '410000', '411600', '411625');
INSERT INTO `t_district` VALUES ('411627', '太康县', '410000', '411600', '411627');
INSERT INTO `t_district` VALUES ('411628', '鹿邑县', '410000', '411600', '411628');
INSERT INTO `t_district` VALUES ('411681', '项城市', '410000', '411600', '411681');
INSERT INTO `t_district` VALUES ('411702', '驿城区', '410000', '411700', '411702');
INSERT INTO `t_district` VALUES ('411721', '西平县', '410000', '411700', '411721');
INSERT INTO `t_district` VALUES ('411722', '上蔡县', '410000', '411700', '411722');
INSERT INTO `t_district` VALUES ('411723', '平舆县', '410000', '411700', '411723');
INSERT INTO `t_district` VALUES ('411724', '正阳县', '410000', '411700', '411724');
INSERT INTO `t_district` VALUES ('411725', '确山县', '410000', '411700', '411725');
INSERT INTO `t_district` VALUES ('411726', '泌阳县', '410000', '411700', '411726');
INSERT INTO `t_district` VALUES ('411727', '汝南县', '410000', '411700', '411727');
INSERT INTO `t_district` VALUES ('411728', '遂平县', '410000', '411700', '411728');
INSERT INTO `t_district` VALUES ('411729', '新蔡县', '410000', '411700', '411729');
INSERT INTO `t_district` VALUES ('419001', '济源市', '410000', '419000', '419001');
INSERT INTO `t_district` VALUES ('420102', '江岸区', '420000', '420100', '420102');
INSERT INTO `t_district` VALUES ('420103', '江汉区', '420000', '420100', '420103');
INSERT INTO `t_district` VALUES ('420104', '硚口区', '420000', '420100', '420104');
INSERT INTO `t_district` VALUES ('420105', '汉阳区', '420000', '420100', '420105');
INSERT INTO `t_district` VALUES ('420106', '武昌区', '420000', '420100', '420106');
INSERT INTO `t_district` VALUES ('420107', '青山区', '420000', '420100', '420107');
INSERT INTO `t_district` VALUES ('420111', '洪山区', '420000', '420100', '420111');
INSERT INTO `t_district` VALUES ('420112', '东西湖区', '420000', '420100', '420112');
INSERT INTO `t_district` VALUES ('420113', '汉南区', '420000', '420100', '420113');
INSERT INTO `t_district` VALUES ('420114', '蔡甸区', '420000', '420100', '420114');
INSERT INTO `t_district` VALUES ('420115', '江夏区', '420000', '420100', '420115');
INSERT INTO `t_district` VALUES ('420116', '黄陂区', '420000', '420100', '420116');
INSERT INTO `t_district` VALUES ('420117', '新洲区', '420000', '420100', '420117');
INSERT INTO `t_district` VALUES ('420202', '黄石港区', '420000', '420200', '420202');
INSERT INTO `t_district` VALUES ('420203', '西塞山区', '420000', '420200', '420203');
INSERT INTO `t_district` VALUES ('420204', '下陆区', '420000', '420200', '420204');
INSERT INTO `t_district` VALUES ('420205', '铁山区', '420000', '420200', '420205');
INSERT INTO `t_district` VALUES ('420222', '阳新县', '420000', '420200', '420222');
INSERT INTO `t_district` VALUES ('420281', '大冶市', '420000', '420200', '420281');
INSERT INTO `t_district` VALUES ('420302', '茅箭区', '420000', '420300', '420302');
INSERT INTO `t_district` VALUES ('420303', '张湾区', '420000', '420300', '420303');
INSERT INTO `t_district` VALUES ('420304', '郧阳区', '420000', '420300', '420304');
INSERT INTO `t_district` VALUES ('420322', '郧西县', '420000', '420300', '420322');
INSERT INTO `t_district` VALUES ('420323', '竹山县', '420000', '420300', '420323');
INSERT INTO `t_district` VALUES ('420324', '竹溪县', '420000', '420300', '420324');
INSERT INTO `t_district` VALUES ('420325', '房县', '420000', '420300', '420325');
INSERT INTO `t_district` VALUES ('420381', '丹江口市', '420000', '420300', '420381');
INSERT INTO `t_district` VALUES ('420502', '西陵区', '420000', '420500', '420502');
INSERT INTO `t_district` VALUES ('420503', '伍家岗区', '420000', '420500', '420503');
INSERT INTO `t_district` VALUES ('420504', '点军区', '420000', '420500', '420504');
INSERT INTO `t_district` VALUES ('420505', '猇亭区', '420000', '420500', '420505');
INSERT INTO `t_district` VALUES ('420506', '夷陵区', '420000', '420500', '420506');
INSERT INTO `t_district` VALUES ('420525', '远安县', '420000', '420500', '420525');
INSERT INTO `t_district` VALUES ('420526', '兴山县', '420000', '420500', '420526');
INSERT INTO `t_district` VALUES ('420527', '秭归县', '420000', '420500', '420527');
INSERT INTO `t_district` VALUES ('420528', '长阳土家族自治县', '420000', '420500', '420528');
INSERT INTO `t_district` VALUES ('420529', '五峰土家族自治县', '420000', '420500', '420529');
INSERT INTO `t_district` VALUES ('420581', '宜都市', '420000', '420500', '420581');
INSERT INTO `t_district` VALUES ('420582', '当阳市', '420000', '420500', '420582');
INSERT INTO `t_district` VALUES ('420583', '枝江市', '420000', '420500', '420583');
INSERT INTO `t_district` VALUES ('420602', '襄城区', '420000', '420600', '420602');
INSERT INTO `t_district` VALUES ('420606', '樊城区', '420000', '420600', '420606');
INSERT INTO `t_district` VALUES ('420607', '襄州区', '420000', '420600', '420607');
INSERT INTO `t_district` VALUES ('420624', '南漳县', '420000', '420600', '420624');
INSERT INTO `t_district` VALUES ('420625', '谷城县', '420000', '420600', '420625');
INSERT INTO `t_district` VALUES ('420626', '保康县', '420000', '420600', '420626');
INSERT INTO `t_district` VALUES ('420682', '老河口市', '420000', '420600', '420682');
INSERT INTO `t_district` VALUES ('420683', '枣阳市', '420000', '420600', '420683');
INSERT INTO `t_district` VALUES ('420684', '宜城市', '420000', '420600', '420684');
INSERT INTO `t_district` VALUES ('420702', '梁子湖区', '420000', '420700', '420702');
INSERT INTO `t_district` VALUES ('420703', '华容区', '420000', '420700', '420703');
INSERT INTO `t_district` VALUES ('420704', '鄂城区', '420000', '420700', '420704');
INSERT INTO `t_district` VALUES ('420802', '东宝区', '420000', '420800', '420802');
INSERT INTO `t_district` VALUES ('420804', '掇刀区', '420000', '420800', '420804');
INSERT INTO `t_district` VALUES ('420822', '沙洋县', '420000', '420800', '420822');
INSERT INTO `t_district` VALUES ('420881', '钟祥市', '420000', '420800', '420881');
INSERT INTO `t_district` VALUES ('420882', '京山市', '420000', '420800', '420882');
INSERT INTO `t_district` VALUES ('420902', '孝南区', '420000', '420900', '420902');
INSERT INTO `t_district` VALUES ('420921', '孝昌县', '420000', '420900', '420921');
INSERT INTO `t_district` VALUES ('420922', '大悟县', '420000', '420900', '420922');
INSERT INTO `t_district` VALUES ('420923', '云梦县', '420000', '420900', '420923');
INSERT INTO `t_district` VALUES ('420981', '应城市', '420000', '420900', '420981');
INSERT INTO `t_district` VALUES ('420982', '安陆市', '420000', '420900', '420982');
INSERT INTO `t_district` VALUES ('420984', '汉川市', '420000', '420900', '420984');
INSERT INTO `t_district` VALUES ('421002', '沙市区', '420000', '421000', '421002');
INSERT INTO `t_district` VALUES ('421003', '荆州区', '420000', '421000', '421003');
INSERT INTO `t_district` VALUES ('421022', '公安县', '420000', '421000', '421022');
INSERT INTO `t_district` VALUES ('421023', '监利县', '420000', '421000', '421023');
INSERT INTO `t_district` VALUES ('421024', '江陵县', '420000', '421000', '421024');
INSERT INTO `t_district` VALUES ('421081', '石首市', '420000', '421000', '421081');
INSERT INTO `t_district` VALUES ('421083', '洪湖市', '420000', '421000', '421083');
INSERT INTO `t_district` VALUES ('421087', '松滋市', '420000', '421000', '421087');
INSERT INTO `t_district` VALUES ('421102', '黄州区', '420000', '421100', '421102');
INSERT INTO `t_district` VALUES ('421121', '团风县', '420000', '421100', '421121');
INSERT INTO `t_district` VALUES ('421122', '红安县', '420000', '421100', '421122');
INSERT INTO `t_district` VALUES ('421123', '罗田县', '420000', '421100', '421123');
INSERT INTO `t_district` VALUES ('421124', '英山县', '420000', '421100', '421124');
INSERT INTO `t_district` VALUES ('421125', '浠水县', '420000', '421100', '421125');
INSERT INTO `t_district` VALUES ('421126', '蕲春县', '420000', '421100', '421126');
INSERT INTO `t_district` VALUES ('421127', '黄梅县', '420000', '421100', '421127');
INSERT INTO `t_district` VALUES ('421181', '麻城市', '420000', '421100', '421181');
INSERT INTO `t_district` VALUES ('421182', '武穴市', '420000', '421100', '421182');
INSERT INTO `t_district` VALUES ('421202', '咸安区', '420000', '421200', '421202');
INSERT INTO `t_district` VALUES ('421221', '嘉鱼县', '420000', '421200', '421221');
INSERT INTO `t_district` VALUES ('421222', '通城县', '420000', '421200', '421222');
INSERT INTO `t_district` VALUES ('421223', '崇阳县', '420000', '421200', '421223');
INSERT INTO `t_district` VALUES ('421224', '通山县', '420000', '421200', '421224');
INSERT INTO `t_district` VALUES ('421281', '赤壁市', '420000', '421200', '421281');
INSERT INTO `t_district` VALUES ('421303', '曾都区', '420000', '421300', '421303');
INSERT INTO `t_district` VALUES ('421321', '随县', '420000', '421300', '421321');
INSERT INTO `t_district` VALUES ('421381', '广水市', '420000', '421300', '421381');
INSERT INTO `t_district` VALUES ('422801', '恩施市', '420000', '422800', '422801');
INSERT INTO `t_district` VALUES ('422802', '利川市', '420000', '422800', '422802');
INSERT INTO `t_district` VALUES ('422822', '建始县', '420000', '422800', '422822');
INSERT INTO `t_district` VALUES ('422823', '巴东县', '420000', '422800', '422823');
INSERT INTO `t_district` VALUES ('422825', '宣恩县', '420000', '422800', '422825');
INSERT INTO `t_district` VALUES ('422826', '咸丰县', '420000', '422800', '422826');
INSERT INTO `t_district` VALUES ('422827', '来凤县', '420000', '422800', '422827');
INSERT INTO `t_district` VALUES ('422828', '鹤峰县', '420000', '422800', '422828');
INSERT INTO `t_district` VALUES ('429004', '仙桃市', '420000', '429000', '429004');
INSERT INTO `t_district` VALUES ('429005', '潜江市', '420000', '429000', '429005');
INSERT INTO `t_district` VALUES ('429006', '天门市', '420000', '429000', '429006');
INSERT INTO `t_district` VALUES ('429021', '神农架林区', '420000', '429000', '429021');
INSERT INTO `t_district` VALUES ('430102', '芙蓉区', '430000', '430100', '430102');
INSERT INTO `t_district` VALUES ('430103', '天心区', '430000', '430100', '430103');
INSERT INTO `t_district` VALUES ('430104', '岳麓区', '430000', '430100', '430104');
INSERT INTO `t_district` VALUES ('430105', '开福区', '430000', '430100', '430105');
INSERT INTO `t_district` VALUES ('430111', '雨花区', '430000', '430100', '430111');
INSERT INTO `t_district` VALUES ('430112', '望城区', '430000', '430100', '430112');
INSERT INTO `t_district` VALUES ('430121', '长沙县', '430000', '430100', '430121');
INSERT INTO `t_district` VALUES ('430181', '浏阳市', '430000', '430100', '430181');
INSERT INTO `t_district` VALUES ('430182', '宁乡市', '430000', '430100', '430182');
INSERT INTO `t_district` VALUES ('430202', '荷塘区', '430000', '430200', '430202');
INSERT INTO `t_district` VALUES ('430203', '芦淞区', '430000', '430200', '430203');
INSERT INTO `t_district` VALUES ('430204', '石峰区', '430000', '430200', '430204');
INSERT INTO `t_district` VALUES ('430211', '天元区', '430000', '430200', '430211');
INSERT INTO `t_district` VALUES ('430212', '渌口区', '430000', '430200', '430212');
INSERT INTO `t_district` VALUES ('430223', '攸县', '430000', '430200', '430223');
INSERT INTO `t_district` VALUES ('430224', '茶陵县', '430000', '430200', '430224');
INSERT INTO `t_district` VALUES ('430225', '炎陵县', '430000', '430200', '430225');
INSERT INTO `t_district` VALUES ('430281', '醴陵市', '430000', '430200', '430281');
INSERT INTO `t_district` VALUES ('430302', '雨湖区', '430000', '430300', '430302');
INSERT INTO `t_district` VALUES ('430304', '岳塘区', '430000', '430300', '430304');
INSERT INTO `t_district` VALUES ('430321', '湘潭县', '430000', '430300', '430321');
INSERT INTO `t_district` VALUES ('430381', '湘乡市', '430000', '430300', '430381');
INSERT INTO `t_district` VALUES ('430382', '韶山市', '430000', '430300', '430382');
INSERT INTO `t_district` VALUES ('430405', '珠晖区', '430000', '430400', '430405');
INSERT INTO `t_district` VALUES ('430406', '雁峰区', '430000', '430400', '430406');
INSERT INTO `t_district` VALUES ('430407', '石鼓区', '430000', '430400', '430407');
INSERT INTO `t_district` VALUES ('430408', '蒸湘区', '430000', '430400', '430408');
INSERT INTO `t_district` VALUES ('430412', '南岳区', '430000', '430400', '430412');
INSERT INTO `t_district` VALUES ('430421', '衡阳县', '430000', '430400', '430421');
INSERT INTO `t_district` VALUES ('430422', '衡南县', '430000', '430400', '430422');
INSERT INTO `t_district` VALUES ('430423', '衡山县', '430000', '430400', '430423');
INSERT INTO `t_district` VALUES ('430424', '衡东县', '430000', '430400', '430424');
INSERT INTO `t_district` VALUES ('430426', '祁东县', '430000', '430400', '430426');
INSERT INTO `t_district` VALUES ('430481', '耒阳市', '430000', '430400', '430481');
INSERT INTO `t_district` VALUES ('430482', '常宁市', '430000', '430400', '430482');
INSERT INTO `t_district` VALUES ('430502', '双清区', '430000', '430500', '430502');
INSERT INTO `t_district` VALUES ('430503', '大祥区', '430000', '430500', '430503');
INSERT INTO `t_district` VALUES ('430511', '北塔区', '430000', '430500', '430511');
INSERT INTO `t_district` VALUES ('430522', '新邵县', '430000', '430500', '430522');
INSERT INTO `t_district` VALUES ('430523', '邵阳县', '430000', '430500', '430523');
INSERT INTO `t_district` VALUES ('430524', '隆回县', '430000', '430500', '430524');
INSERT INTO `t_district` VALUES ('430525', '洞口县', '430000', '430500', '430525');
INSERT INTO `t_district` VALUES ('430527', '绥宁县', '430000', '430500', '430527');
INSERT INTO `t_district` VALUES ('430528', '新宁县', '430000', '430500', '430528');
INSERT INTO `t_district` VALUES ('430529', '城步苗族自治县', '430000', '430500', '430529');
INSERT INTO `t_district` VALUES ('430581', '武冈市', '430000', '430500', '430581');
INSERT INTO `t_district` VALUES ('430582', '邵东市', '430000', '430500', '430582');
INSERT INTO `t_district` VALUES ('430602', '岳阳楼区', '430000', '430600', '430602');
INSERT INTO `t_district` VALUES ('430603', '云溪区', '430000', '430600', '430603');
INSERT INTO `t_district` VALUES ('430611', '君山区', '430000', '430600', '430611');
INSERT INTO `t_district` VALUES ('430621', '岳阳县', '430000', '430600', '430621');
INSERT INTO `t_district` VALUES ('430623', '华容县', '430000', '430600', '430623');
INSERT INTO `t_district` VALUES ('430624', '湘阴县', '430000', '430600', '430624');
INSERT INTO `t_district` VALUES ('430626', '平江县', '430000', '430600', '430626');
INSERT INTO `t_district` VALUES ('430681', '汨罗市', '430000', '430600', '430681');
INSERT INTO `t_district` VALUES ('430682', '临湘市', '430000', '430600', '430682');
INSERT INTO `t_district` VALUES ('430702', '武陵区', '430000', '430700', '430702');
INSERT INTO `t_district` VALUES ('430703', '鼎城区', '430000', '430700', '430703');
INSERT INTO `t_district` VALUES ('430721', '安乡县', '430000', '430700', '430721');
INSERT INTO `t_district` VALUES ('430722', '汉寿县', '430000', '430700', '430722');
INSERT INTO `t_district` VALUES ('430723', '澧县', '430000', '430700', '430723');
INSERT INTO `t_district` VALUES ('430724', '临澧县', '430000', '430700', '430724');
INSERT INTO `t_district` VALUES ('430725', '桃源县', '430000', '430700', '430725');
INSERT INTO `t_district` VALUES ('430726', '石门县', '430000', '430700', '430726');
INSERT INTO `t_district` VALUES ('430781', '津市市', '430000', '430700', '430781');
INSERT INTO `t_district` VALUES ('430802', '永定区', '430000', '430800', '430802');
INSERT INTO `t_district` VALUES ('430811', '武陵源区', '430000', '430800', '430811');
INSERT INTO `t_district` VALUES ('430821', '慈利县', '430000', '430800', '430821');
INSERT INTO `t_district` VALUES ('430822', '桑植县', '430000', '430800', '430822');
INSERT INTO `t_district` VALUES ('430902', '资阳区', '430000', '430900', '430902');
INSERT INTO `t_district` VALUES ('430903', '赫山区', '430000', '430900', '430903');
INSERT INTO `t_district` VALUES ('430921', '南县', '430000', '430900', '430921');
INSERT INTO `t_district` VALUES ('430922', '桃江县', '430000', '430900', '430922');
INSERT INTO `t_district` VALUES ('430923', '安化县', '430000', '430900', '430923');
INSERT INTO `t_district` VALUES ('430981', '沅江市', '430000', '430900', '430981');
INSERT INTO `t_district` VALUES ('431002', '北湖区', '430000', '431000', '431002');
INSERT INTO `t_district` VALUES ('431003', '苏仙区', '430000', '431000', '431003');
INSERT INTO `t_district` VALUES ('431021', '桂阳县', '430000', '431000', '431021');
INSERT INTO `t_district` VALUES ('431022', '宜章县', '430000', '431000', '431022');
INSERT INTO `t_district` VALUES ('431023', '永兴县', '430000', '431000', '431023');
INSERT INTO `t_district` VALUES ('431024', '嘉禾县', '430000', '431000', '431024');
INSERT INTO `t_district` VALUES ('431025', '临武县', '430000', '431000', '431025');
INSERT INTO `t_district` VALUES ('431026', '汝城县', '430000', '431000', '431026');
INSERT INTO `t_district` VALUES ('431027', '桂东县', '430000', '431000', '431027');
INSERT INTO `t_district` VALUES ('431028', '安仁县', '430000', '431000', '431028');
INSERT INTO `t_district` VALUES ('431081', '资兴市', '430000', '431000', '431081');
INSERT INTO `t_district` VALUES ('431102', '零陵区', '430000', '431100', '431102');
INSERT INTO `t_district` VALUES ('431103', '冷水滩区', '430000', '431100', '431103');
INSERT INTO `t_district` VALUES ('431121', '祁阳县', '430000', '431100', '431121');
INSERT INTO `t_district` VALUES ('431122', '东安县', '430000', '431100', '431122');
INSERT INTO `t_district` VALUES ('431123', '双牌县', '430000', '431100', '431123');
INSERT INTO `t_district` VALUES ('431124', '道县', '430000', '431100', '431124');
INSERT INTO `t_district` VALUES ('431125', '江永县', '430000', '431100', '431125');
INSERT INTO `t_district` VALUES ('431126', '宁远县', '430000', '431100', '431126');
INSERT INTO `t_district` VALUES ('431127', '蓝山县', '430000', '431100', '431127');
INSERT INTO `t_district` VALUES ('431128', '新田县', '430000', '431100', '431128');
INSERT INTO `t_district` VALUES ('431129', '江华瑶族自治县', '430000', '431100', '431129');
INSERT INTO `t_district` VALUES ('431202', '鹤城区', '430000', '431200', '431202');
INSERT INTO `t_district` VALUES ('431221', '中方县', '430000', '431200', '431221');
INSERT INTO `t_district` VALUES ('431222', '沅陵县', '430000', '431200', '431222');
INSERT INTO `t_district` VALUES ('431223', '辰溪县', '430000', '431200', '431223');
INSERT INTO `t_district` VALUES ('431224', '溆浦县', '430000', '431200', '431224');
INSERT INTO `t_district` VALUES ('431225', '会同县', '430000', '431200', '431225');
INSERT INTO `t_district` VALUES ('431226', '麻阳苗族自治县', '430000', '431200', '431226');
INSERT INTO `t_district` VALUES ('431227', '新晃侗族自治县', '430000', '431200', '431227');
INSERT INTO `t_district` VALUES ('431228', '芷江侗族自治县', '430000', '431200', '431228');
INSERT INTO `t_district` VALUES ('431229', '靖州苗族侗族自治县', '430000', '431200', '431229');
INSERT INTO `t_district` VALUES ('431230', '通道侗族自治县', '430000', '431200', '431230');
INSERT INTO `t_district` VALUES ('431281', '洪江市', '430000', '431200', '431281');
INSERT INTO `t_district` VALUES ('431302', '娄星区', '430000', '431300', '431302');
INSERT INTO `t_district` VALUES ('431321', '双峰县', '430000', '431300', '431321');
INSERT INTO `t_district` VALUES ('431322', '新化县', '430000', '431300', '431322');
INSERT INTO `t_district` VALUES ('431381', '冷水江市', '430000', '431300', '431381');
INSERT INTO `t_district` VALUES ('431382', '涟源市', '430000', '431300', '431382');
INSERT INTO `t_district` VALUES ('433101', '吉首市', '430000', '433100', '433101');
INSERT INTO `t_district` VALUES ('433122', '泸溪县', '430000', '433100', '433122');
INSERT INTO `t_district` VALUES ('433123', '凤凰县', '430000', '433100', '433123');
INSERT INTO `t_district` VALUES ('433124', '花垣县', '430000', '433100', '433124');
INSERT INTO `t_district` VALUES ('433125', '保靖县', '430000', '433100', '433125');
INSERT INTO `t_district` VALUES ('433126', '古丈县', '430000', '433100', '433126');
INSERT INTO `t_district` VALUES ('433127', '永顺县', '430000', '433100', '433127');
INSERT INTO `t_district` VALUES ('433130', '龙山县', '430000', '433100', '433130');
INSERT INTO `t_district` VALUES ('440103', '荔湾区', '440000', '440100', '440103');
INSERT INTO `t_district` VALUES ('440104', '越秀区', '440000', '440100', '440104');
INSERT INTO `t_district` VALUES ('440105', '海珠区', '440000', '440100', '440105');
INSERT INTO `t_district` VALUES ('440106', '天河区', '440000', '440100', '440106');
INSERT INTO `t_district` VALUES ('440111', '白云区', '440000', '440100', '440111');
INSERT INTO `t_district` VALUES ('440112', '黄埔区', '440000', '440100', '440112');
INSERT INTO `t_district` VALUES ('440113', '番禺区', '440000', '440100', '440113');
INSERT INTO `t_district` VALUES ('440114', '花都区', '440000', '440100', '440114');
INSERT INTO `t_district` VALUES ('440115', '南沙区', '440000', '440100', '440115');
INSERT INTO `t_district` VALUES ('440117', '从化区', '440000', '440100', '440117');
INSERT INTO `t_district` VALUES ('440118', '增城区', '440000', '440100', '440118');
INSERT INTO `t_district` VALUES ('440203', '武江区', '440000', '440200', '440203');
INSERT INTO `t_district` VALUES ('440204', '浈江区', '440000', '440200', '440204');
INSERT INTO `t_district` VALUES ('440205', '曲江区', '440000', '440200', '440205');
INSERT INTO `t_district` VALUES ('440222', '始兴县', '440000', '440200', '440222');
INSERT INTO `t_district` VALUES ('440224', '仁化县', '440000', '440200', '440224');
INSERT INTO `t_district` VALUES ('440229', '翁源县', '440000', '440200', '440229');
INSERT INTO `t_district` VALUES ('440232', '乳源瑶族自治县', '440000', '440200', '440232');
INSERT INTO `t_district` VALUES ('440233', '新丰县', '440000', '440200', '440233');
INSERT INTO `t_district` VALUES ('440281', '乐昌市', '440000', '440200', '440281');
INSERT INTO `t_district` VALUES ('440282', '南雄市', '440000', '440200', '440282');
INSERT INTO `t_district` VALUES ('440303', '罗湖区', '440000', '440300', '440303');
INSERT INTO `t_district` VALUES ('440304', '福田区', '440000', '440300', '440304');
INSERT INTO `t_district` VALUES ('440305', '南山区', '440000', '440300', '440305');
INSERT INTO `t_district` VALUES ('440306', '宝安区', '440000', '440300', '440306');
INSERT INTO `t_district` VALUES ('440307', '龙岗区', '440000', '440300', '440307');
INSERT INTO `t_district` VALUES ('440308', '盐田区', '440000', '440300', '440308');
INSERT INTO `t_district` VALUES ('440309', '龙华区', '440000', '440300', '440309');
INSERT INTO `t_district` VALUES ('440310', '坪山区', '440000', '440300', '440310');
INSERT INTO `t_district` VALUES ('440311', '光明区', '440000', '440300', '440311');
INSERT INTO `t_district` VALUES ('440402', '香洲区', '440000', '440400', '440402');
INSERT INTO `t_district` VALUES ('440403', '斗门区', '440000', '440400', '440403');
INSERT INTO `t_district` VALUES ('440404', '金湾区', '440000', '440400', '440404');
INSERT INTO `t_district` VALUES ('440507', '龙湖区', '440000', '440500', '440507');
INSERT INTO `t_district` VALUES ('440511', '金平区', '440000', '440500', '440511');
INSERT INTO `t_district` VALUES ('440512', '濠江区', '440000', '440500', '440512');
INSERT INTO `t_district` VALUES ('440513', '潮阳区', '440000', '440500', '440513');
INSERT INTO `t_district` VALUES ('440514', '潮南区', '440000', '440500', '440514');
INSERT INTO `t_district` VALUES ('440515', '澄海区', '440000', '440500', '440515');
INSERT INTO `t_district` VALUES ('440523', '南澳县', '440000', '440500', '440523');
INSERT INTO `t_district` VALUES ('440604', '禅城区', '440000', '440600', '440604');
INSERT INTO `t_district` VALUES ('440605', '南海区', '440000', '440600', '440605');
INSERT INTO `t_district` VALUES ('440606', '顺德区', '440000', '440600', '440606');
INSERT INTO `t_district` VALUES ('440607', '三水区', '440000', '440600', '440607');
INSERT INTO `t_district` VALUES ('440608', '高明区', '440000', '440600', '440608');
INSERT INTO `t_district` VALUES ('440703', '蓬江区', '440000', '440700', '440703');
INSERT INTO `t_district` VALUES ('440704', '江海区', '440000', '440700', '440704');
INSERT INTO `t_district` VALUES ('440705', '新会区', '440000', '440700', '440705');
INSERT INTO `t_district` VALUES ('440781', '台山市', '440000', '440700', '440781');
INSERT INTO `t_district` VALUES ('440783', '开平市', '440000', '440700', '440783');
INSERT INTO `t_district` VALUES ('440784', '鹤山市', '440000', '440700', '440784');
INSERT INTO `t_district` VALUES ('440785', '恩平市', '440000', '440700', '440785');
INSERT INTO `t_district` VALUES ('440802', '赤坎区', '440000', '440800', '440802');
INSERT INTO `t_district` VALUES ('440803', '霞山区', '440000', '440800', '440803');
INSERT INTO `t_district` VALUES ('440804', '坡头区', '440000', '440800', '440804');
INSERT INTO `t_district` VALUES ('440811', '麻章区', '440000', '440800', '440811');
INSERT INTO `t_district` VALUES ('440823', '遂溪县', '440000', '440800', '440823');
INSERT INTO `t_district` VALUES ('440825', '徐闻县', '440000', '440800', '440825');
INSERT INTO `t_district` VALUES ('440881', '廉江市', '440000', '440800', '440881');
INSERT INTO `t_district` VALUES ('440882', '雷州市', '440000', '440800', '440882');
INSERT INTO `t_district` VALUES ('440883', '吴川市', '440000', '440800', '440883');
INSERT INTO `t_district` VALUES ('440902', '茂南区', '440000', '440900', '440902');
INSERT INTO `t_district` VALUES ('440904', '电白区', '440000', '440900', '440904');
INSERT INTO `t_district` VALUES ('440981', '高州市', '440000', '440900', '440981');
INSERT INTO `t_district` VALUES ('440982', '化州市', '440000', '440900', '440982');
INSERT INTO `t_district` VALUES ('440983', '信宜市', '440000', '440900', '440983');
INSERT INTO `t_district` VALUES ('441202', '端州区', '440000', '441200', '441202');
INSERT INTO `t_district` VALUES ('441203', '鼎湖区', '440000', '441200', '441203');
INSERT INTO `t_district` VALUES ('441204', '高要区', '440000', '441200', '441204');
INSERT INTO `t_district` VALUES ('441223', '广宁县', '440000', '441200', '441223');
INSERT INTO `t_district` VALUES ('441224', '怀集县', '440000', '441200', '441224');
INSERT INTO `t_district` VALUES ('441225', '封开县', '440000', '441200', '441225');
INSERT INTO `t_district` VALUES ('441226', '德庆县', '440000', '441200', '441226');
INSERT INTO `t_district` VALUES ('441284', '四会市', '440000', '441200', '441284');
INSERT INTO `t_district` VALUES ('441302', '惠城区', '440000', '441300', '441302');
INSERT INTO `t_district` VALUES ('441303', '惠阳区', '440000', '441300', '441303');
INSERT INTO `t_district` VALUES ('441322', '博罗县', '440000', '441300', '441322');
INSERT INTO `t_district` VALUES ('441323', '惠东县', '440000', '441300', '441323');
INSERT INTO `t_district` VALUES ('441324', '龙门县', '440000', '441300', '441324');
INSERT INTO `t_district` VALUES ('441402', '梅江区', '440000', '441400', '441402');
INSERT INTO `t_district` VALUES ('441403', '梅县区', '440000', '441400', '441403');
INSERT INTO `t_district` VALUES ('441422', '大埔县', '440000', '441400', '441422');
INSERT INTO `t_district` VALUES ('441423', '丰顺县', '440000', '441400', '441423');
INSERT INTO `t_district` VALUES ('441424', '五华县', '440000', '441400', '441424');
INSERT INTO `t_district` VALUES ('441426', '平远县', '440000', '441400', '441426');
INSERT INTO `t_district` VALUES ('441427', '蕉岭县', '440000', '441400', '441427');
INSERT INTO `t_district` VALUES ('441481', '兴宁市', '440000', '441400', '441481');
INSERT INTO `t_district` VALUES ('441502', '城区', '440000', '441500', '441502');
INSERT INTO `t_district` VALUES ('441521', '海丰县', '440000', '441500', '441521');
INSERT INTO `t_district` VALUES ('441523', '陆河县', '440000', '441500', '441523');
INSERT INTO `t_district` VALUES ('441581', '陆丰市', '440000', '441500', '441581');
INSERT INTO `t_district` VALUES ('441602', '源城区', '440000', '441600', '441602');
INSERT INTO `t_district` VALUES ('441621', '紫金县', '440000', '441600', '441621');
INSERT INTO `t_district` VALUES ('441622', '龙川县', '440000', '441600', '441622');
INSERT INTO `t_district` VALUES ('441623', '连平县', '440000', '441600', '441623');
INSERT INTO `t_district` VALUES ('441624', '和平县', '440000', '441600', '441624');
INSERT INTO `t_district` VALUES ('441625', '东源县', '440000', '441600', '441625');
INSERT INTO `t_district` VALUES ('441702', '江城区', '440000', '441700', '441702');
INSERT INTO `t_district` VALUES ('441704', '阳东区', '440000', '441700', '441704');
INSERT INTO `t_district` VALUES ('441721', '阳西县', '440000', '441700', '441721');
INSERT INTO `t_district` VALUES ('441781', '阳春市', '440000', '441700', '441781');
INSERT INTO `t_district` VALUES ('441802', '清城区', '440000', '441800', '441802');
INSERT INTO `t_district` VALUES ('441803', '清新区', '440000', '441800', '441803');
INSERT INTO `t_district` VALUES ('441821', '佛冈县', '440000', '441800', '441821');
INSERT INTO `t_district` VALUES ('441823', '阳山县', '440000', '441800', '441823');
INSERT INTO `t_district` VALUES ('441825', '连山壮族瑶族自治县', '440000', '441800', '441825');
INSERT INTO `t_district` VALUES ('441826', '连南瑶族自治县', '440000', '441800', '441826');
INSERT INTO `t_district` VALUES ('441881', '英德市', '440000', '441800', '441881');
INSERT INTO `t_district` VALUES ('441882', '连州市', '440000', '441800', '441882');
INSERT INTO `t_district` VALUES ('445102', '湘桥区', '440000', '445100', '445102');
INSERT INTO `t_district` VALUES ('445103', '潮安区', '440000', '445100', '445103');
INSERT INTO `t_district` VALUES ('445122', '饶平县', '440000', '445100', '445122');
INSERT INTO `t_district` VALUES ('445202', '榕城区', '440000', '445200', '445202');
INSERT INTO `t_district` VALUES ('445203', '揭东区', '440000', '445200', '445203');
INSERT INTO `t_district` VALUES ('445222', '揭西县', '440000', '445200', '445222');
INSERT INTO `t_district` VALUES ('445224', '惠来县', '440000', '445200', '445224');
INSERT INTO `t_district` VALUES ('445281', '普宁市', '440000', '445200', '445281');
INSERT INTO `t_district` VALUES ('445302', '云城区', '440000', '445300', '445302');
INSERT INTO `t_district` VALUES ('445303', '云安区', '440000', '445300', '445303');
INSERT INTO `t_district` VALUES ('445321', '新兴县', '440000', '445300', '445321');
INSERT INTO `t_district` VALUES ('445322', '郁南县', '440000', '445300', '445322');
INSERT INTO `t_district` VALUES ('445381', '罗定市', '440000', '445300', '445381');
INSERT INTO `t_district` VALUES ('450102', '兴宁区', '450000', '450100', '450102');
INSERT INTO `t_district` VALUES ('450103', '青秀区', '450000', '450100', '450103');
INSERT INTO `t_district` VALUES ('450105', '江南区', '450000', '450100', '450105');
INSERT INTO `t_district` VALUES ('450107', '西乡塘区', '450000', '450100', '450107');
INSERT INTO `t_district` VALUES ('450108', '良庆区', '450000', '450100', '450108');
INSERT INTO `t_district` VALUES ('450109', '邕宁区', '450000', '450100', '450109');
INSERT INTO `t_district` VALUES ('450110', '武鸣区', '450000', '450100', '450110');
INSERT INTO `t_district` VALUES ('450123', '隆安县', '450000', '450100', '450123');
INSERT INTO `t_district` VALUES ('450124', '马山县', '450000', '450100', '450124');
INSERT INTO `t_district` VALUES ('450125', '上林县', '450000', '450100', '450125');
INSERT INTO `t_district` VALUES ('450126', '宾阳县', '450000', '450100', '450126');
INSERT INTO `t_district` VALUES ('450127', '横县', '450000', '450100', '450127');
INSERT INTO `t_district` VALUES ('450202', '城中区', '450000', '450200', '450202');
INSERT INTO `t_district` VALUES ('450203', '鱼峰区', '450000', '450200', '450203');
INSERT INTO `t_district` VALUES ('450204', '柳南区', '450000', '450200', '450204');
INSERT INTO `t_district` VALUES ('450205', '柳北区', '450000', '450200', '450205');
INSERT INTO `t_district` VALUES ('450206', '柳江区', '450000', '450200', '450206');
INSERT INTO `t_district` VALUES ('450222', '柳城县', '450000', '450200', '450222');
INSERT INTO `t_district` VALUES ('450223', '鹿寨县', '450000', '450200', '450223');
INSERT INTO `t_district` VALUES ('450224', '融安县', '450000', '450200', '450224');
INSERT INTO `t_district` VALUES ('450225', '融水苗族自治县', '450000', '450200', '450225');
INSERT INTO `t_district` VALUES ('450226', '三江侗族自治县', '450000', '450200', '450226');
INSERT INTO `t_district` VALUES ('450302', '秀峰区', '450000', '450300', '450302');
INSERT INTO `t_district` VALUES ('450303', '叠彩区', '450000', '450300', '450303');
INSERT INTO `t_district` VALUES ('450304', '象山区', '450000', '450300', '450304');
INSERT INTO `t_district` VALUES ('450305', '七星区', '450000', '450300', '450305');
INSERT INTO `t_district` VALUES ('450311', '雁山区', '450000', '450300', '450311');
INSERT INTO `t_district` VALUES ('450312', '临桂区', '450000', '450300', '450312');
INSERT INTO `t_district` VALUES ('450321', '阳朔县', '450000', '450300', '450321');
INSERT INTO `t_district` VALUES ('450323', '灵川县', '450000', '450300', '450323');
INSERT INTO `t_district` VALUES ('450324', '全州县', '450000', '450300', '450324');
INSERT INTO `t_district` VALUES ('450325', '兴安县', '450000', '450300', '450325');
INSERT INTO `t_district` VALUES ('450326', '永福县', '450000', '450300', '450326');
INSERT INTO `t_district` VALUES ('450327', '灌阳县', '450000', '450300', '450327');
INSERT INTO `t_district` VALUES ('450328', '龙胜各族自治县', '450000', '450300', '450328');
INSERT INTO `t_district` VALUES ('450329', '资源县', '450000', '450300', '450329');
INSERT INTO `t_district` VALUES ('450330', '平乐县', '450000', '450300', '450330');
INSERT INTO `t_district` VALUES ('450332', '恭城瑶族自治县', '450000', '450300', '450332');
INSERT INTO `t_district` VALUES ('450381', '荔浦市', '450000', '450300', '450381');
INSERT INTO `t_district` VALUES ('450403', '万秀区', '450000', '450400', '450403');
INSERT INTO `t_district` VALUES ('450405', '长洲区', '450000', '450400', '450405');
INSERT INTO `t_district` VALUES ('450406', '龙圩区', '450000', '450400', '450406');
INSERT INTO `t_district` VALUES ('450421', '苍梧县', '450000', '450400', '450421');
INSERT INTO `t_district` VALUES ('450422', '藤县', '450000', '450400', '450422');
INSERT INTO `t_district` VALUES ('450423', '蒙山县', '450000', '450400', '450423');
INSERT INTO `t_district` VALUES ('450481', '岑溪市', '450000', '450400', '450481');
INSERT INTO `t_district` VALUES ('450502', '海城区', '450000', '450500', '450502');
INSERT INTO `t_district` VALUES ('450503', '银海区', '450000', '450500', '450503');
INSERT INTO `t_district` VALUES ('450512', '铁山港区', '450000', '450500', '450512');
INSERT INTO `t_district` VALUES ('450521', '合浦县', '450000', '450500', '450521');
INSERT INTO `t_district` VALUES ('450602', '港口区', '450000', '450600', '450602');
INSERT INTO `t_district` VALUES ('450603', '防城区', '450000', '450600', '450603');
INSERT INTO `t_district` VALUES ('450621', '上思县', '450000', '450600', '450621');
INSERT INTO `t_district` VALUES ('450681', '东兴市', '450000', '450600', '450681');
INSERT INTO `t_district` VALUES ('450702', '钦南区', '450000', '450700', '450702');
INSERT INTO `t_district` VALUES ('450703', '钦北区', '450000', '450700', '450703');
INSERT INTO `t_district` VALUES ('450721', '灵山县', '450000', '450700', '450721');
INSERT INTO `t_district` VALUES ('450722', '浦北县', '450000', '450700', '450722');
INSERT INTO `t_district` VALUES ('450802', '港北区', '450000', '450800', '450802');
INSERT INTO `t_district` VALUES ('450803', '港南区', '450000', '450800', '450803');
INSERT INTO `t_district` VALUES ('450804', '覃塘区', '450000', '450800', '450804');
INSERT INTO `t_district` VALUES ('450821', '平南县', '450000', '450800', '450821');
INSERT INTO `t_district` VALUES ('450881', '桂平市', '450000', '450800', '450881');
INSERT INTO `t_district` VALUES ('450902', '玉州区', '450000', '450900', '450902');
INSERT INTO `t_district` VALUES ('450903', '福绵区', '450000', '450900', '450903');
INSERT INTO `t_district` VALUES ('450921', '容县', '450000', '450900', '450921');
INSERT INTO `t_district` VALUES ('450922', '陆川县', '450000', '450900', '450922');
INSERT INTO `t_district` VALUES ('450923', '博白县', '450000', '450900', '450923');
INSERT INTO `t_district` VALUES ('450924', '兴业县', '450000', '450900', '450924');
INSERT INTO `t_district` VALUES ('450981', '北流市', '450000', '450900', '450981');
INSERT INTO `t_district` VALUES ('451002', '右江区', '450000', '451000', '451002');
INSERT INTO `t_district` VALUES ('451003', '田阳区', '450000', '451000', '451003');
INSERT INTO `t_district` VALUES ('451022', '田东县', '450000', '451000', '451022');
INSERT INTO `t_district` VALUES ('451024', '德保县', '450000', '451000', '451024');
INSERT INTO `t_district` VALUES ('451026', '那坡县', '450000', '451000', '451026');
INSERT INTO `t_district` VALUES ('451027', '凌云县', '450000', '451000', '451027');
INSERT INTO `t_district` VALUES ('451028', '乐业县', '450000', '451000', '451028');
INSERT INTO `t_district` VALUES ('451029', '田林县', '450000', '451000', '451029');
INSERT INTO `t_district` VALUES ('451030', '西林县', '450000', '451000', '451030');
INSERT INTO `t_district` VALUES ('451031', '隆林各族自治县', '450000', '451000', '451031');
INSERT INTO `t_district` VALUES ('451081', '靖西市', '450000', '451000', '451081');
INSERT INTO `t_district` VALUES ('451082', '平果市', '450000', '451000', '451082');
INSERT INTO `t_district` VALUES ('451102', '八步区', '450000', '451100', '451102');
INSERT INTO `t_district` VALUES ('451103', '平桂区', '450000', '451100', '451103');
INSERT INTO `t_district` VALUES ('451121', '昭平县', '450000', '451100', '451121');
INSERT INTO `t_district` VALUES ('451122', '钟山县', '450000', '451100', '451122');
INSERT INTO `t_district` VALUES ('451123', '富川瑶族自治县', '450000', '451100', '451123');
INSERT INTO `t_district` VALUES ('451202', '金城江区', '450000', '451200', '451202');
INSERT INTO `t_district` VALUES ('451203', '宜州区', '450000', '451200', '451203');
INSERT INTO `t_district` VALUES ('451221', '南丹县', '450000', '451200', '451221');
INSERT INTO `t_district` VALUES ('451222', '天峨县', '450000', '451200', '451222');
INSERT INTO `t_district` VALUES ('451223', '凤山县', '450000', '451200', '451223');
INSERT INTO `t_district` VALUES ('451224', '东兰县', '450000', '451200', '451224');
INSERT INTO `t_district` VALUES ('451225', '罗城仫佬族自治县', '450000', '451200', '451225');
INSERT INTO `t_district` VALUES ('451226', '环江毛南族自治县', '450000', '451200', '451226');
INSERT INTO `t_district` VALUES ('451227', '巴马瑶族自治县', '450000', '451200', '451227');
INSERT INTO `t_district` VALUES ('451228', '都安瑶族自治县', '450000', '451200', '451228');
INSERT INTO `t_district` VALUES ('451229', '大化瑶族自治县', '450000', '451200', '451229');
INSERT INTO `t_district` VALUES ('451302', '兴宾区', '450000', '451300', '451302');
INSERT INTO `t_district` VALUES ('451321', '忻城县', '450000', '451300', '451321');
INSERT INTO `t_district` VALUES ('451322', '象州县', '450000', '451300', '451322');
INSERT INTO `t_district` VALUES ('451323', '武宣县', '450000', '451300', '451323');
INSERT INTO `t_district` VALUES ('451324', '金秀瑶族自治县', '450000', '451300', '451324');
INSERT INTO `t_district` VALUES ('451381', '合山市', '450000', '451300', '451381');
INSERT INTO `t_district` VALUES ('451402', '江州区', '450000', '451400', '451402');
INSERT INTO `t_district` VALUES ('451421', '扶绥县', '450000', '451400', '451421');
INSERT INTO `t_district` VALUES ('451422', '宁明县', '450000', '451400', '451422');
INSERT INTO `t_district` VALUES ('451423', '龙州县', '450000', '451400', '451423');
INSERT INTO `t_district` VALUES ('451424', '大新县', '450000', '451400', '451424');
INSERT INTO `t_district` VALUES ('451425', '天等县', '450000', '451400', '451425');
INSERT INTO `t_district` VALUES ('451481', '凭祥市', '450000', '451400', '451481');
INSERT INTO `t_district` VALUES ('460105', '秀英区', '460000', '460100', '460105');
INSERT INTO `t_district` VALUES ('460106', '龙华区', '460000', '460100', '460106');
INSERT INTO `t_district` VALUES ('460107', '琼山区', '460000', '460100', '460107');
INSERT INTO `t_district` VALUES ('460108', '美兰区', '460000', '460100', '460108');
INSERT INTO `t_district` VALUES ('460202', '海棠区', '460000', '460200', '460202');
INSERT INTO `t_district` VALUES ('460203', '吉阳区', '460000', '460200', '460203');
INSERT INTO `t_district` VALUES ('460204', '天涯区', '460000', '460200', '460204');
INSERT INTO `t_district` VALUES ('460205', '崖州区', '460000', '460200', '460205');
INSERT INTO `t_district` VALUES ('469001', '五指山市', '460000', '469000', '469001');
INSERT INTO `t_district` VALUES ('469002', '琼海市', '460000', '469000', '469002');
INSERT INTO `t_district` VALUES ('469005', '文昌市', '460000', '469000', '469005');
INSERT INTO `t_district` VALUES ('469006', '万宁市', '460000', '469000', '469006');
INSERT INTO `t_district` VALUES ('469007', '东方市', '460000', '469000', '469007');
INSERT INTO `t_district` VALUES ('469021', '定安县', '460000', '469000', '469021');
INSERT INTO `t_district` VALUES ('469022', '屯昌县', '460000', '469000', '469022');
INSERT INTO `t_district` VALUES ('469023', '澄迈县', '460000', '469000', '469023');
INSERT INTO `t_district` VALUES ('469024', '临高县', '460000', '469000', '469024');
INSERT INTO `t_district` VALUES ('469025', '白沙黎族自治县', '460000', '469000', '469025');
INSERT INTO `t_district` VALUES ('469026', '昌江黎族自治县', '460000', '469000', '469026');
INSERT INTO `t_district` VALUES ('469027', '乐东黎族自治县', '460000', '469000', '469027');
INSERT INTO `t_district` VALUES ('469028', '陵水黎族自治县', '460000', '469000', '469028');
INSERT INTO `t_district` VALUES ('469029', '保亭黎族苗族自治县', '460000', '469000', '469029');
INSERT INTO `t_district` VALUES ('469030', '琼中黎族苗族自治县', '460000', '469000', '469030');
INSERT INTO `t_district` VALUES ('500101', '万州区', '500000', '500100', '500101');
INSERT INTO `t_district` VALUES ('500102', '涪陵区', '500000', '500100', '500102');
INSERT INTO `t_district` VALUES ('500103', '渝中区', '500000', '500100', '500103');
INSERT INTO `t_district` VALUES ('500104', '大渡口区', '500000', '500100', '500104');
INSERT INTO `t_district` VALUES ('500105', '江北区', '500000', '500100', '500105');
INSERT INTO `t_district` VALUES ('500106', '沙坪坝区', '500000', '500100', '500106');
INSERT INTO `t_district` VALUES ('500107', '九龙坡区', '500000', '500100', '500107');
INSERT INTO `t_district` VALUES ('500108', '南岸区', '500000', '500100', '500108');
INSERT INTO `t_district` VALUES ('500109', '北碚区', '500000', '500100', '500109');
INSERT INTO `t_district` VALUES ('500110', '綦江区', '500000', '500100', '500110');
INSERT INTO `t_district` VALUES ('500111', '大足区', '500000', '500100', '500111');
INSERT INTO `t_district` VALUES ('500112', '渝北区', '500000', '500100', '500112');
INSERT INTO `t_district` VALUES ('500113', '巴南区', '500000', '500100', '500113');
INSERT INTO `t_district` VALUES ('500114', '黔江区', '500000', '500100', '500114');
INSERT INTO `t_district` VALUES ('500115', '长寿区', '500000', '500100', '500115');
INSERT INTO `t_district` VALUES ('500116', '江津区', '500000', '500100', '500116');
INSERT INTO `t_district` VALUES ('500117', '合川区', '500000', '500100', '500117');
INSERT INTO `t_district` VALUES ('500118', '永川区', '500000', '500100', '500118');
INSERT INTO `t_district` VALUES ('500119', '南川区', '500000', '500100', '500119');
INSERT INTO `t_district` VALUES ('500120', '璧山区', '500000', '500100', '500120');
INSERT INTO `t_district` VALUES ('500151', '铜梁区', '500000', '500100', '500151');
INSERT INTO `t_district` VALUES ('500152', '潼南区', '500000', '500100', '500152');
INSERT INTO `t_district` VALUES ('500153', '荣昌区', '500000', '500100', '500153');
INSERT INTO `t_district` VALUES ('500154', '开州区', '500000', '500100', '500154');
INSERT INTO `t_district` VALUES ('500155', '梁平区', '500000', '500100', '500155');
INSERT INTO `t_district` VALUES ('500156', '武隆区', '500000', '500100', '500156');
INSERT INTO `t_district` VALUES ('500229', '城口县', '500000', '500200', '500229');
INSERT INTO `t_district` VALUES ('500230', '丰都县', '500000', '500200', '500230');
INSERT INTO `t_district` VALUES ('500231', '垫江县', '500000', '500200', '500231');
INSERT INTO `t_district` VALUES ('500233', '忠县', '500000', '500200', '500233');
INSERT INTO `t_district` VALUES ('500235', '云阳县', '500000', '500200', '500235');
INSERT INTO `t_district` VALUES ('500236', '奉节县', '500000', '500200', '500236');
INSERT INTO `t_district` VALUES ('500237', '巫山县', '500000', '500200', '500237');
INSERT INTO `t_district` VALUES ('500238', '巫溪县', '500000', '500200', '500238');
INSERT INTO `t_district` VALUES ('500240', '石柱土家族自治县', '500000', '500200', '500240');
INSERT INTO `t_district` VALUES ('500241', '秀山土家族苗族自治县', '500000', '500200', '500241');
INSERT INTO `t_district` VALUES ('500242', '酉阳土家族苗族自治县', '500000', '500200', '500242');
INSERT INTO `t_district` VALUES ('500243', '彭水苗族土家族自治县', '500000', '500200', '500243');
INSERT INTO `t_district` VALUES ('510104', '锦江区', '510000', '510100', '510104');
INSERT INTO `t_district` VALUES ('510105', '青羊区', '510000', '510100', '510105');
INSERT INTO `t_district` VALUES ('510106', '金牛区', '510000', '510100', '510106');
INSERT INTO `t_district` VALUES ('510107', '武侯区', '510000', '510100', '510107');
INSERT INTO `t_district` VALUES ('510108', '成华区', '510000', '510100', '510108');
INSERT INTO `t_district` VALUES ('510112', '龙泉驿区', '510000', '510100', '510112');
INSERT INTO `t_district` VALUES ('510113', '青白江区', '510000', '510100', '510113');
INSERT INTO `t_district` VALUES ('510114', '新都区', '510000', '510100', '510114');
INSERT INTO `t_district` VALUES ('510115', '温江区', '510000', '510100', '510115');
INSERT INTO `t_district` VALUES ('510116', '双流区', '510000', '510100', '510116');
INSERT INTO `t_district` VALUES ('510117', '郫都区', '510000', '510100', '510117');
INSERT INTO `t_district` VALUES ('510121', '金堂县', '510000', '510100', '510121');
INSERT INTO `t_district` VALUES ('510129', '大邑县', '510000', '510100', '510129');
INSERT INTO `t_district` VALUES ('510131', '蒲江县', '510000', '510100', '510131');
INSERT INTO `t_district` VALUES ('510132', '新津县', '510000', '510100', '510132');
INSERT INTO `t_district` VALUES ('510181', '都江堰市', '510000', '510100', '510181');
INSERT INTO `t_district` VALUES ('510182', '彭州市', '510000', '510100', '510182');
INSERT INTO `t_district` VALUES ('510183', '邛崃市', '510000', '510100', '510183');
INSERT INTO `t_district` VALUES ('510184', '崇州市', '510000', '510100', '510184');
INSERT INTO `t_district` VALUES ('510185', '简阳市', '510000', '510100', '510185');
INSERT INTO `t_district` VALUES ('510302', '自流井区', '510000', '510300', '510302');
INSERT INTO `t_district` VALUES ('510303', '贡井区', '510000', '510300', '510303');
INSERT INTO `t_district` VALUES ('510304', '大安区', '510000', '510300', '510304');
INSERT INTO `t_district` VALUES ('510311', '沿滩区', '510000', '510300', '510311');
INSERT INTO `t_district` VALUES ('510321', '荣县', '510000', '510300', '510321');
INSERT INTO `t_district` VALUES ('510322', '富顺县', '510000', '510300', '510322');
INSERT INTO `t_district` VALUES ('510402', '东区', '510000', '510400', '510402');
INSERT INTO `t_district` VALUES ('510403', '西区', '510000', '510400', '510403');
INSERT INTO `t_district` VALUES ('510411', '仁和区', '510000', '510400', '510411');
INSERT INTO `t_district` VALUES ('510421', '米易县', '510000', '510400', '510421');
INSERT INTO `t_district` VALUES ('510422', '盐边县', '510000', '510400', '510422');
INSERT INTO `t_district` VALUES ('510502', '江阳区', '510000', '510500', '510502');
INSERT INTO `t_district` VALUES ('510503', '纳溪区', '510000', '510500', '510503');
INSERT INTO `t_district` VALUES ('510504', '龙马潭区', '510000', '510500', '510504');
INSERT INTO `t_district` VALUES ('510521', '泸县', '510000', '510500', '510521');
INSERT INTO `t_district` VALUES ('510522', '合江县', '510000', '510500', '510522');
INSERT INTO `t_district` VALUES ('510524', '叙永县', '510000', '510500', '510524');
INSERT INTO `t_district` VALUES ('510525', '古蔺县', '510000', '510500', '510525');
INSERT INTO `t_district` VALUES ('510603', '旌阳区', '510000', '510600', '510603');
INSERT INTO `t_district` VALUES ('510604', '罗江区', '510000', '510600', '510604');
INSERT INTO `t_district` VALUES ('510623', '中江县', '510000', '510600', '510623');
INSERT INTO `t_district` VALUES ('510681', '广汉市', '510000', '510600', '510681');
INSERT INTO `t_district` VALUES ('510682', '什邡市', '510000', '510600', '510682');
INSERT INTO `t_district` VALUES ('510683', '绵竹市', '510000', '510600', '510683');
INSERT INTO `t_district` VALUES ('510703', '涪城区', '510000', '510700', '510703');
INSERT INTO `t_district` VALUES ('510704', '游仙区', '510000', '510700', '510704');
INSERT INTO `t_district` VALUES ('510705', '安州区', '510000', '510700', '510705');
INSERT INTO `t_district` VALUES ('510722', '三台县', '510000', '510700', '510722');
INSERT INTO `t_district` VALUES ('510723', '盐亭县', '510000', '510700', '510723');
INSERT INTO `t_district` VALUES ('510725', '梓潼县', '510000', '510700', '510725');
INSERT INTO `t_district` VALUES ('510726', '北川羌族自治县', '510000', '510700', '510726');
INSERT INTO `t_district` VALUES ('510727', '平武县', '510000', '510700', '510727');
INSERT INTO `t_district` VALUES ('510781', '江油市', '510000', '510700', '510781');
INSERT INTO `t_district` VALUES ('510802', '利州区', '510000', '510800', '510802');
INSERT INTO `t_district` VALUES ('510811', '昭化区', '510000', '510800', '510811');
INSERT INTO `t_district` VALUES ('510812', '朝天区', '510000', '510800', '510812');
INSERT INTO `t_district` VALUES ('510821', '旺苍县', '510000', '510800', '510821');
INSERT INTO `t_district` VALUES ('510822', '青川县', '510000', '510800', '510822');
INSERT INTO `t_district` VALUES ('510823', '剑阁县', '510000', '510800', '510823');
INSERT INTO `t_district` VALUES ('510824', '苍溪县', '510000', '510800', '510824');
INSERT INTO `t_district` VALUES ('510903', '船山区', '510000', '510900', '510903');
INSERT INTO `t_district` VALUES ('510904', '安居区', '510000', '510900', '510904');
INSERT INTO `t_district` VALUES ('510921', '蓬溪县', '510000', '510900', '510921');
INSERT INTO `t_district` VALUES ('510923', '大英县', '510000', '510900', '510923');
INSERT INTO `t_district` VALUES ('510981', '射洪市', '510000', '510900', '510981');
INSERT INTO `t_district` VALUES ('511002', '市中区', '510000', '511000', '511002');
INSERT INTO `t_district` VALUES ('511011', '东兴区', '510000', '511000', '511011');
INSERT INTO `t_district` VALUES ('511024', '威远县', '510000', '511000', '511024');
INSERT INTO `t_district` VALUES ('511025', '资中县', '510000', '511000', '511025');
INSERT INTO `t_district` VALUES ('511083', '隆昌市', '510000', '511000', '511083');
INSERT INTO `t_district` VALUES ('511102', '市中区', '510000', '511100', '511102');
INSERT INTO `t_district` VALUES ('511111', '沙湾区', '510000', '511100', '511111');
INSERT INTO `t_district` VALUES ('511112', '五通桥区', '510000', '511100', '511112');
INSERT INTO `t_district` VALUES ('511113', '金口河区', '510000', '511100', '511113');
INSERT INTO `t_district` VALUES ('511123', '犍为县', '510000', '511100', '511123');
INSERT INTO `t_district` VALUES ('511124', '井研县', '510000', '511100', '511124');
INSERT INTO `t_district` VALUES ('511126', '夹江县', '510000', '511100', '511126');
INSERT INTO `t_district` VALUES ('511129', '沐川县', '510000', '511100', '511129');
INSERT INTO `t_district` VALUES ('511132', '峨边彝族自治县', '510000', '511100', '511132');
INSERT INTO `t_district` VALUES ('511133', '马边彝族自治县', '510000', '511100', '511133');
INSERT INTO `t_district` VALUES ('511181', '峨眉山市', '510000', '511100', '511181');
INSERT INTO `t_district` VALUES ('511302', '顺庆区', '510000', '511300', '511302');
INSERT INTO `t_district` VALUES ('511303', '高坪区', '510000', '511300', '511303');
INSERT INTO `t_district` VALUES ('511304', '嘉陵区', '510000', '511300', '511304');
INSERT INTO `t_district` VALUES ('511321', '南部县', '510000', '511300', '511321');
INSERT INTO `t_district` VALUES ('511322', '营山县', '510000', '511300', '511322');
INSERT INTO `t_district` VALUES ('511323', '蓬安县', '510000', '511300', '511323');
INSERT INTO `t_district` VALUES ('511324', '仪陇县', '510000', '511300', '511324');
INSERT INTO `t_district` VALUES ('511325', '西充县', '510000', '511300', '511325');
INSERT INTO `t_district` VALUES ('511381', '阆中市', '510000', '511300', '511381');
INSERT INTO `t_district` VALUES ('511402', '东坡区', '510000', '511400', '511402');
INSERT INTO `t_district` VALUES ('511403', '彭山区', '510000', '511400', '511403');
INSERT INTO `t_district` VALUES ('511421', '仁寿县', '510000', '511400', '511421');
INSERT INTO `t_district` VALUES ('511423', '洪雅县', '510000', '511400', '511423');
INSERT INTO `t_district` VALUES ('511424', '丹棱县', '510000', '511400', '511424');
INSERT INTO `t_district` VALUES ('511425', '青神县', '510000', '511400', '511425');
INSERT INTO `t_district` VALUES ('511502', '翠屏区', '510000', '511500', '511502');
INSERT INTO `t_district` VALUES ('511503', '南溪区', '510000', '511500', '511503');
INSERT INTO `t_district` VALUES ('511504', '叙州区', '510000', '511500', '511504');
INSERT INTO `t_district` VALUES ('511523', '江安县', '510000', '511500', '511523');
INSERT INTO `t_district` VALUES ('511524', '长宁县', '510000', '511500', '511524');
INSERT INTO `t_district` VALUES ('511525', '高县', '510000', '511500', '511525');
INSERT INTO `t_district` VALUES ('511526', '珙县', '510000', '511500', '511526');
INSERT INTO `t_district` VALUES ('511527', '筠连县', '510000', '511500', '511527');
INSERT INTO `t_district` VALUES ('511528', '兴文县', '510000', '511500', '511528');
INSERT INTO `t_district` VALUES ('511529', '屏山县', '510000', '511500', '511529');
INSERT INTO `t_district` VALUES ('511602', '广安区', '510000', '511600', '511602');
INSERT INTO `t_district` VALUES ('511603', '前锋区', '510000', '511600', '511603');
INSERT INTO `t_district` VALUES ('511621', '岳池县', '510000', '511600', '511621');
INSERT INTO `t_district` VALUES ('511622', '武胜县', '510000', '511600', '511622');
INSERT INTO `t_district` VALUES ('511623', '邻水县', '510000', '511600', '511623');
INSERT INTO `t_district` VALUES ('511681', '华蓥市', '510000', '511600', '511681');
INSERT INTO `t_district` VALUES ('511702', '通川区', '510000', '511700', '511702');
INSERT INTO `t_district` VALUES ('511703', '达川区', '510000', '511700', '511703');
INSERT INTO `t_district` VALUES ('511722', '宣汉县', '510000', '511700', '511722');
INSERT INTO `t_district` VALUES ('511723', '开江县', '510000', '511700', '511723');
INSERT INTO `t_district` VALUES ('511724', '大竹县', '510000', '511700', '511724');
INSERT INTO `t_district` VALUES ('511725', '渠县', '510000', '511700', '511725');
INSERT INTO `t_district` VALUES ('511781', '万源市', '510000', '511700', '511781');
INSERT INTO `t_district` VALUES ('511802', '雨城区', '510000', '511800', '511802');
INSERT INTO `t_district` VALUES ('511803', '名山区', '510000', '511800', '511803');
INSERT INTO `t_district` VALUES ('511822', '荥经县', '510000', '511800', '511822');
INSERT INTO `t_district` VALUES ('511823', '汉源县', '510000', '511800', '511823');
INSERT INTO `t_district` VALUES ('511824', '石棉县', '510000', '511800', '511824');
INSERT INTO `t_district` VALUES ('511825', '天全县', '510000', '511800', '511825');
INSERT INTO `t_district` VALUES ('511826', '芦山县', '510000', '511800', '511826');
INSERT INTO `t_district` VALUES ('511827', '宝兴县', '510000', '511800', '511827');
INSERT INTO `t_district` VALUES ('511902', '巴州区', '510000', '511900', '511902');
INSERT INTO `t_district` VALUES ('511903', '恩阳区', '510000', '511900', '511903');
INSERT INTO `t_district` VALUES ('511921', '通江县', '510000', '511900', '511921');
INSERT INTO `t_district` VALUES ('511922', '南江县', '510000', '511900', '511922');
INSERT INTO `t_district` VALUES ('511923', '平昌县', '510000', '511900', '511923');
INSERT INTO `t_district` VALUES ('512002', '雁江区', '510000', '512000', '512002');
INSERT INTO `t_district` VALUES ('512021', '安岳县', '510000', '512000', '512021');
INSERT INTO `t_district` VALUES ('512022', '乐至县', '510000', '512000', '512022');
INSERT INTO `t_district` VALUES ('513201', '马尔康市', '510000', '513200', '513201');
INSERT INTO `t_district` VALUES ('513221', '汶川县', '510000', '513200', '513221');
INSERT INTO `t_district` VALUES ('513222', '理县', '510000', '513200', '513222');
INSERT INTO `t_district` VALUES ('513223', '茂县', '510000', '513200', '513223');
INSERT INTO `t_district` VALUES ('513224', '松潘县', '510000', '513200', '513224');
INSERT INTO `t_district` VALUES ('513225', '九寨沟县', '510000', '513200', '513225');
INSERT INTO `t_district` VALUES ('513226', '金川县', '510000', '513200', '513226');
INSERT INTO `t_district` VALUES ('513227', '小金县', '510000', '513200', '513227');
INSERT INTO `t_district` VALUES ('513228', '黑水县', '510000', '513200', '513228');
INSERT INTO `t_district` VALUES ('513230', '壤塘县', '510000', '513200', '513230');
INSERT INTO `t_district` VALUES ('513231', '阿坝县', '510000', '513200', '513231');
INSERT INTO `t_district` VALUES ('513232', '若尔盖县', '510000', '513200', '513232');
INSERT INTO `t_district` VALUES ('513233', '红原县', '510000', '513200', '513233');
INSERT INTO `t_district` VALUES ('513301', '康定市', '510000', '513300', '513301');
INSERT INTO `t_district` VALUES ('513322', '泸定县', '510000', '513300', '513322');
INSERT INTO `t_district` VALUES ('513323', '丹巴县', '510000', '513300', '513323');
INSERT INTO `t_district` VALUES ('513324', '九龙县', '510000', '513300', '513324');
INSERT INTO `t_district` VALUES ('513325', '雅江县', '510000', '513300', '513325');
INSERT INTO `t_district` VALUES ('513326', '道孚县', '510000', '513300', '513326');
INSERT INTO `t_district` VALUES ('513327', '炉霍县', '510000', '513300', '513327');
INSERT INTO `t_district` VALUES ('513328', '甘孜县', '510000', '513300', '513328');
INSERT INTO `t_district` VALUES ('513329', '新龙县', '510000', '513300', '513329');
INSERT INTO `t_district` VALUES ('513330', '德格县', '510000', '513300', '513330');
INSERT INTO `t_district` VALUES ('513331', '白玉县', '510000', '513300', '513331');
INSERT INTO `t_district` VALUES ('513332', '石渠县', '510000', '513300', '513332');
INSERT INTO `t_district` VALUES ('513333', '色达县', '510000', '513300', '513333');
INSERT INTO `t_district` VALUES ('513334', '理塘县', '510000', '513300', '513334');
INSERT INTO `t_district` VALUES ('513335', '巴塘县', '510000', '513300', '513335');
INSERT INTO `t_district` VALUES ('513336', '乡城县', '510000', '513300', '513336');
INSERT INTO `t_district` VALUES ('513337', '稻城县', '510000', '513300', '513337');
INSERT INTO `t_district` VALUES ('513338', '得荣县', '510000', '513300', '513338');
INSERT INTO `t_district` VALUES ('513401', '西昌市', '510000', '513400', '513401');
INSERT INTO `t_district` VALUES ('513422', '木里藏族自治县', '510000', '513400', '513422');
INSERT INTO `t_district` VALUES ('513423', '盐源县', '510000', '513400', '513423');
INSERT INTO `t_district` VALUES ('513424', '德昌县', '510000', '513400', '513424');
INSERT INTO `t_district` VALUES ('513425', '会理县', '510000', '513400', '513425');
INSERT INTO `t_district` VALUES ('513426', '会东县', '510000', '513400', '513426');
INSERT INTO `t_district` VALUES ('513427', '宁南县', '510000', '513400', '513427');
INSERT INTO `t_district` VALUES ('513428', '普格县', '510000', '513400', '513428');
INSERT INTO `t_district` VALUES ('513429', '布拖县', '510000', '513400', '513429');
INSERT INTO `t_district` VALUES ('513430', '金阳县', '510000', '513400', '513430');
INSERT INTO `t_district` VALUES ('513431', '昭觉县', '510000', '513400', '513431');
INSERT INTO `t_district` VALUES ('513432', '喜德县', '510000', '513400', '513432');
INSERT INTO `t_district` VALUES ('513433', '冕宁县', '510000', '513400', '513433');
INSERT INTO `t_district` VALUES ('513434', '越西县', '510000', '513400', '513434');
INSERT INTO `t_district` VALUES ('513435', '甘洛县', '510000', '513400', '513435');
INSERT INTO `t_district` VALUES ('513436', '美姑县', '510000', '513400', '513436');
INSERT INTO `t_district` VALUES ('513437', '雷波县', '510000', '513400', '513437');
INSERT INTO `t_district` VALUES ('520102', '南明区', '520000', '520100', '520102');
INSERT INTO `t_district` VALUES ('520103', '云岩区', '520000', '520100', '520103');
INSERT INTO `t_district` VALUES ('520111', '花溪区', '520000', '520100', '520111');
INSERT INTO `t_district` VALUES ('520112', '乌当区', '520000', '520100', '520112');
INSERT INTO `t_district` VALUES ('520113', '白云区', '520000', '520100', '520113');
INSERT INTO `t_district` VALUES ('520115', '观山湖区', '520000', '520100', '520115');
INSERT INTO `t_district` VALUES ('520121', '开阳县', '520000', '520100', '520121');
INSERT INTO `t_district` VALUES ('520122', '息烽县', '520000', '520100', '520122');
INSERT INTO `t_district` VALUES ('520123', '修文县', '520000', '520100', '520123');
INSERT INTO `t_district` VALUES ('520181', '清镇市', '520000', '520100', '520181');
INSERT INTO `t_district` VALUES ('520201', '钟山区', '520000', '520200', '520201');
INSERT INTO `t_district` VALUES ('520203', '六枝特区', '520000', '520200', '520203');
INSERT INTO `t_district` VALUES ('520221', '水城县', '520000', '520200', '520221');
INSERT INTO `t_district` VALUES ('520281', '盘州市', '520000', '520200', '520281');
INSERT INTO `t_district` VALUES ('520302', '红花岗区', '520000', '520300', '520302');
INSERT INTO `t_district` VALUES ('520303', '汇川区', '520000', '520300', '520303');
INSERT INTO `t_district` VALUES ('520304', '播州区', '520000', '520300', '520304');
INSERT INTO `t_district` VALUES ('520322', '桐梓县', '520000', '520300', '520322');
INSERT INTO `t_district` VALUES ('520323', '绥阳县', '520000', '520300', '520323');
INSERT INTO `t_district` VALUES ('520324', '正安县', '520000', '520300', '520324');
INSERT INTO `t_district` VALUES ('520325', '道真仡佬族苗族自治县', '520000', '520300', '520325');
INSERT INTO `t_district` VALUES ('520326', '务川仡佬族苗族自治县', '520000', '520300', '520326');
INSERT INTO `t_district` VALUES ('520327', '凤冈县', '520000', '520300', '520327');
INSERT INTO `t_district` VALUES ('520328', '湄潭县', '520000', '520300', '520328');
INSERT INTO `t_district` VALUES ('520329', '余庆县', '520000', '520300', '520329');
INSERT INTO `t_district` VALUES ('520330', '习水县', '520000', '520300', '520330');
INSERT INTO `t_district` VALUES ('520381', '赤水市', '520000', '520300', '520381');
INSERT INTO `t_district` VALUES ('520382', '仁怀市', '520000', '520300', '520382');
INSERT INTO `t_district` VALUES ('520402', '西秀区', '520000', '520400', '520402');
INSERT INTO `t_district` VALUES ('520403', '平坝区', '520000', '520400', '520403');
INSERT INTO `t_district` VALUES ('520422', '普定县', '520000', '520400', '520422');
INSERT INTO `t_district` VALUES ('520423', '镇宁布依族苗族自治县', '520000', '520400', '520423');
INSERT INTO `t_district` VALUES ('520424', '关岭布依族苗族自治县', '520000', '520400', '520424');
INSERT INTO `t_district` VALUES ('520425', '紫云苗族布依族自治县', '520000', '520400', '520425');
INSERT INTO `t_district` VALUES ('520502', '七星关区', '520000', '520500', '520502');
INSERT INTO `t_district` VALUES ('520521', '大方县', '520000', '520500', '520521');
INSERT INTO `t_district` VALUES ('520522', '黔西县', '520000', '520500', '520522');
INSERT INTO `t_district` VALUES ('520523', '金沙县', '520000', '520500', '520523');
INSERT INTO `t_district` VALUES ('520524', '织金县', '520000', '520500', '520524');
INSERT INTO `t_district` VALUES ('520525', '纳雍县', '520000', '520500', '520525');
INSERT INTO `t_district` VALUES ('520526', '威宁彝族回族苗族自治县', '520000', '520500', '520526');
INSERT INTO `t_district` VALUES ('520527', '赫章县', '520000', '520500', '520527');
INSERT INTO `t_district` VALUES ('520602', '碧江区', '520000', '520600', '520602');
INSERT INTO `t_district` VALUES ('520603', '万山区', '520000', '520600', '520603');
INSERT INTO `t_district` VALUES ('520621', '江口县', '520000', '520600', '520621');
INSERT INTO `t_district` VALUES ('520622', '玉屏侗族自治县', '520000', '520600', '520622');
INSERT INTO `t_district` VALUES ('520623', '石阡县', '520000', '520600', '520623');
INSERT INTO `t_district` VALUES ('520624', '思南县', '520000', '520600', '520624');
INSERT INTO `t_district` VALUES ('520625', '印江土家族苗族自治县', '520000', '520600', '520625');
INSERT INTO `t_district` VALUES ('520626', '德江县', '520000', '520600', '520626');
INSERT INTO `t_district` VALUES ('520627', '沿河土家族自治县', '520000', '520600', '520627');
INSERT INTO `t_district` VALUES ('520628', '松桃苗族自治县', '520000', '520600', '520628');
INSERT INTO `t_district` VALUES ('522301', '兴义市', '520000', '522300', '522301');
INSERT INTO `t_district` VALUES ('522302', '兴仁市', '520000', '522300', '522302');
INSERT INTO `t_district` VALUES ('522323', '普安县', '520000', '522300', '522323');
INSERT INTO `t_district` VALUES ('522324', '晴隆县', '520000', '522300', '522324');
INSERT INTO `t_district` VALUES ('522325', '贞丰县', '520000', '522300', '522325');
INSERT INTO `t_district` VALUES ('522326', '望谟县', '520000', '522300', '522326');
INSERT INTO `t_district` VALUES ('522327', '册亨县', '520000', '522300', '522327');
INSERT INTO `t_district` VALUES ('522328', '安龙县', '520000', '522300', '522328');
INSERT INTO `t_district` VALUES ('522601', '凯里市', '520000', '522600', '522601');
INSERT INTO `t_district` VALUES ('522622', '黄平县', '520000', '522600', '522622');
INSERT INTO `t_district` VALUES ('522623', '施秉县', '520000', '522600', '522623');
INSERT INTO `t_district` VALUES ('522624', '三穗县', '520000', '522600', '522624');
INSERT INTO `t_district` VALUES ('522625', '镇远县', '520000', '522600', '522625');
INSERT INTO `t_district` VALUES ('522626', '岑巩县', '520000', '522600', '522626');
INSERT INTO `t_district` VALUES ('522627', '天柱县', '520000', '522600', '522627');
INSERT INTO `t_district` VALUES ('522628', '锦屏县', '520000', '522600', '522628');
INSERT INTO `t_district` VALUES ('522629', '剑河县', '520000', '522600', '522629');
INSERT INTO `t_district` VALUES ('522630', '台江县', '520000', '522600', '522630');
INSERT INTO `t_district` VALUES ('522631', '黎平县', '520000', '522600', '522631');
INSERT INTO `t_district` VALUES ('522632', '榕江县', '520000', '522600', '522632');
INSERT INTO `t_district` VALUES ('522633', '从江县', '520000', '522600', '522633');
INSERT INTO `t_district` VALUES ('522634', '雷山县', '520000', '522600', '522634');
INSERT INTO `t_district` VALUES ('522635', '麻江县', '520000', '522600', '522635');
INSERT INTO `t_district` VALUES ('522636', '丹寨县', '520000', '522600', '522636');
INSERT INTO `t_district` VALUES ('522701', '都匀市', '520000', '522700', '522701');
INSERT INTO `t_district` VALUES ('522702', '福泉市', '520000', '522700', '522702');
INSERT INTO `t_district` VALUES ('522722', '荔波县', '520000', '522700', '522722');
INSERT INTO `t_district` VALUES ('522723', '贵定县', '520000', '522700', '522723');
INSERT INTO `t_district` VALUES ('522725', '瓮安县', '520000', '522700', '522725');
INSERT INTO `t_district` VALUES ('522726', '独山县', '520000', '522700', '522726');
INSERT INTO `t_district` VALUES ('522727', '平塘县', '520000', '522700', '522727');
INSERT INTO `t_district` VALUES ('522728', '罗甸县', '520000', '522700', '522728');
INSERT INTO `t_district` VALUES ('522729', '长顺县', '520000', '522700', '522729');
INSERT INTO `t_district` VALUES ('522730', '龙里县', '520000', '522700', '522730');
INSERT INTO `t_district` VALUES ('522731', '惠水县', '520000', '522700', '522731');
INSERT INTO `t_district` VALUES ('522732', '三都水族自治县', '520000', '522700', '522732');
INSERT INTO `t_district` VALUES ('530102', '五华区', '530000', '530100', '530102');
INSERT INTO `t_district` VALUES ('530103', '盘龙区', '530000', '530100', '530103');
INSERT INTO `t_district` VALUES ('530111', '官渡区', '530000', '530100', '530111');
INSERT INTO `t_district` VALUES ('530112', '西山区', '530000', '530100', '530112');
INSERT INTO `t_district` VALUES ('530113', '东川区', '530000', '530100', '530113');
INSERT INTO `t_district` VALUES ('530114', '呈贡区', '530000', '530100', '530114');
INSERT INTO `t_district` VALUES ('530115', '晋宁区', '530000', '530100', '530115');
INSERT INTO `t_district` VALUES ('530124', '富民县', '530000', '530100', '530124');
INSERT INTO `t_district` VALUES ('530125', '宜良县', '530000', '530100', '530125');
INSERT INTO `t_district` VALUES ('530126', '石林彝族自治县', '530000', '530100', '530126');
INSERT INTO `t_district` VALUES ('530127', '嵩明县', '530000', '530100', '530127');
INSERT INTO `t_district` VALUES ('530128', '禄劝彝族苗族自治县', '530000', '530100', '530128');
INSERT INTO `t_district` VALUES ('530129', '寻甸回族彝族自治县', '530000', '530100', '530129');
INSERT INTO `t_district` VALUES ('530181', '安宁市', '530000', '530100', '530181');
INSERT INTO `t_district` VALUES ('530302', '麒麟区', '530000', '530300', '530302');
INSERT INTO `t_district` VALUES ('530303', '沾益区', '530000', '530300', '530303');
INSERT INTO `t_district` VALUES ('530304', '马龙区', '530000', '530300', '530304');
INSERT INTO `t_district` VALUES ('530322', '陆良县', '530000', '530300', '530322');
INSERT INTO `t_district` VALUES ('530323', '师宗县', '530000', '530300', '530323');
INSERT INTO `t_district` VALUES ('530324', '罗平县', '530000', '530300', '530324');
INSERT INTO `t_district` VALUES ('530325', '富源县', '530000', '530300', '530325');
INSERT INTO `t_district` VALUES ('530326', '会泽县', '530000', '530300', '530326');
INSERT INTO `t_district` VALUES ('530381', '宣威市', '530000', '530300', '530381');
INSERT INTO `t_district` VALUES ('530402', '红塔区', '530000', '530400', '530402');
INSERT INTO `t_district` VALUES ('530403', '江川区', '530000', '530400', '530403');
INSERT INTO `t_district` VALUES ('530423', '通海县', '530000', '530400', '530423');
INSERT INTO `t_district` VALUES ('530424', '华宁县', '530000', '530400', '530424');
INSERT INTO `t_district` VALUES ('530425', '易门县', '530000', '530400', '530425');
INSERT INTO `t_district` VALUES ('530426', '峨山彝族自治县', '530000', '530400', '530426');
INSERT INTO `t_district` VALUES ('530427', '新平彝族傣族自治县', '530000', '530400', '530427');
INSERT INTO `t_district` VALUES ('530428', '元江哈尼族彝族傣族自治县', '530000', '530400', '530428');
INSERT INTO `t_district` VALUES ('530481', '澄江市', '530000', '530400', '530481');
INSERT INTO `t_district` VALUES ('530502', '隆阳区', '530000', '530500', '530502');
INSERT INTO `t_district` VALUES ('530521', '施甸县', '530000', '530500', '530521');
INSERT INTO `t_district` VALUES ('530523', '龙陵县', '530000', '530500', '530523');
INSERT INTO `t_district` VALUES ('530524', '昌宁县', '530000', '530500', '530524');
INSERT INTO `t_district` VALUES ('530581', '腾冲市', '530000', '530500', '530581');
INSERT INTO `t_district` VALUES ('530602', '昭阳区', '530000', '530600', '530602');
INSERT INTO `t_district` VALUES ('530621', '鲁甸县', '530000', '530600', '530621');
INSERT INTO `t_district` VALUES ('530622', '巧家县', '530000', '530600', '530622');
INSERT INTO `t_district` VALUES ('530623', '盐津县', '530000', '530600', '530623');
INSERT INTO `t_district` VALUES ('530624', '大关县', '530000', '530600', '530624');
INSERT INTO `t_district` VALUES ('530625', '永善县', '530000', '530600', '530625');
INSERT INTO `t_district` VALUES ('530626', '绥江县', '530000', '530600', '530626');
INSERT INTO `t_district` VALUES ('530627', '镇雄县', '530000', '530600', '530627');
INSERT INTO `t_district` VALUES ('530628', '彝良县', '530000', '530600', '530628');
INSERT INTO `t_district` VALUES ('530629', '威信县', '530000', '530600', '530629');
INSERT INTO `t_district` VALUES ('530681', '水富市', '530000', '530600', '530681');
INSERT INTO `t_district` VALUES ('530702', '古城区', '530000', '530700', '530702');
INSERT INTO `t_district` VALUES ('530721', '玉龙纳西族自治县', '530000', '530700', '530721');
INSERT INTO `t_district` VALUES ('530722', '永胜县', '530000', '530700', '530722');
INSERT INTO `t_district` VALUES ('530723', '华坪县', '530000', '530700', '530723');
INSERT INTO `t_district` VALUES ('530724', '宁蒗彝族自治县', '530000', '530700', '530724');
INSERT INTO `t_district` VALUES ('530802', '思茅区', '530000', '530800', '530802');
INSERT INTO `t_district` VALUES ('530821', '宁洱哈尼族彝族自治县', '530000', '530800', '530821');
INSERT INTO `t_district` VALUES ('530822', '墨江哈尼族自治县', '530000', '530800', '530822');
INSERT INTO `t_district` VALUES ('530823', '景东彝族自治县', '530000', '530800', '530823');
INSERT INTO `t_district` VALUES ('530824', '景谷傣族彝族自治县', '530000', '530800', '530824');
INSERT INTO `t_district` VALUES ('530825', '镇沅彝族哈尼族拉祜族自治县', '530000', '530800', '530825');
INSERT INTO `t_district` VALUES ('530826', '江城哈尼族彝族自治县', '530000', '530800', '530826');
INSERT INTO `t_district` VALUES ('530827', '孟连傣族拉祜族佤族自治县', '530000', '530800', '530827');
INSERT INTO `t_district` VALUES ('530828', '澜沧拉祜族自治县', '530000', '530800', '530828');
INSERT INTO `t_district` VALUES ('530829', '西盟佤族自治县', '530000', '530800', '530829');
INSERT INTO `t_district` VALUES ('530902', '临翔区', '530000', '530900', '530902');
INSERT INTO `t_district` VALUES ('530921', '凤庆县', '530000', '530900', '530921');
INSERT INTO `t_district` VALUES ('530922', '云县', '530000', '530900', '530922');
INSERT INTO `t_district` VALUES ('530923', '永德县', '530000', '530900', '530923');
INSERT INTO `t_district` VALUES ('530924', '镇康县', '530000', '530900', '530924');
INSERT INTO `t_district` VALUES ('530925', '双江拉祜族佤族布朗族傣族自治县', '530000', '530900', '530925');
INSERT INTO `t_district` VALUES ('530926', '耿马傣族佤族自治县', '530000', '530900', '530926');
INSERT INTO `t_district` VALUES ('530927', '沧源佤族自治县', '530000', '530900', '530927');
INSERT INTO `t_district` VALUES ('532301', '楚雄市', '530000', '532300', '532301');
INSERT INTO `t_district` VALUES ('532322', '双柏县', '530000', '532300', '532322');
INSERT INTO `t_district` VALUES ('532323', '牟定县', '530000', '532300', '532323');
INSERT INTO `t_district` VALUES ('532324', '南华县', '530000', '532300', '532324');
INSERT INTO `t_district` VALUES ('532325', '姚安县', '530000', '532300', '532325');
INSERT INTO `t_district` VALUES ('532326', '大姚县', '530000', '532300', '532326');
INSERT INTO `t_district` VALUES ('532327', '永仁县', '530000', '532300', '532327');
INSERT INTO `t_district` VALUES ('532328', '元谋县', '530000', '532300', '532328');
INSERT INTO `t_district` VALUES ('532329', '武定县', '530000', '532300', '532329');
INSERT INTO `t_district` VALUES ('532331', '禄丰县', '530000', '532300', '532331');
INSERT INTO `t_district` VALUES ('532501', '个旧市', '530000', '532500', '532501');
INSERT INTO `t_district` VALUES ('532502', '开远市', '530000', '532500', '532502');
INSERT INTO `t_district` VALUES ('532503', '蒙自市', '530000', '532500', '532503');
INSERT INTO `t_district` VALUES ('532504', '弥勒市', '530000', '532500', '532504');
INSERT INTO `t_district` VALUES ('532523', '屏边苗族自治县', '530000', '532500', '532523');
INSERT INTO `t_district` VALUES ('532524', '建水县', '530000', '532500', '532524');
INSERT INTO `t_district` VALUES ('532525', '石屏县', '530000', '532500', '532525');
INSERT INTO `t_district` VALUES ('532527', '泸西县', '530000', '532500', '532527');
INSERT INTO `t_district` VALUES ('532528', '元阳县', '530000', '532500', '532528');
INSERT INTO `t_district` VALUES ('532529', '红河县', '530000', '532500', '532529');
INSERT INTO `t_district` VALUES ('532530', '金平苗族瑶族傣族自治县', '530000', '532500', '532530');
INSERT INTO `t_district` VALUES ('532531', '绿春县', '530000', '532500', '532531');
INSERT INTO `t_district` VALUES ('532532', '河口瑶族自治县', '530000', '532500', '532532');
INSERT INTO `t_district` VALUES ('532601', '文山市', '530000', '532600', '532601');
INSERT INTO `t_district` VALUES ('532622', '砚山县', '530000', '532600', '532622');
INSERT INTO `t_district` VALUES ('532623', '西畴县', '530000', '532600', '532623');
INSERT INTO `t_district` VALUES ('532624', '麻栗坡县', '530000', '532600', '532624');
INSERT INTO `t_district` VALUES ('532625', '马关县', '530000', '532600', '532625');
INSERT INTO `t_district` VALUES ('532626', '丘北县', '530000', '532600', '532626');
INSERT INTO `t_district` VALUES ('532627', '广南县', '530000', '532600', '532627');
INSERT INTO `t_district` VALUES ('532628', '富宁县', '530000', '532600', '532628');
INSERT INTO `t_district` VALUES ('532801', '景洪市', '530000', '532800', '532801');
INSERT INTO `t_district` VALUES ('532822', '勐海县', '530000', '532800', '532822');
INSERT INTO `t_district` VALUES ('532823', '勐腊县', '530000', '532800', '532823');
INSERT INTO `t_district` VALUES ('532901', '大理市', '530000', '532900', '532901');
INSERT INTO `t_district` VALUES ('532922', '漾濞彝族自治县', '530000', '532900', '532922');
INSERT INTO `t_district` VALUES ('532923', '祥云县', '530000', '532900', '532923');
INSERT INTO `t_district` VALUES ('532924', '宾川县', '530000', '532900', '532924');
INSERT INTO `t_district` VALUES ('532925', '弥渡县', '530000', '532900', '532925');
INSERT INTO `t_district` VALUES ('532926', '南涧彝族自治县', '530000', '532900', '532926');
INSERT INTO `t_district` VALUES ('532927', '巍山彝族回族自治县', '530000', '532900', '532927');
INSERT INTO `t_district` VALUES ('532928', '永平县', '530000', '532900', '532928');
INSERT INTO `t_district` VALUES ('532929', '云龙县', '530000', '532900', '532929');
INSERT INTO `t_district` VALUES ('532930', '洱源县', '530000', '532900', '532930');
INSERT INTO `t_district` VALUES ('532931', '剑川县', '530000', '532900', '532931');
INSERT INTO `t_district` VALUES ('532932', '鹤庆县', '530000', '532900', '532932');
INSERT INTO `t_district` VALUES ('533102', '瑞丽市', '530000', '533100', '533102');
INSERT INTO `t_district` VALUES ('533103', '芒市', '530000', '533100', '533103');
INSERT INTO `t_district` VALUES ('533122', '梁河县', '530000', '533100', '533122');
INSERT INTO `t_district` VALUES ('533123', '盈江县', '530000', '533100', '533123');
INSERT INTO `t_district` VALUES ('533124', '陇川县', '530000', '533100', '533124');
INSERT INTO `t_district` VALUES ('533301', '泸水市', '530000', '533300', '533301');
INSERT INTO `t_district` VALUES ('533323', '福贡县', '530000', '533300', '533323');
INSERT INTO `t_district` VALUES ('533324', '贡山独龙族怒族自治县', '530000', '533300', '533324');
INSERT INTO `t_district` VALUES ('533325', '兰坪白族普米族自治县', '530000', '533300', '533325');
INSERT INTO `t_district` VALUES ('533401', '香格里拉市', '530000', '533400', '533401');
INSERT INTO `t_district` VALUES ('533422', '德钦县', '530000', '533400', '533422');
INSERT INTO `t_district` VALUES ('533423', '维西傈僳族自治县', '530000', '533400', '533423');
INSERT INTO `t_district` VALUES ('540102', '城关区', '540000', '540100', '540102');
INSERT INTO `t_district` VALUES ('540103', '堆龙德庆区', '540000', '540100', '540103');
INSERT INTO `t_district` VALUES ('540104', '达孜区', '540000', '540100', '540104');
INSERT INTO `t_district` VALUES ('540121', '林周县', '540000', '540100', '540121');
INSERT INTO `t_district` VALUES ('540122', '当雄县', '540000', '540100', '540122');
INSERT INTO `t_district` VALUES ('540123', '尼木县', '540000', '540100', '540123');
INSERT INTO `t_district` VALUES ('540124', '曲水县', '540000', '540100', '540124');
INSERT INTO `t_district` VALUES ('540127', '墨竹工卡县', '540000', '540100', '540127');
INSERT INTO `t_district` VALUES ('540202', '桑珠孜区', '540000', '540200', '540202');
INSERT INTO `t_district` VALUES ('540221', '南木林县', '540000', '540200', '540221');
INSERT INTO `t_district` VALUES ('540222', '江孜县', '540000', '540200', '540222');
INSERT INTO `t_district` VALUES ('540223', '定日县', '540000', '540200', '540223');
INSERT INTO `t_district` VALUES ('540224', '萨迦县', '540000', '540200', '540224');
INSERT INTO `t_district` VALUES ('540225', '拉孜县', '540000', '540200', '540225');
INSERT INTO `t_district` VALUES ('540226', '昂仁县', '540000', '540200', '540226');
INSERT INTO `t_district` VALUES ('540227', '谢通门县', '540000', '540200', '540227');
INSERT INTO `t_district` VALUES ('540228', '白朗县', '540000', '540200', '540228');
INSERT INTO `t_district` VALUES ('540229', '仁布县', '540000', '540200', '540229');
INSERT INTO `t_district` VALUES ('540230', '康马县', '540000', '540200', '540230');
INSERT INTO `t_district` VALUES ('540231', '定结县', '540000', '540200', '540231');
INSERT INTO `t_district` VALUES ('540232', '仲巴县', '540000', '540200', '540232');
INSERT INTO `t_district` VALUES ('540233', '亚东县', '540000', '540200', '540233');
INSERT INTO `t_district` VALUES ('540234', '吉隆县', '540000', '540200', '540234');
INSERT INTO `t_district` VALUES ('540235', '聂拉木县', '540000', '540200', '540235');
INSERT INTO `t_district` VALUES ('540236', '萨嘎县', '540000', '540200', '540236');
INSERT INTO `t_district` VALUES ('540237', '岗巴县', '540000', '540200', '540237');
INSERT INTO `t_district` VALUES ('540302', '卡若区', '540000', '540300', '540302');
INSERT INTO `t_district` VALUES ('540321', '江达县', '540000', '540300', '540321');
INSERT INTO `t_district` VALUES ('540322', '贡觉县', '540000', '540300', '540322');
INSERT INTO `t_district` VALUES ('540323', '类乌齐县', '540000', '540300', '540323');
INSERT INTO `t_district` VALUES ('540324', '丁青县', '540000', '540300', '540324');
INSERT INTO `t_district` VALUES ('540325', '察雅县', '540000', '540300', '540325');
INSERT INTO `t_district` VALUES ('540326', '八宿县', '540000', '540300', '540326');
INSERT INTO `t_district` VALUES ('540327', '左贡县', '540000', '540300', '540327');
INSERT INTO `t_district` VALUES ('540328', '芒康县', '540000', '540300', '540328');
INSERT INTO `t_district` VALUES ('540329', '洛隆县', '540000', '540300', '540329');
INSERT INTO `t_district` VALUES ('540330', '边坝县', '540000', '540300', '540330');
INSERT INTO `t_district` VALUES ('540402', '巴宜区', '540000', '540400', '540402');
INSERT INTO `t_district` VALUES ('540421', '工布江达县', '540000', '540400', '540421');
INSERT INTO `t_district` VALUES ('540422', '米林县', '540000', '540400', '540422');
INSERT INTO `t_district` VALUES ('540423', '墨脱县', '540000', '540400', '540423');
INSERT INTO `t_district` VALUES ('540424', '波密县', '540000', '540400', '540424');
INSERT INTO `t_district` VALUES ('540425', '察隅县', '540000', '540400', '540425');
INSERT INTO `t_district` VALUES ('540426', '朗县', '540000', '540400', '540426');
INSERT INTO `t_district` VALUES ('540502', '乃东区', '540000', '540500', '540502');
INSERT INTO `t_district` VALUES ('540521', '扎囊县', '540000', '540500', '540521');
INSERT INTO `t_district` VALUES ('540522', '贡嘎县', '540000', '540500', '540522');
INSERT INTO `t_district` VALUES ('540523', '桑日县', '540000', '540500', '540523');
INSERT INTO `t_district` VALUES ('540524', '琼结县', '540000', '540500', '540524');
INSERT INTO `t_district` VALUES ('540525', '曲松县', '540000', '540500', '540525');
INSERT INTO `t_district` VALUES ('540526', '措美县', '540000', '540500', '540526');
INSERT INTO `t_district` VALUES ('540527', '洛扎县', '540000', '540500', '540527');
INSERT INTO `t_district` VALUES ('540528', '加查县', '540000', '540500', '540528');
INSERT INTO `t_district` VALUES ('540529', '隆子县', '540000', '540500', '540529');
INSERT INTO `t_district` VALUES ('540530', '错那县', '540000', '540500', '540530');
INSERT INTO `t_district` VALUES ('540531', '浪卡子县', '540000', '540500', '540531');
INSERT INTO `t_district` VALUES ('540602', '色尼区', '540000', '540600', '540602');
INSERT INTO `t_district` VALUES ('540621', '嘉黎县 ', '540000', '540600', '540621');
INSERT INTO `t_district` VALUES ('540622', '比如县 ', '540000', '540600', '540622');
INSERT INTO `t_district` VALUES ('540623', '聂荣县 ', '540000', '540600', '540623');
INSERT INTO `t_district` VALUES ('540624', '安多县 ', '540000', '540600', '540624');
INSERT INTO `t_district` VALUES ('540625', '申扎县 ', '540000', '540600', '540625');
INSERT INTO `t_district` VALUES ('540626', '索县   ', '540000', '540600', '540626');
INSERT INTO `t_district` VALUES ('540627', '班戈县 ', '540000', '540600', '540627');
INSERT INTO `t_district` VALUES ('540628', '巴青县 ', '540000', '540600', '540628');
INSERT INTO `t_district` VALUES ('540629', '尼玛县 ', '540000', '540600', '540629');
INSERT INTO `t_district` VALUES ('540630', '双湖县 ', '540000', '540600', '540630');
INSERT INTO `t_district` VALUES ('542521', '普兰县', '540000', '542500', '542521');
INSERT INTO `t_district` VALUES ('542522', '札达县', '540000', '542500', '542522');
INSERT INTO `t_district` VALUES ('542523', '噶尔县', '540000', '542500', '542523');
INSERT INTO `t_district` VALUES ('542524', '日土县', '540000', '542500', '542524');
INSERT INTO `t_district` VALUES ('542525', '革吉县', '540000', '542500', '542525');
INSERT INTO `t_district` VALUES ('542526', '改则县', '540000', '542500', '542526');
INSERT INTO `t_district` VALUES ('542527', '措勤县', '540000', '542500', '542527');
INSERT INTO `t_district` VALUES ('610102', '新城区', '610000', '610100', '610102');
INSERT INTO `t_district` VALUES ('610103', '碑林区', '610000', '610100', '610103');
INSERT INTO `t_district` VALUES ('610104', '莲湖区', '610000', '610100', '610104');
INSERT INTO `t_district` VALUES ('610111', '灞桥区', '610000', '610100', '610111');
INSERT INTO `t_district` VALUES ('610112', '未央区', '610000', '610100', '610112');
INSERT INTO `t_district` VALUES ('610113', '雁塔区', '610000', '610100', '610113');
INSERT INTO `t_district` VALUES ('610114', '阎良区', '610000', '610100', '610114');
INSERT INTO `t_district` VALUES ('610115', '临潼区', '610000', '610100', '610115');
INSERT INTO `t_district` VALUES ('610116', '长安区', '610000', '610100', '610116');
INSERT INTO `t_district` VALUES ('610117', '高陵区', '610000', '610100', '610117');
INSERT INTO `t_district` VALUES ('610118', '鄠邑区', '610000', '610100', '610118');
INSERT INTO `t_district` VALUES ('610122', '蓝田县', '610000', '610100', '610122');
INSERT INTO `t_district` VALUES ('610124', '周至县', '610000', '610100', '610124');
INSERT INTO `t_district` VALUES ('610202', '王益区', '610000', '610200', '610202');
INSERT INTO `t_district` VALUES ('610203', '印台区', '610000', '610200', '610203');
INSERT INTO `t_district` VALUES ('610204', '耀州区', '610000', '610200', '610204');
INSERT INTO `t_district` VALUES ('610222', '宜君县', '610000', '610200', '610222');
INSERT INTO `t_district` VALUES ('610302', '渭滨区', '610000', '610300', '610302');
INSERT INTO `t_district` VALUES ('610303', '金台区', '610000', '610300', '610303');
INSERT INTO `t_district` VALUES ('610304', '陈仓区', '610000', '610300', '610304');
INSERT INTO `t_district` VALUES ('610322', '凤翔县', '610000', '610300', '610322');
INSERT INTO `t_district` VALUES ('610323', '岐山县', '610000', '610300', '610323');
INSERT INTO `t_district` VALUES ('610324', '扶风县', '610000', '610300', '610324');
INSERT INTO `t_district` VALUES ('610326', '眉县', '610000', '610300', '610326');
INSERT INTO `t_district` VALUES ('610327', '陇县', '610000', '610300', '610327');
INSERT INTO `t_district` VALUES ('610328', '千阳县', '610000', '610300', '610328');
INSERT INTO `t_district` VALUES ('610329', '麟游县', '610000', '610300', '610329');
INSERT INTO `t_district` VALUES ('610330', '凤县', '610000', '610300', '610330');
INSERT INTO `t_district` VALUES ('610331', '太白县', '610000', '610300', '610331');
INSERT INTO `t_district` VALUES ('610402', '秦都区', '610000', '610400', '610402');
INSERT INTO `t_district` VALUES ('610403', '杨陵区', '610000', '610400', '610403');
INSERT INTO `t_district` VALUES ('610404', '渭城区', '610000', '610400', '610404');
INSERT INTO `t_district` VALUES ('610422', '三原县', '610000', '610400', '610422');
INSERT INTO `t_district` VALUES ('610423', '泾阳县', '610000', '610400', '610423');
INSERT INTO `t_district` VALUES ('610424', '乾县', '610000', '610400', '610424');
INSERT INTO `t_district` VALUES ('610425', '礼泉县', '610000', '610400', '610425');
INSERT INTO `t_district` VALUES ('610426', '永寿县', '610000', '610400', '610426');
INSERT INTO `t_district` VALUES ('610428', '长武县', '610000', '610400', '610428');
INSERT INTO `t_district` VALUES ('610429', '旬邑县', '610000', '610400', '610429');
INSERT INTO `t_district` VALUES ('610430', '淳化县', '610000', '610400', '610430');
INSERT INTO `t_district` VALUES ('610431', '武功县', '610000', '610400', '610431');
INSERT INTO `t_district` VALUES ('610481', '兴平市', '610000', '610400', '610481');
INSERT INTO `t_district` VALUES ('610482', '彬州市', '610000', '610400', '610482');
INSERT INTO `t_district` VALUES ('610502', '临渭区', '610000', '610500', '610502');
INSERT INTO `t_district` VALUES ('610503', '华州区', '610000', '610500', '610503');
INSERT INTO `t_district` VALUES ('610522', '潼关县', '610000', '610500', '610522');
INSERT INTO `t_district` VALUES ('610523', '大荔县', '610000', '610500', '610523');
INSERT INTO `t_district` VALUES ('610524', '合阳县', '610000', '610500', '610524');
INSERT INTO `t_district` VALUES ('610525', '澄城县', '610000', '610500', '610525');
INSERT INTO `t_district` VALUES ('610526', '蒲城县', '610000', '610500', '610526');
INSERT INTO `t_district` VALUES ('610527', '白水县', '610000', '610500', '610527');
INSERT INTO `t_district` VALUES ('610528', '富平县', '610000', '610500', '610528');
INSERT INTO `t_district` VALUES ('610581', '韩城市', '610000', '610500', '610581');
INSERT INTO `t_district` VALUES ('610582', '华阴市', '610000', '610500', '610582');
INSERT INTO `t_district` VALUES ('610602', '宝塔区', '610000', '610600', '610602');
INSERT INTO `t_district` VALUES ('610603', '安塞区', '610000', '610600', '610603');
INSERT INTO `t_district` VALUES ('610621', '延长县', '610000', '610600', '610621');
INSERT INTO `t_district` VALUES ('610622', '延川县', '610000', '610600', '610622');
INSERT INTO `t_district` VALUES ('610625', '志丹县', '610000', '610600', '610625');
INSERT INTO `t_district` VALUES ('610626', '吴起县', '610000', '610600', '610626');
INSERT INTO `t_district` VALUES ('610627', '甘泉县', '610000', '610600', '610627');
INSERT INTO `t_district` VALUES ('610628', '富县', '610000', '610600', '610628');
INSERT INTO `t_district` VALUES ('610629', '洛川县', '610000', '610600', '610629');
INSERT INTO `t_district` VALUES ('610630', '宜川县', '610000', '610600', '610630');
INSERT INTO `t_district` VALUES ('610631', '黄龙县', '610000', '610600', '610631');
INSERT INTO `t_district` VALUES ('610632', '黄陵县', '610000', '610600', '610632');
INSERT INTO `t_district` VALUES ('610681', '子长市', '610000', '610600', '610681');
INSERT INTO `t_district` VALUES ('610702', '汉台区', '610000', '610700', '610702');
INSERT INTO `t_district` VALUES ('610703', '南郑区', '610000', '610700', '610703');
INSERT INTO `t_district` VALUES ('610722', '城固县', '610000', '610700', '610722');
INSERT INTO `t_district` VALUES ('610723', '洋县', '610000', '610700', '610723');
INSERT INTO `t_district` VALUES ('610724', '西乡县', '610000', '610700', '610724');
INSERT INTO `t_district` VALUES ('610725', '勉县', '610000', '610700', '610725');
INSERT INTO `t_district` VALUES ('610726', '宁强县', '610000', '610700', '610726');
INSERT INTO `t_district` VALUES ('610727', '略阳县', '610000', '610700', '610727');
INSERT INTO `t_district` VALUES ('610728', '镇巴县', '610000', '610700', '610728');
INSERT INTO `t_district` VALUES ('610729', '留坝县', '610000', '610700', '610729');
INSERT INTO `t_district` VALUES ('610730', '佛坪县', '610000', '610700', '610730');
INSERT INTO `t_district` VALUES ('610802', '榆阳区', '610000', '610800', '610802');
INSERT INTO `t_district` VALUES ('610803', '横山区', '610000', '610800', '610803');
INSERT INTO `t_district` VALUES ('610822', '府谷县', '610000', '610800', '610822');
INSERT INTO `t_district` VALUES ('610824', '靖边县', '610000', '610800', '610824');
INSERT INTO `t_district` VALUES ('610825', '定边县', '610000', '610800', '610825');
INSERT INTO `t_district` VALUES ('610826', '绥德县', '610000', '610800', '610826');
INSERT INTO `t_district` VALUES ('610827', '米脂县', '610000', '610800', '610827');
INSERT INTO `t_district` VALUES ('610828', '佳县', '610000', '610800', '610828');
INSERT INTO `t_district` VALUES ('610829', '吴堡县', '610000', '610800', '610829');
INSERT INTO `t_district` VALUES ('610830', '清涧县', '610000', '610800', '610830');
INSERT INTO `t_district` VALUES ('610831', '子洲县', '610000', '610800', '610831');
INSERT INTO `t_district` VALUES ('610881', '神木市', '610000', '610800', '610881');
INSERT INTO `t_district` VALUES ('610902', '汉滨区', '610000', '610900', '610902');
INSERT INTO `t_district` VALUES ('610921', '汉阴县', '610000', '610900', '610921');
INSERT INTO `t_district` VALUES ('610922', '石泉县', '610000', '610900', '610922');
INSERT INTO `t_district` VALUES ('610923', '宁陕县', '610000', '610900', '610923');
INSERT INTO `t_district` VALUES ('610924', '紫阳县', '610000', '610900', '610924');
INSERT INTO `t_district` VALUES ('610925', '岚皋县', '610000', '610900', '610925');
INSERT INTO `t_district` VALUES ('610926', '平利县', '610000', '610900', '610926');
INSERT INTO `t_district` VALUES ('610927', '镇坪县', '610000', '610900', '610927');
INSERT INTO `t_district` VALUES ('610928', '旬阳县', '610000', '610900', '610928');
INSERT INTO `t_district` VALUES ('610929', '白河县', '610000', '610900', '610929');
INSERT INTO `t_district` VALUES ('611002', '商州区', '610000', '611000', '611002');
INSERT INTO `t_district` VALUES ('611021', '洛南县', '610000', '611000', '611021');
INSERT INTO `t_district` VALUES ('611022', '丹凤县', '610000', '611000', '611022');
INSERT INTO `t_district` VALUES ('611023', '商南县', '610000', '611000', '611023');
INSERT INTO `t_district` VALUES ('611024', '山阳县', '610000', '611000', '611024');
INSERT INTO `t_district` VALUES ('611025', '镇安县', '610000', '611000', '611025');
INSERT INTO `t_district` VALUES ('611026', '柞水县', '610000', '611000', '611026');
INSERT INTO `t_district` VALUES ('620102', '城关区', '620000', '620100', '620102');
INSERT INTO `t_district` VALUES ('620103', '七里河区', '620000', '620100', '620103');
INSERT INTO `t_district` VALUES ('620104', '西固区', '620000', '620100', '620104');
INSERT INTO `t_district` VALUES ('620105', '安宁区', '620000', '620100', '620105');
INSERT INTO `t_district` VALUES ('620111', '红古区', '620000', '620100', '620111');
INSERT INTO `t_district` VALUES ('620121', '永登县', '620000', '620100', '620121');
INSERT INTO `t_district` VALUES ('620122', '皋兰县', '620000', '620100', '620122');
INSERT INTO `t_district` VALUES ('620123', '榆中县', '620000', '620100', '620123');
INSERT INTO `t_district` VALUES ('620302', '金川区', '620000', '620300', '620302');
INSERT INTO `t_district` VALUES ('620321', '永昌县', '620000', '620300', '620321');
INSERT INTO `t_district` VALUES ('620402', '白银区', '620000', '620400', '620402');
INSERT INTO `t_district` VALUES ('620403', '平川区', '620000', '620400', '620403');
INSERT INTO `t_district` VALUES ('620421', '靖远县', '620000', '620400', '620421');
INSERT INTO `t_district` VALUES ('620422', '会宁县', '620000', '620400', '620422');
INSERT INTO `t_district` VALUES ('620423', '景泰县', '620000', '620400', '620423');
INSERT INTO `t_district` VALUES ('620502', '秦州区', '620000', '620500', '620502');
INSERT INTO `t_district` VALUES ('620503', '麦积区', '620000', '620500', '620503');
INSERT INTO `t_district` VALUES ('620521', '清水县', '620000', '620500', '620521');
INSERT INTO `t_district` VALUES ('620522', '秦安县', '620000', '620500', '620522');
INSERT INTO `t_district` VALUES ('620523', '甘谷县', '620000', '620500', '620523');
INSERT INTO `t_district` VALUES ('620524', '武山县', '620000', '620500', '620524');
INSERT INTO `t_district` VALUES ('620525', '张家川回族自治县', '620000', '620500', '620525');
INSERT INTO `t_district` VALUES ('620602', '凉州区', '620000', '620600', '620602');
INSERT INTO `t_district` VALUES ('620621', '民勤县', '620000', '620600', '620621');
INSERT INTO `t_district` VALUES ('620622', '古浪县', '620000', '620600', '620622');
INSERT INTO `t_district` VALUES ('620623', '天祝藏族自治县', '620000', '620600', '620623');
INSERT INTO `t_district` VALUES ('620702', '甘州区', '620000', '620700', '620702');
INSERT INTO `t_district` VALUES ('620721', '肃南裕固族自治县', '620000', '620700', '620721');
INSERT INTO `t_district` VALUES ('620722', '民乐县', '620000', '620700', '620722');
INSERT INTO `t_district` VALUES ('620723', '临泽县', '620000', '620700', '620723');
INSERT INTO `t_district` VALUES ('620724', '高台县', '620000', '620700', '620724');
INSERT INTO `t_district` VALUES ('620725', '山丹县', '620000', '620700', '620725');
INSERT INTO `t_district` VALUES ('620802', '崆峒区', '620000', '620800', '620802');
INSERT INTO `t_district` VALUES ('620821', '泾川县', '620000', '620800', '620821');
INSERT INTO `t_district` VALUES ('620822', '灵台县', '620000', '620800', '620822');
INSERT INTO `t_district` VALUES ('620823', '崇信县', '620000', '620800', '620823');
INSERT INTO `t_district` VALUES ('620825', '庄浪县', '620000', '620800', '620825');
INSERT INTO `t_district` VALUES ('620826', '静宁县', '620000', '620800', '620826');
INSERT INTO `t_district` VALUES ('620881', '华亭市', '620000', '620800', '620881');
INSERT INTO `t_district` VALUES ('620902', '肃州区', '620000', '620900', '620902');
INSERT INTO `t_district` VALUES ('620921', '金塔县', '620000', '620900', '620921');
INSERT INTO `t_district` VALUES ('620922', '瓜州县', '620000', '620900', '620922');
INSERT INTO `t_district` VALUES ('620923', '肃北蒙古族自治县', '620000', '620900', '620923');
INSERT INTO `t_district` VALUES ('620924', '阿克塞哈萨克族自治县', '620000', '620900', '620924');
INSERT INTO `t_district` VALUES ('620981', '玉门市', '620000', '620900', '620981');
INSERT INTO `t_district` VALUES ('620982', '敦煌市', '620000', '620900', '620982');
INSERT INTO `t_district` VALUES ('621002', '西峰区', '620000', '621000', '621002');
INSERT INTO `t_district` VALUES ('621021', '庆城县', '620000', '621000', '621021');
INSERT INTO `t_district` VALUES ('621022', '环县', '620000', '621000', '621022');
INSERT INTO `t_district` VALUES ('621023', '华池县', '620000', '621000', '621023');
INSERT INTO `t_district` VALUES ('621024', '合水县', '620000', '621000', '621024');
INSERT INTO `t_district` VALUES ('621025', '正宁县', '620000', '621000', '621025');
INSERT INTO `t_district` VALUES ('621026', '宁县', '620000', '621000', '621026');
INSERT INTO `t_district` VALUES ('621027', '镇原县', '620000', '621000', '621027');
INSERT INTO `t_district` VALUES ('621102', '安定区', '620000', '621100', '621102');
INSERT INTO `t_district` VALUES ('621121', '通渭县', '620000', '621100', '621121');
INSERT INTO `t_district` VALUES ('621122', '陇西县', '620000', '621100', '621122');
INSERT INTO `t_district` VALUES ('621123', '渭源县', '620000', '621100', '621123');
INSERT INTO `t_district` VALUES ('621124', '临洮县', '620000', '621100', '621124');
INSERT INTO `t_district` VALUES ('621125', '漳县', '620000', '621100', '621125');
INSERT INTO `t_district` VALUES ('621126', '岷县', '620000', '621100', '621126');
INSERT INTO `t_district` VALUES ('621202', '武都区', '620000', '621200', '621202');
INSERT INTO `t_district` VALUES ('621221', '成县', '620000', '621200', '621221');
INSERT INTO `t_district` VALUES ('621222', '文县', '620000', '621200', '621222');
INSERT INTO `t_district` VALUES ('621223', '宕昌县', '620000', '621200', '621223');
INSERT INTO `t_district` VALUES ('621224', '康县', '620000', '621200', '621224');
INSERT INTO `t_district` VALUES ('621225', '西和县', '620000', '621200', '621225');
INSERT INTO `t_district` VALUES ('621226', '礼县', '620000', '621200', '621226');
INSERT INTO `t_district` VALUES ('621227', '徽县', '620000', '621200', '621227');
INSERT INTO `t_district` VALUES ('621228', '两当县', '620000', '621200', '621228');
INSERT INTO `t_district` VALUES ('622901', '临夏市', '620000', '622900', '622901');
INSERT INTO `t_district` VALUES ('622921', '临夏县', '620000', '622900', '622921');
INSERT INTO `t_district` VALUES ('622922', '康乐县', '620000', '622900', '622922');
INSERT INTO `t_district` VALUES ('622923', '永靖县', '620000', '622900', '622923');
INSERT INTO `t_district` VALUES ('622924', '广河县', '620000', '622900', '622924');
INSERT INTO `t_district` VALUES ('622925', '和政县', '620000', '622900', '622925');
INSERT INTO `t_district` VALUES ('622926', '东乡族自治县', '620000', '622900', '622926');
INSERT INTO `t_district` VALUES ('622927', '积石山保安族东乡族撒拉族自治县', '620000', '622900', '622927');
INSERT INTO `t_district` VALUES ('623001', '合作市', '620000', '623000', '623001');
INSERT INTO `t_district` VALUES ('623021', '临潭县', '620000', '623000', '623021');
INSERT INTO `t_district` VALUES ('623022', '卓尼县', '620000', '623000', '623022');
INSERT INTO `t_district` VALUES ('623023', '舟曲县', '620000', '623000', '623023');
INSERT INTO `t_district` VALUES ('623024', '迭部县', '620000', '623000', '623024');
INSERT INTO `t_district` VALUES ('623025', '玛曲县', '620000', '623000', '623025');
INSERT INTO `t_district` VALUES ('623026', '碌曲县', '620000', '623000', '623026');
INSERT INTO `t_district` VALUES ('623027', '夏河县', '620000', '623000', '623027');
INSERT INTO `t_district` VALUES ('630102', '城东区', '630000', '630100', '630102');
INSERT INTO `t_district` VALUES ('630103', '城中区', '630000', '630100', '630103');
INSERT INTO `t_district` VALUES ('630104', '城西区', '630000', '630100', '630104');
INSERT INTO `t_district` VALUES ('630105', '城北区', '630000', '630100', '630105');
INSERT INTO `t_district` VALUES ('630106', '湟中区', '630000', '630100', '630106');
INSERT INTO `t_district` VALUES ('630121', '大通回族土族自治县', '630000', '630100', '630121');
INSERT INTO `t_district` VALUES ('630123', '湟源县', '630000', '630100', '630123');
INSERT INTO `t_district` VALUES ('630202', '乐都区', '630000', '630200', '630202');
INSERT INTO `t_district` VALUES ('630203', '平安区', '630000', '630200', '630203');
INSERT INTO `t_district` VALUES ('630222', '民和回族土族自治县', '630000', '630200', '630222');
INSERT INTO `t_district` VALUES ('630223', '互助土族自治县', '630000', '630200', '630223');
INSERT INTO `t_district` VALUES ('630224', '化隆回族自治县', '630000', '630200', '630224');
INSERT INTO `t_district` VALUES ('630225', '循化撒拉族自治县', '630000', '630200', '630225');
INSERT INTO `t_district` VALUES ('632221', '门源回族自治县', '630000', '632200', '632221');
INSERT INTO `t_district` VALUES ('632222', '祁连县', '630000', '632200', '632222');
INSERT INTO `t_district` VALUES ('632223', '海晏县', '630000', '632200', '632223');
INSERT INTO `t_district` VALUES ('632224', '刚察县', '630000', '632200', '632224');
INSERT INTO `t_district` VALUES ('632321', '同仁县', '630000', '632300', '632321');
INSERT INTO `t_district` VALUES ('632322', '尖扎县', '630000', '632300', '632322');
INSERT INTO `t_district` VALUES ('632323', '泽库县', '630000', '632300', '632323');
INSERT INTO `t_district` VALUES ('632324', '河南蒙古族自治县', '630000', '632300', '632324');
INSERT INTO `t_district` VALUES ('632521', '共和县', '630000', '632500', '632521');
INSERT INTO `t_district` VALUES ('632522', '同德县', '630000', '632500', '632522');
INSERT INTO `t_district` VALUES ('632523', '贵德县', '630000', '632500', '632523');
INSERT INTO `t_district` VALUES ('632524', '兴海县', '630000', '632500', '632524');
INSERT INTO `t_district` VALUES ('632525', '贵南县', '630000', '632500', '632525');
INSERT INTO `t_district` VALUES ('632621', '玛沁县', '630000', '632600', '632621');
INSERT INTO `t_district` VALUES ('632622', '班玛县', '630000', '632600', '632622');
INSERT INTO `t_district` VALUES ('632623', '甘德县', '630000', '632600', '632623');
INSERT INTO `t_district` VALUES ('632624', '达日县', '630000', '632600', '632624');
INSERT INTO `t_district` VALUES ('632625', '久治县', '630000', '632600', '632625');
INSERT INTO `t_district` VALUES ('632626', '玛多县', '630000', '632600', '632626');
INSERT INTO `t_district` VALUES ('632701', '玉树市', '630000', '632700', '632701');
INSERT INTO `t_district` VALUES ('632722', '杂多县', '630000', '632700', '632722');
INSERT INTO `t_district` VALUES ('632723', '称多县', '630000', '632700', '632723');
INSERT INTO `t_district` VALUES ('632724', '治多县', '630000', '632700', '632724');
INSERT INTO `t_district` VALUES ('632725', '囊谦县', '630000', '632700', '632725');
INSERT INTO `t_district` VALUES ('632726', '曲麻莱县', '630000', '632700', '632726');
INSERT INTO `t_district` VALUES ('632801', '格尔木市', '630000', '632800', '632801');
INSERT INTO `t_district` VALUES ('632802', '德令哈市', '630000', '632800', '632802');
INSERT INTO `t_district` VALUES ('632803', '茫崖市', '630000', '632800', '632803');
INSERT INTO `t_district` VALUES ('632821', '乌兰县', '630000', '632800', '632821');
INSERT INTO `t_district` VALUES ('632822', '都兰县', '630000', '632800', '632822');
INSERT INTO `t_district` VALUES ('632823', '天峻县', '630000', '632800', '632823');
INSERT INTO `t_district` VALUES ('640104', '兴庆区', '640000', '640100', '640104');
INSERT INTO `t_district` VALUES ('640105', '西夏区', '640000', '640100', '640105');
INSERT INTO `t_district` VALUES ('640106', '金凤区', '640000', '640100', '640106');
INSERT INTO `t_district` VALUES ('640121', '永宁县', '640000', '640100', '640121');
INSERT INTO `t_district` VALUES ('640122', '贺兰县', '640000', '640100', '640122');
INSERT INTO `t_district` VALUES ('640181', '灵武市', '640000', '640100', '640181');
INSERT INTO `t_district` VALUES ('640202', '大武口区', '640000', '640200', '640202');
INSERT INTO `t_district` VALUES ('640205', '惠农区', '640000', '640200', '640205');
INSERT INTO `t_district` VALUES ('640221', '平罗县', '640000', '640200', '640221');
INSERT INTO `t_district` VALUES ('640302', '利通区', '640000', '640300', '640302');
INSERT INTO `t_district` VALUES ('640303', '红寺堡区', '640000', '640300', '640303');
INSERT INTO `t_district` VALUES ('640323', '盐池县', '640000', '640300', '640323');
INSERT INTO `t_district` VALUES ('640324', '同心县', '640000', '640300', '640324');
INSERT INTO `t_district` VALUES ('640381', '青铜峡市', '640000', '640300', '640381');
INSERT INTO `t_district` VALUES ('640402', '原州区', '640000', '640400', '640402');
INSERT INTO `t_district` VALUES ('640422', '西吉县', '640000', '640400', '640422');
INSERT INTO `t_district` VALUES ('640423', '隆德县', '640000', '640400', '640423');
INSERT INTO `t_district` VALUES ('640424', '泾源县', '640000', '640400', '640424');
INSERT INTO `t_district` VALUES ('640425', '彭阳县', '640000', '640400', '640425');
INSERT INTO `t_district` VALUES ('640502', '沙坡头区', '640000', '640500', '640502');
INSERT INTO `t_district` VALUES ('640521', '中宁县', '640000', '640500', '640521');
INSERT INTO `t_district` VALUES ('640522', '海原县', '640000', '640500', '640522');
INSERT INTO `t_district` VALUES ('650102', '天山区', '650000', '650100', '650102');
INSERT INTO `t_district` VALUES ('650103', '沙依巴克区', '650000', '650100', '650103');
INSERT INTO `t_district` VALUES ('650104', '新市区', '650000', '650100', '650104');
INSERT INTO `t_district` VALUES ('650105', '水磨沟区', '650000', '650100', '650105');
INSERT INTO `t_district` VALUES ('650106', '头屯河区', '650000', '650100', '650106');
INSERT INTO `t_district` VALUES ('650107', '达坂城区', '650000', '650100', '650107');
INSERT INTO `t_district` VALUES ('650109', '米东区', '650000', '650100', '650109');
INSERT INTO `t_district` VALUES ('650121', '乌鲁木齐县', '650000', '650100', '650121');
INSERT INTO `t_district` VALUES ('650202', '独山子区', '650000', '650200', '650202');
INSERT INTO `t_district` VALUES ('650203', '克拉玛依区', '650000', '650200', '650203');
INSERT INTO `t_district` VALUES ('650204', '白碱滩区', '650000', '650200', '650204');
INSERT INTO `t_district` VALUES ('650205', '乌尔禾区', '650000', '650200', '650205');
INSERT INTO `t_district` VALUES ('650402', '高昌区', '650000', '650400', '650402');
INSERT INTO `t_district` VALUES ('650421', '鄯善县', '650000', '650400', '650421');
INSERT INTO `t_district` VALUES ('650422', '托克逊县', '650000', '650400', '650422');
INSERT INTO `t_district` VALUES ('650502', '伊州区', '650000', '650500', '650502');
INSERT INTO `t_district` VALUES ('650521', '巴里坤哈萨克自治县', '650000', '650500', '650521');
INSERT INTO `t_district` VALUES ('650522', '伊吾县', '650000', '650500', '650522');
INSERT INTO `t_district` VALUES ('652301', '昌吉市', '650000', '652300', '652301');
INSERT INTO `t_district` VALUES ('652302', '阜康市', '650000', '652300', '652302');
INSERT INTO `t_district` VALUES ('652323', '呼图壁县', '650000', '652300', '652323');
INSERT INTO `t_district` VALUES ('652324', '玛纳斯县', '650000', '652300', '652324');
INSERT INTO `t_district` VALUES ('652325', '奇台县', '650000', '652300', '652325');
INSERT INTO `t_district` VALUES ('652327', '吉木萨尔县', '650000', '652300', '652327');
INSERT INTO `t_district` VALUES ('652328', '木垒哈萨克自治县', '650000', '652300', '652328');
INSERT INTO `t_district` VALUES ('652701', '博乐市', '650000', '652700', '652701');
INSERT INTO `t_district` VALUES ('652702', '阿拉山口市', '650000', '652700', '652702');
INSERT INTO `t_district` VALUES ('652722', '精河县', '650000', '652700', '652722');
INSERT INTO `t_district` VALUES ('652723', '温泉县', '650000', '652700', '652723');
INSERT INTO `t_district` VALUES ('652801', '库尔勒市', '650000', '652800', '652801');
INSERT INTO `t_district` VALUES ('652822', '轮台县', '650000', '652800', '652822');
INSERT INTO `t_district` VALUES ('652823', '尉犁县', '650000', '652800', '652823');
INSERT INTO `t_district` VALUES ('652824', '若羌县', '650000', '652800', '652824');
INSERT INTO `t_district` VALUES ('652825', '且末县', '650000', '652800', '652825');
INSERT INTO `t_district` VALUES ('652826', '焉耆回族自治县', '650000', '652800', '652826');
INSERT INTO `t_district` VALUES ('652827', '和静县', '650000', '652800', '652827');
INSERT INTO `t_district` VALUES ('652828', '和硕县', '650000', '652800', '652828');
INSERT INTO `t_district` VALUES ('652829', '博湖县', '650000', '652800', '652829');
INSERT INTO `t_district` VALUES ('652901', '阿克苏市', '650000', '652900', '652901');
INSERT INTO `t_district` VALUES ('652902', '库车市', '650000', '652900', '652902');
INSERT INTO `t_district` VALUES ('652922', '温宿县', '650000', '652900', '652922');
INSERT INTO `t_district` VALUES ('652924', '沙雅县', '650000', '652900', '652924');
INSERT INTO `t_district` VALUES ('652925', '新和县', '650000', '652900', '652925');
INSERT INTO `t_district` VALUES ('652926', '拜城县', '650000', '652900', '652926');
INSERT INTO `t_district` VALUES ('652927', '乌什县', '650000', '652900', '652927');
INSERT INTO `t_district` VALUES ('652928', '阿瓦提县', '650000', '652900', '652928');
INSERT INTO `t_district` VALUES ('652929', '柯坪县', '650000', '652900', '652929');
INSERT INTO `t_district` VALUES ('653001', '阿图什市', '650000', '653000', '653001');
INSERT INTO `t_district` VALUES ('653022', '阿克陶县', '650000', '653000', '653022');
INSERT INTO `t_district` VALUES ('653023', '阿合奇县', '650000', '653000', '653023');
INSERT INTO `t_district` VALUES ('653024', '乌恰县', '650000', '653000', '653024');
INSERT INTO `t_district` VALUES ('653101', '喀什市', '650000', '653100', '653101');
INSERT INTO `t_district` VALUES ('653121', '疏附县', '650000', '653100', '653121');
INSERT INTO `t_district` VALUES ('653122', '疏勒县', '650000', '653100', '653122');
INSERT INTO `t_district` VALUES ('653123', '英吉沙县', '650000', '653100', '653123');
INSERT INTO `t_district` VALUES ('653124', '泽普县', '650000', '653100', '653124');
INSERT INTO `t_district` VALUES ('653125', '莎车县', '650000', '653100', '653125');
INSERT INTO `t_district` VALUES ('653126', '叶城县', '650000', '653100', '653126');
INSERT INTO `t_district` VALUES ('653127', '麦盖提县', '650000', '653100', '653127');
INSERT INTO `t_district` VALUES ('653128', '岳普湖县', '650000', '653100', '653128');
INSERT INTO `t_district` VALUES ('653129', '伽师县', '650000', '653100', '653129');
INSERT INTO `t_district` VALUES ('653130', '巴楚县', '650000', '653100', '653130');
INSERT INTO `t_district` VALUES ('653131', '塔什库尔干塔吉克自治县', '650000', '653100', '653131');
INSERT INTO `t_district` VALUES ('653201', '和田市', '650000', '653200', '653201');
INSERT INTO `t_district` VALUES ('653221', '和田县', '650000', '653200', '653221');
INSERT INTO `t_district` VALUES ('653222', '墨玉县', '650000', '653200', '653222');
INSERT INTO `t_district` VALUES ('653223', '皮山县', '650000', '653200', '653223');
INSERT INTO `t_district` VALUES ('653224', '洛浦县', '650000', '653200', '653224');
INSERT INTO `t_district` VALUES ('653225', '策勒县', '650000', '653200', '653225');
INSERT INTO `t_district` VALUES ('653226', '于田县', '650000', '653200', '653226');
INSERT INTO `t_district` VALUES ('653227', '民丰县', '650000', '653200', '653227');
INSERT INTO `t_district` VALUES ('654002', '伊宁市', '650000', '654000', '654002');
INSERT INTO `t_district` VALUES ('654003', '奎屯市', '650000', '654000', '654003');
INSERT INTO `t_district` VALUES ('654004', '霍尔果斯市', '650000', '654000', '654004');
INSERT INTO `t_district` VALUES ('654021', '伊宁县', '650000', '654000', '654021');
INSERT INTO `t_district` VALUES ('654022', '察布查尔锡伯自治县', '650000', '654000', '654022');
INSERT INTO `t_district` VALUES ('654023', '霍城县', '650000', '654000', '654023');
INSERT INTO `t_district` VALUES ('654024', '巩留县', '650000', '654000', '654024');
INSERT INTO `t_district` VALUES ('654025', '新源县', '650000', '654000', '654025');
INSERT INTO `t_district` VALUES ('654026', '昭苏县', '650000', '654000', '654026');
INSERT INTO `t_district` VALUES ('654027', '特克斯县', '650000', '654000', '654027');
INSERT INTO `t_district` VALUES ('654028', '尼勒克县', '650000', '654000', '654028');
INSERT INTO `t_district` VALUES ('654201', '塔城市', '650000', '654200', '654201');
INSERT INTO `t_district` VALUES ('654202', '乌苏市', '650000', '654200', '654202');
INSERT INTO `t_district` VALUES ('654221', '额敏县', '650000', '654200', '654221');
INSERT INTO `t_district` VALUES ('654223', '沙湾县', '650000', '654200', '654223');
INSERT INTO `t_district` VALUES ('654224', '托里县', '650000', '654200', '654224');
INSERT INTO `t_district` VALUES ('654225', '裕民县', '650000', '654200', '654225');
INSERT INTO `t_district` VALUES ('654226', '和布克赛尔蒙古自治县', '650000', '654200', '654226');
INSERT INTO `t_district` VALUES ('654301', '阿勒泰市', '650000', '654300', '654301');
INSERT INTO `t_district` VALUES ('654321', '布尔津县', '650000', '654300', '654321');
INSERT INTO `t_district` VALUES ('654322', '富蕴县', '650000', '654300', '654322');
INSERT INTO `t_district` VALUES ('654323', '福海县', '650000', '654300', '654323');
INSERT INTO `t_district` VALUES ('654324', '哈巴河县', '650000', '654300', '654324');
INSERT INTO `t_district` VALUES ('654325', '青河县', '650000', '654300', '654325');
INSERT INTO `t_district` VALUES ('654326', '吉木乃县', '650000', '654300', '654326');
INSERT INTO `t_district` VALUES ('659001', '石河子市', '650000', '659000', '659001');
INSERT INTO `t_district` VALUES ('659002', '阿拉尔市', '650000', '659000', '659002');
INSERT INTO `t_district` VALUES ('659003', '图木舒克市', '650000', '659000', '659003');
INSERT INTO `t_district` VALUES ('659004', '五家渠市', '650000', '659000', '659004');
INSERT INTO `t_district` VALUES ('659005', '北屯市', '650000', '659000', '659005');
INSERT INTO `t_district` VALUES ('659006', '铁门关市', '650000', '659000', '659006');
INSERT INTO `t_district` VALUES ('659007', '双河市', '650000', '659000', '659007');
INSERT INTO `t_district` VALUES ('659008', '可克达拉市', '650000', '659000', '659008');
INSERT INTO `t_district` VALUES ('659009', '昆玉市', '650000', '659000', '659009');
INSERT INTO `t_district` VALUES ('659010', '胡杨河市', '650000', '659000', '659010');

-- ----------------------------
-- Table structure for t_inventory
-- ----------------------------
DROP TABLE IF EXISTS `t_inventory`;
CREATE TABLE `t_inventory` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `quantity` int(10) NOT NULL DEFAULT '0',
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30016 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_inventory
-- ----------------------------
INSERT INTO `t_inventory` VALUES ('30001', '9994', '2024-09-29 13:23:21');
INSERT INTO `t_inventory` VALUES ('30002', '10000', '2024-07-13 00:28:10');
INSERT INTO `t_inventory` VALUES ('30003', '10000', '2024-07-13 00:28:10');
INSERT INTO `t_inventory` VALUES ('30004', '10000', '2024-07-13 00:28:10');
INSERT INTO `t_inventory` VALUES ('30005', '10000', '2024-07-13 00:28:10');
INSERT INTO `t_inventory` VALUES ('30006', '10000', '2024-07-13 00:28:10');
INSERT INTO `t_inventory` VALUES ('30007', '10000', '2024-07-13 00:28:10');
INSERT INTO `t_inventory` VALUES ('30008', '10000', '2024-07-13 00:28:10');
INSERT INTO `t_inventory` VALUES ('30009', '10000', '2024-07-13 00:28:10');
INSERT INTO `t_inventory` VALUES ('30010', '10000', '2024-07-13 00:28:10');
INSERT INTO `t_inventory` VALUES ('30011', '10000', '2024-07-13 00:28:10');
INSERT INTO `t_inventory` VALUES ('30012', '10000', '2024-07-13 00:28:10');
INSERT INTO `t_inventory` VALUES ('30013', '10000', '2024-07-13 00:28:10');
INSERT INTO `t_inventory` VALUES ('30014', '10000', '2024-07-13 00:28:10');
INSERT INTO `t_inventory` VALUES ('30015', '10000', '2024-07-13 00:28:10');

-- ----------------------------
-- Table structure for t_inventory_record
-- ----------------------------
DROP TABLE IF EXISTS `t_inventory_record`;
CREATE TABLE `t_inventory_record` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `product_id` int(20) NOT NULL,
  `quantity` int(10) NOT NULL,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `operation` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_inventory_record
-- ----------------------------
INSERT INTO `t_inventory_record` VALUES ('1', '1', '1000', '2024-07-03 20:22:20', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('2', '1', '500', '2024-07-03 20:23:53', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('3', '1', '1000', '2024-07-03 20:26:40', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('4', '1', '1000', '2024-07-03 20:27:03', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('5', '1', '1000', '2024-07-03 20:28:07', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('6', '1', '1000', '2024-07-03 20:31:05', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('7', '1', '500', '2024-07-03 20:31:22', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('8', '1', '1500', '2024-07-03 20:31:35', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('9', '1', '1000', '2024-07-03 21:49:56', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('10', '1', '2000', '2024-07-03 21:51:27', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('11', '1', '1000', '2024-07-03 21:52:34', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('12', '1', '500', '2024-07-03 21:52:34', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('13', '30001', '9998', '2024-07-15 23:21:46', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('14', '30001', '10000', '2024-07-15 23:27:57', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('15', '30001', '9998', '2024-07-15 23:33:17', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('16', '30001', '9996', '2024-07-15 23:41:11', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('17', '30001', '9998', '2024-07-15 23:41:42', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('18', '30001', '9996', '2024-07-15 23:56:44', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('19', '30001', '9998', '2024-07-16 00:00:08', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('20', '30001', '9996', '2024-07-16 00:06:09', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('21', '30001', '9998', '2024-07-16 00:07:14', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('22', '1', '1000', '2024-07-21 19:21:39', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('23', '1', '500', '2024-07-21 19:22:16', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('24', '30001', '9996', '2024-09-03 00:51:26', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('25', '30001', '9998', '2024-09-03 00:58:11', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('26', '30001', '9996', '2024-09-03 01:05:09', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('27', '30001', '9998', '2024-09-03 01:05:10', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('28', '30001', '9996', '2024-09-03 01:07:30', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('29', '30001', '9998', '2024-09-03 01:07:42', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('30', '30001', '9996', '2024-09-03 01:09:35', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('31', '30001', '9998', '2024-09-03 01:09:35', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('32', '30001', '9996', '2024-09-03 01:09:49', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('33', '30001', '9998', '2024-09-03 01:09:50', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('34', '30001', '9996', '2024-09-10 16:10:01', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('35', '30001', '9998', '2024-09-10 16:10:46', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('36', '30001', '9996', '2024-09-10 16:45:44', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('37', '30001', '9998', '2024-09-10 16:49:07', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('38', '30001', '9996', '2024-09-10 16:58:53', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('39', '30001', '9994', '2024-09-10 17:00:03', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('40', '30001', '9996', '2024-09-10 17:00:05', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('41', '30001', '9994', '2024-09-10 17:03:16', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('42', '30001', '9996', '2024-09-10 17:03:18', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('43', '1', '1000', '2024-09-10 17:16:05', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('44', '1', '500', '2024-09-10 17:16:06', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('45', '30001', '9994', '2024-09-10 17:38:37', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('46', '30001', '9996', '2024-09-10 17:38:38', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('47', '1', '1000', '2024-09-10 17:39:08', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('48', '1', '500', '2024-09-10 17:39:08', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('49', '30001', '9994', '2024-09-10 17:39:11', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('50', '30001', '9996', '2024-09-10 17:39:13', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('51', '1', '1000', '2024-09-10 20:18:44', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('52', '1', '500', '2024-09-10 20:18:44', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('53', '30001', '9994', '2024-09-27 16:46:50', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('54', '30001', '9992', '2024-09-27 16:58:49', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('55', '30001', '9994', '2024-09-27 17:05:45', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('56', '30001', '9992', '2024-09-27 17:09:24', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('57', '30001', '9994', '2024-09-27 17:09:25', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('58', '30001', '9992', '2024-09-27 17:09:39', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('59', '30001', '9994', '2024-09-27 17:09:41', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('60', '1', '1000', '2024-09-29 13:19:02', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('61', '1', '500', '2024-09-29 13:19:02', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('62', '30001', '9992', '2024-09-29 13:19:05', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('63', '30001', '9994', '2024-09-29 13:19:06', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('64', '1', '1000', '2024-09-29 13:23:16', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('65', '1', '500', '2024-09-29 13:23:16', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('66', '30001', '9992', '2024-09-29 13:23:20', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('67', '30001', '9994', '2024-09-29 13:23:21', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('68', '1', '1000', '2024-09-29 13:42:27', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('69', '1', '500', '2024-09-29 13:42:28', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('70', '1', '1000', '2024-09-29 23:49:05', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('71', '1', '500', '2024-09-29 23:49:05', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('72', '1', '1000', '2024-09-30 00:53:05', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('73', '1', '500', '2024-09-30 00:53:06', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('74', '1', '1000', '2024-10-05 19:05:31', 'create');
INSERT INTO `t_inventory_record` VALUES ('75', '1', '500', '2024-10-05 19:05:32', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('76', '1', '1000', '2024-10-06 00:00:19', 'create');
INSERT INTO `t_inventory_record` VALUES ('77', '1', '500', '2024-10-06 00:00:19', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('78', '1', '1000', '2024-10-06 10:47:27', 'create');
INSERT INTO `t_inventory_record` VALUES ('79', '1', '1500', '2024-10-06 10:47:27', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('80', '1', '1000', '2024-10-06 10:47:28', 'stock out');
INSERT INTO `t_inventory_record` VALUES ('81', '1', '1000', '2024-10-06 11:24:22', 'create');
INSERT INTO `t_inventory_record` VALUES ('82', '1', '1500', '2024-10-06 11:24:23', 'stock in');
INSERT INTO `t_inventory_record` VALUES ('83', '1', '1000', '2024-10-06 11:24:23', 'stock out');

-- ----------------------------
-- Table structure for t_journal_account
-- ----------------------------
DROP TABLE IF EXISTS `t_journal_account`;
CREATE TABLE `t_journal_account` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `account_id` int(20) DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT NULL,
  `operation` varchar(50) DEFAULT NULL,
  `operate_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=530 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_journal_account
-- ----------------------------
INSERT INTO `t_journal_account` VALUES ('456', '10010', '20000.00', 'topUp', '2024-07-15 20:35:29');
INSERT INTO `t_journal_account` VALUES ('457', '10010', '3000.00', 'payoff', '2024-07-15 20:37:43');
INSERT INTO `t_journal_account` VALUES ('458', '10010', '3000.00', 'refund', '2024-07-15 20:40:56');
INSERT INTO `t_journal_account` VALUES ('459', '10001', '200000.00', 'topUp', '2024-07-15 23:45:58');
INSERT INTO `t_journal_account` VALUES ('460', '10001', '8000.00', 'payoff', '2024-07-15 23:56:43');
INSERT INTO `t_journal_account` VALUES ('461', '10001', '8000.00', 'payoff', '2024-07-16 00:00:08');
INSERT INTO `t_journal_account` VALUES ('462', '10001', '8000.00', 'payoff', '2024-07-16 00:06:09');
INSERT INTO `t_journal_account` VALUES ('463', '10001', '8000.00', 'refund', '2024-07-16 00:07:14');
INSERT INTO `t_journal_account` VALUES ('464', '10001', '8000.00', 'payoff', '2024-09-10 16:45:43');
INSERT INTO `t_journal_account` VALUES ('465', '10001', '8000.00', 'refund', '2024-09-10 16:49:07');
INSERT INTO `t_journal_account` VALUES ('466', '10001', '8000.00', 'payoff', '2024-09-10 17:03:16');
INSERT INTO `t_journal_account` VALUES ('467', '10001', '8000.00', 'refund', '2024-09-10 17:03:17');
INSERT INTO `t_journal_account` VALUES ('468', '10001', '8000.00', 'payoff', '2024-09-10 17:38:37');
INSERT INTO `t_journal_account` VALUES ('469', '10001', '8000.00', 'refund', '2024-09-10 17:38:38');
INSERT INTO `t_journal_account` VALUES ('470', '10001', '8000.00', 'payoff', '2024-09-10 17:39:11');
INSERT INTO `t_journal_account` VALUES ('471', '10001', '8000.00', 'refund', '2024-09-10 17:39:13');
INSERT INTO `t_journal_account` VALUES ('472', '10010', '20000.00', 'topUp', '2024-09-27 15:12:01');
INSERT INTO `t_journal_account` VALUES ('473', '10010', '20000.00', 'topUp', '2024-09-27 15:17:19');
INSERT INTO `t_journal_account` VALUES ('474', '10010', '20000.00', 'topUp', '2024-09-27 15:39:35');
INSERT INTO `t_journal_account` VALUES ('475', '10010', '20000.00', 'topUp', '2024-09-27 15:40:51');
INSERT INTO `t_journal_account` VALUES ('476', '10010', '2000.00', 'topUp', '2024-09-27 15:40:52');
INSERT INTO `t_journal_account` VALUES ('477', '10010', '3000.00', 'payoff', '2024-09-27 15:40:52');
INSERT INTO `t_journal_account` VALUES ('478', '10010', '3000.00', 'refund', '2024-09-27 15:40:52');
INSERT INTO `t_journal_account` VALUES ('479', '10001', '8000.00', 'payoff', '2024-09-27 16:46:50');
INSERT INTO `t_journal_account` VALUES ('480', '10001', '8000.00', 'payoff', '2024-09-27 16:58:49');
INSERT INTO `t_journal_account` VALUES ('481', '10001', '8000.00', 'refund', '2024-09-27 17:05:45');
INSERT INTO `t_journal_account` VALUES ('482', '10001', '8000.00', 'payoff', '2024-09-27 17:09:24');
INSERT INTO `t_journal_account` VALUES ('483', '10001', '8000.00', 'refund', '2024-09-27 17:09:25');
INSERT INTO `t_journal_account` VALUES ('484', '10001', '8000.00', 'payoff', '2024-09-27 17:09:39');
INSERT INTO `t_journal_account` VALUES ('485', '10001', '8000.00', 'refund', '2024-09-27 17:09:41');
INSERT INTO `t_journal_account` VALUES ('486', '10010', '20000.00', 'topUp', '2024-09-28 23:02:40');
INSERT INTO `t_journal_account` VALUES ('487', '10010', '2000.00', 'topUp', '2024-09-28 23:02:40');
INSERT INTO `t_journal_account` VALUES ('488', '10010', '3000.00', 'payoff', '2024-09-28 23:02:40');
INSERT INTO `t_journal_account` VALUES ('489', '10010', '3000.00', 'refund', '2024-09-28 23:02:41');
INSERT INTO `t_journal_account` VALUES ('490', '10010', '20000.00', 'topUp', '2024-09-29 13:18:59');
INSERT INTO `t_journal_account` VALUES ('491', '10010', '2000.00', 'topUp', '2024-09-29 13:18:59');
INSERT INTO `t_journal_account` VALUES ('492', '10010', '3000.00', 'payoff', '2024-09-29 13:18:59');
INSERT INTO `t_journal_account` VALUES ('493', '10010', '3000.00', 'refund', '2024-09-29 13:18:59');
INSERT INTO `t_journal_account` VALUES ('494', '10001', '8000.00', 'payoff', '2024-09-29 13:19:05');
INSERT INTO `t_journal_account` VALUES ('495', '10001', '8000.00', 'refund', '2024-09-29 13:19:06');
INSERT INTO `t_journal_account` VALUES ('496', '10010', '20000.00', 'topUp', '2024-09-29 13:23:12');
INSERT INTO `t_journal_account` VALUES ('497', '10010', '2000.00', 'topUp', '2024-09-29 13:23:13');
INSERT INTO `t_journal_account` VALUES ('498', '10010', '3000.00', 'payoff', '2024-09-29 13:23:13');
INSERT INTO `t_journal_account` VALUES ('499', '10010', '3000.00', 'refund', '2024-09-29 13:23:13');
INSERT INTO `t_journal_account` VALUES ('500', '10001', '8000.00', 'payoff', '2024-09-29 13:23:19');
INSERT INTO `t_journal_account` VALUES ('501', '10001', '8000.00', 'refund', '2024-09-29 13:23:21');
INSERT INTO `t_journal_account` VALUES ('502', '10010', '20000.00', 'topUp', '2024-09-29 13:35:19');
INSERT INTO `t_journal_account` VALUES ('503', '10010', '2000.00', 'topUp', '2024-09-29 13:35:19');
INSERT INTO `t_journal_account` VALUES ('504', '10010', '3000.00', 'payoff', '2024-09-29 13:35:19');
INSERT INTO `t_journal_account` VALUES ('505', '10010', '3000.00', 'refund', '2024-09-29 13:35:20');
INSERT INTO `t_journal_account` VALUES ('506', '10010', '20000.00', 'topUp', '2024-09-29 13:38:23');
INSERT INTO `t_journal_account` VALUES ('507', '10010', '2000.00', 'topUp', '2024-09-29 13:38:23');
INSERT INTO `t_journal_account` VALUES ('508', '10010', '3000.00', 'payoff', '2024-09-29 13:38:24');
INSERT INTO `t_journal_account` VALUES ('509', '10010', '3000.00', 'refund', '2024-09-29 13:38:24');
INSERT INTO `t_journal_account` VALUES ('510', '10010', '20000.00', 'topUp', '2024-09-29 23:19:52');
INSERT INTO `t_journal_account` VALUES ('511', '10010', '2000.00', 'topUp', '2024-09-29 23:19:52');
INSERT INTO `t_journal_account` VALUES ('512', '10010', '3000.00', 'payoff', '2024-09-29 23:19:53');
INSERT INTO `t_journal_account` VALUES ('513', '10010', '3000.00', 'refund', '2024-09-29 23:19:53');
INSERT INTO `t_journal_account` VALUES ('514', '10010', '20000.00', 'topUp', '2024-09-29 23:38:37');
INSERT INTO `t_journal_account` VALUES ('515', '10010', '2000.00', 'topUp', '2024-09-29 23:38:37');
INSERT INTO `t_journal_account` VALUES ('516', '10010', '3000.00', 'payoff', '2024-09-29 23:38:38');
INSERT INTO `t_journal_account` VALUES ('517', '10010', '3000.00', 'refund', '2024-09-29 23:38:38');
INSERT INTO `t_journal_account` VALUES ('518', '10010', '20000.00', 'topUp', '2024-09-30 00:45:37');
INSERT INTO `t_journal_account` VALUES ('519', '10010', '2000.00', 'topUp', '2024-09-30 00:45:37');
INSERT INTO `t_journal_account` VALUES ('520', '10010', '3000.00', 'payoff', '2024-09-30 00:45:38');
INSERT INTO `t_journal_account` VALUES ('521', '10010', '3000.00', 'refund', '2024-09-30 00:45:38');
INSERT INTO `t_journal_account` VALUES ('522', '10010', '20000.00', 'topUp', '2024-10-06 00:06:22');
INSERT INTO `t_journal_account` VALUES ('523', '10010', '2000.00', 'topUp', '2024-10-06 00:06:22');
INSERT INTO `t_journal_account` VALUES ('524', '10010', '3000.00', 'payoff', '2024-10-06 00:06:23');
INSERT INTO `t_journal_account` VALUES ('525', '10010', '3000.00', 'refund', '2024-10-06 00:06:23');
INSERT INTO `t_journal_account` VALUES ('526', '10010', '20000.00', 'topUp', '2024-10-06 00:26:48');
INSERT INTO `t_journal_account` VALUES ('527', '10010', '2000.00', 'topUp', '2024-10-06 00:26:49');
INSERT INTO `t_journal_account` VALUES ('528', '10010', '3000.00', 'payoff', '2024-10-06 00:26:49');
INSERT INTO `t_journal_account` VALUES ('529', '10010', '3000.00', 'refund', '2024-10-06 00:26:49');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `customer_id` int(20) NOT NULL,
  `address_id` int(20) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `order_time` datetime NOT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10022 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('10001', '10001', '1000100', 'create', '8958.00', '2020-12-28 17:07:19', null);
INSERT INTO `t_order` VALUES ('10002', '10002', '1000200', 'create', '829.00', '2021-01-01 12:00:00', null);
INSERT INTO `t_order` VALUES ('10003', '10003', '1000300', 'payoff', '165.80', '2021-02-20 13:01:00', null);
INSERT INTO `t_order` VALUES ('10004', '10004', '1000400', 'payoff', '4999.00', '2008-05-01 00:00:00', null);
INSERT INTO `t_order` VALUES ('10005', '10005', '1000500', 'payoff', '4325.00', '2010-04-01 12:00:00', null);
INSERT INTO `t_order` VALUES ('10006', '10006', '1000600', 'create', '11598.00', '2010-10-12 13:20:17', null);
INSERT INTO `t_order` VALUES ('10007', '10007', '1000700', 'create', '14688.00', '2012-04-22 00:00:00', null);
INSERT INTO `t_order` VALUES ('10008', '10008', '1000800', 'create', '12286.00', '2012-05-10 00:00:00', null);
INSERT INTO `t_order` VALUES ('10009', '10009', '1000900', 'payoff', '7799.00', '2012-06-01 00:00:00', null);
INSERT INTO `t_order` VALUES ('10010', '10001', '1000100', 'create', '5000.00', '2019-12-29 00:00:00', null);
INSERT INTO `t_order` VALUES ('10011', '10001', '1000100', 'create', '16600.00', '2019-12-29 00:00:00', null);
INSERT INTO `t_order` VALUES ('10012', '10010', '1001000', 'payoff', '4790.00', '2012-07-12 00:00:00', null);
INSERT INTO `t_order` VALUES ('10013', '10011', '1001100', 'payoff', '3999.00', '2012-08-08 09:30:00', null);
INSERT INTO `t_order` VALUES ('10014', '10012', '1001200', 'payoff', '8288.00', '2012-09-13 10:00:10', null);
INSERT INTO `t_order` VALUES ('10015', '10011', '1001101', 'create', '5598.00', '2012-10-01 13:23:00', null);
INSERT INTO `t_order` VALUES ('10016', '10001', '1000101', 'payoff', '10688.00', '2012-11-21 18:34:01', null);
INSERT INTO `t_order` VALUES ('10017', '10013', '1001300', 'payoff', '2599.00', '2012-12-31 00:00:00', null);
INSERT INTO `t_order` VALUES ('10018', '10014', '1001400', 'payoff', '2599.00', '2013-01-13 00:00:00', null);
INSERT INTO `t_order` VALUES ('10019', '10015', '1001500', 'create', '4999.00', '2013-02-28 23:59:59', null);
INSERT INTO `t_order` VALUES ('10020', '10012', '1001201', 'create', '2380.00', '2014-06-30 20:00:00', null);
INSERT INTO `t_order` VALUES ('10021', '10012', '1001201', 'create', '28.90', '2014-06-30 21:00:00', null);

-- ----------------------------
-- Table structure for t_order_item
-- ----------------------------
DROP TABLE IF EXISTS `t_order_item`;
CREATE TABLE `t_order_item` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `order_id` int(20) NOT NULL,
  `product_id` int(20) NOT NULL,
  `quantity` int(10) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100211 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order_item
-- ----------------------------
INSERT INTO `t_order_item` VALUES ('100010', '10001', '30003', '2', '4000.00', '8000.00');
INSERT INTO `t_order_item` VALUES ('100011', '10001', '30004', '1', '958.00', '958.00');
INSERT INTO `t_order_item` VALUES ('100020', '10002', '30010', '10', '82.90', '829.00');
INSERT INTO `t_order_item` VALUES ('100030', '10003', '30010', '1', '82.90', '82.90');
INSERT INTO `t_order_item` VALUES ('100031', '10003', '30011', '1', '82.90', '82.90');
INSERT INTO `t_order_item` VALUES ('100040', '10004', '30009', '1', '4999.00', '4999.00');
INSERT INTO `t_order_item` VALUES ('100050', '10005', '30013', '1', '2599.00', '2599.00');
INSERT INTO `t_order_item` VALUES ('100051', '10005', '30008', '1', '1488.00', '1488.00');
INSERT INTO `t_order_item` VALUES ('100052', '10005', '30015', '1', '238.00', '238.00');
INSERT INTO `t_order_item` VALUES ('100060', '10006', '30007', '2', '5799.00', '11598.00');
INSERT INTO `t_order_item` VALUES ('100070', '10007', '30001', '1', '4000.00', '4000.00');
INSERT INTO `t_order_item` VALUES ('100071', '10007', '30003', '1', '10688.00', '10688.00');
INSERT INTO `t_order_item` VALUES ('100080', '10008', '30007', '1', '5799.00', '5799.00');
INSERT INTO `t_order_item` VALUES ('100081', '10008', '30008', '1', '1488.00', '1488.00');
INSERT INTO `t_order_item` VALUES ('100082', '10008', '30009', '1', '4999.00', '4999.00');
INSERT INTO `t_order_item` VALUES ('100090', '10009', '30012', '1', '7799.00', '7799.00');
INSERT INTO `t_order_item` VALUES ('100110', '10011', '30001', '1', '4000.00', '4000.00');
INSERT INTO `t_order_item` VALUES ('100111', '10011', '30002', '1', '12600.00', '12600.00');
INSERT INTO `t_order_item` VALUES ('100120', '10012', '30004', '5', '958.00', '4790.00');
INSERT INTO `t_order_item` VALUES ('100130', '10013', '30014', '1', '3999.00', '3999.00');
INSERT INTO `t_order_item` VALUES ('100140', '10014', '30005', '1', '8288.00', '8288.00');
INSERT INTO `t_order_item` VALUES ('100150', '10015', '30006', '2', '2799.00', '5598.00');
INSERT INTO `t_order_item` VALUES ('100160', '10016', '30003', '1', '10688.00', '10688.00');
INSERT INTO `t_order_item` VALUES ('100170', '10017', '30013', '1', '2599.00', '2599.00');
INSERT INTO `t_order_item` VALUES ('100180', '10018', '30013', '1', '2599.00', '2599.00');
INSERT INTO `t_order_item` VALUES ('100190', '10019', '30009', '1', '4999.00', '4999.00');
INSERT INTO `t_order_item` VALUES ('100200', '10020', '30015', '10', '238.00', '2380.00');
INSERT INTO `t_order_item` VALUES ('100210', '10021', '30011', '1', '28.90', '28.90');

-- ----------------------------
-- Table structure for t_payment
-- ----------------------------
DROP TABLE IF EXISTS `t_payment`;
CREATE TABLE `t_payment` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,2) NOT NULL,
  `method` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `payment_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_payment
-- ----------------------------

-- ----------------------------
-- Table structure for t_points_rule
-- ----------------------------
DROP TABLE IF EXISTS `t_points_rule`;
CREATE TABLE `t_points_rule` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `points_per_yuan` decimal(10,2) NOT NULL,
  `points_cap` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_points_rule
-- ----------------------------
INSERT INTO `t_points_rule` VALUES ('1', '0.50', '5000.00');
INSERT INTO `t_points_rule` VALUES ('2', '1.00', '20000.00');
INSERT INTO `t_points_rule` VALUES ('3', '1.50', '50000.00');
INSERT INTO `t_points_rule` VALUES ('4', '2.00', '100000.00');

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `price` decimal(10,2) NOT NULL,
  `supplier_id` int(20) NOT NULL,
  `category_id` int(20) NOT NULL,
  `brand_id` int(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `tip` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30016 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES ('30001', 'Apple iPhone X 256GB 深空灰色 移动联通电信4G手机', null, '4000.00', '20004', '100100', '1000', '/static/img/product1.jpg', '自营', 'on sale', '2024-09-04 22:57:33', null);
INSERT INTO `t_product` VALUES ('30002', 'Apple iPad 平板电脑 2018年新款9.7英寸', null, '12600.00', '20004', '100200', '1000', '/static/img/product2.jpg', '优惠', 'on sale', '2024-09-04 22:57:33', null);
INSERT INTO `t_product` VALUES ('30003', 'Apple MacBook Pro 13.3英寸笔记本电脑（2017款Core i5处理器/8GB内存/256GB硬盘 MupxT2CH/A）', null, '10688.00', '20004', '100300', '1000', '/static/img/product3.jpg', '特惠', 'on sale', '2024-09-04 22:57:33', null);
INSERT INTO `t_product` VALUES ('30004', 'Kindle Paperwhite电纸书阅读器 电子书墨水屏 6英寸wifi 黑色', null, '958.00', '20002', '100500', '1002', '/static/img/product4.jpg', '自营', 'on sale', '2024-09-04 22:57:33', null);
INSERT INTO `t_product` VALUES ('30005', '微软（Microsoft）新Surface Pro 二合一平板电脑笔记本 12.3英寸（i5 8G内存 256G存储）', null, '8288.00', '20005', '100300', '1001', '/static/img/product5.jpg', null, 'on sale', '2024-09-04 22:57:33', null);
INSERT INTO `t_product` VALUES ('30006', 'Apple Watch Series 3智能手表（GPS款 42毫米 深空灰色铝金属表壳 黑色运动型表带 MQL12CH/A）', null, '2799.00', '20004', '100400', '1000', '/static/img/product6.jpg', '优惠', 'on sale', '2024-09-04 22:57:33', null);
INSERT INTO `t_product` VALUES ('30007', '华为 HUAWEI Mate 30E Pro 5G麒麟990E SoC芯片 双4000万徕卡电影影像 8GB+256GB青山黛全网通手机', null, '5799.00', '20003', '100100', '1003', '/static/img/HUAWEI_Mate_30E Pro.jpg', '秒杀', 'on sale', '2024-09-04 22:57:33', null);
INSERT INTO `t_product` VALUES ('30008', 'HUAWEI WATCH GT2 华为手表 运动智能手表 两周长续航/蓝牙通话/血氧检测/麒麟芯片 华为gt2 46mm 曜石黑', null, '1488.00', '20003', '100400', '1003', '/static/img/WATCH_GT2.jpg', '秒杀', 'on sale', '2024-09-04 22:57:33', null);
INSERT INTO `t_product` VALUES ('30009', '华为平板MatePad Pro【键盘+笔】10.8英寸麒麟990游戏影音娱乐办公学习全面屏平板电脑8G+256G WIFI', null, '4999.00', '20003', '100200', '1003', '/static/img/MatePad_Pro.jpg', null, 'on sale', '2024-09-04 22:57:33', null);
INSERT INTO `t_product` VALUES ('30010', '领域驱动设计 软件核心复杂性应对之道 英文版(异步图书出品)', null, '82.90', '20006', '300100', '2000', '/static/img/DDD.jpg', null, 'on sale', '2024-09-04 22:57:33', null);
INSERT INTO `t_product` VALUES ('30011', '实现领域驱动设计(博文视点出品) [Implementing Domain-Driven Design]', null, '82.90', '20006', '300100', '2001', '/static/img/Implementing_Domain-Driven_Design.jpg', '自营', 'on sale', '2024-09-04 22:57:33', null);
INSERT INTO `t_product` VALUES ('30012', 'SIEMENS/西门子冰箱双开门家用家电变频风冷无霜保鲜对开门两门618升电冰箱KA61EA66TI 滤膜保鲜', null, '7799.00', '20007', '200100', '1004', '/static/img/siemens01.jpg', null, 'on sale', '2024-09-04 22:57:33', null);
INSERT INTO `t_product` VALUES ('30013', 'SIEMENS/西门子冰箱三门家用家电直冷节能多门小冰箱小型三开门232升电冰箱KG23D113EW', null, '2599.00', '20007', '200100', '1004', '/static/img/siemens02.jpg', null, 'on sale', '2024-09-04 22:57:33', null);
INSERT INTO `t_product` VALUES ('30014', '荣耀智慧屏X1 65英寸LOK-360 2G+16G 8K解码开关机无广告远场语音4K超清人工智能液晶教育电视全面屏', null, '3999.00', '20003', '200200', '1005', '/static/img/tv.jpg', null, 'on sale', '2024-09-04 22:57:33', null);
INSERT INTO `t_product` VALUES ('30015', '万利达 商用电压力锅8L10L12L升大容量电高压锅大电饭锅特大号饭煲双胆酒店饭店食堂单位 8升单胆5-9人份', null, '238.00', '20008', '200300', '3000', '/static/img/fff.png', '自营', 'on sale', '2024-09-04 22:57:33', null);

-- ----------------------------
-- Table structure for t_product_category
-- ----------------------------
DROP TABLE IF EXISTS `t_product_category`;
CREATE TABLE `t_product_category` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `parent_id` int(20) DEFAULT NULL,
  `layer` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=400001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product_category
-- ----------------------------
INSERT INTO `t_product_category` VALUES ('1', '分类产品', null, null, '0');
INSERT INTO `t_product_category` VALUES ('100000', '电子产品', null, '0', '1');
INSERT INTO `t_product_category` VALUES ('100100', '智能手机', null, '100000', '2');
INSERT INTO `t_product_category` VALUES ('100200', '平板电脑', null, '100000', '2');
INSERT INTO `t_product_category` VALUES ('100300', '笔记本电脑', null, '100000', '2');
INSERT INTO `t_product_category` VALUES ('100400', '智能手表', null, '100000', '2');
INSERT INTO `t_product_category` VALUES ('100500', '电纸书', null, '100000', '2');
INSERT INTO `t_product_category` VALUES ('200000', '家用电器', null, '0', '1');
INSERT INTO `t_product_category` VALUES ('200100', '冰箱', null, '200000', '2');
INSERT INTO `t_product_category` VALUES ('200200', '电视', null, '200000', '2');
INSERT INTO `t_product_category` VALUES ('200300', '电饭煲', null, '200000', '2');
INSERT INTO `t_product_category` VALUES ('200400', '洗衣机', null, '200000', '2');
INSERT INTO `t_product_category` VALUES ('300000', '图书', null, '0', '1');
INSERT INTO `t_product_category` VALUES ('300100', '技术书籍', null, '300000', '2');
INSERT INTO `t_product_category` VALUES ('400000', '办公用品', null, '0', '1');

-- ----------------------------
-- Table structure for t_product_discount
-- ----------------------------
DROP TABLE IF EXISTS `t_product_discount`;
CREATE TABLE `t_product_discount` (
  `id` int(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `begin_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `discount` decimal(5,4) DEFAULT NULL,
  `discount_type` varchar(20) DEFAULT NULL,
  `product_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product_discount
-- ----------------------------
INSERT INTO `t_product_discount` VALUES ('30001', '微软平板电脑笔记本打折', '2020-01-01 00:00:00', null, '0.8000', 'productDiscount', '30005');
INSERT INTO `t_product_discount` VALUES ('30002', '华为Mate 30E打折', '2020-01-01 00:00:00', null, '0.8800', 'productDiscount', '30007');

-- ----------------------------
-- Table structure for t_province
-- ----------------------------
DROP TABLE IF EXISTS `t_province`;
CREATE TABLE `t_province` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `country_id` int(4) DEFAULT NULL,
  `province_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=820001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_province
-- ----------------------------
INSERT INTO `t_province` VALUES ('110000', '北京市', '1000', '11');
INSERT INTO `t_province` VALUES ('120000', '天津市', '1000', '12');
INSERT INTO `t_province` VALUES ('130000', '河北省', '1000', '13');
INSERT INTO `t_province` VALUES ('140000', '山西省', '1000', '14');
INSERT INTO `t_province` VALUES ('150000', '内蒙古自治区', '1000', '15');
INSERT INTO `t_province` VALUES ('210000', '辽宁省', '1000', '21');
INSERT INTO `t_province` VALUES ('220000', '吉林省', '1000', '22');
INSERT INTO `t_province` VALUES ('230000', '黑龙江省', '1000', '23');
INSERT INTO `t_province` VALUES ('310000', '上海市', '1000', '31');
INSERT INTO `t_province` VALUES ('320000', '江苏省', '1000', '32');
INSERT INTO `t_province` VALUES ('330000', '浙江省', '1000', '33');
INSERT INTO `t_province` VALUES ('340000', '安徽省', '1000', '34');
INSERT INTO `t_province` VALUES ('350000', '福建省', '1000', '35');
INSERT INTO `t_province` VALUES ('360000', '江西省', '1000', '36');
INSERT INTO `t_province` VALUES ('370000', '山东省', '1000', '37');
INSERT INTO `t_province` VALUES ('410000', '河南省', '1000', '41');
INSERT INTO `t_province` VALUES ('420000', '湖北省', '1000', '42');
INSERT INTO `t_province` VALUES ('430000', '湖南省', '1000', '43');
INSERT INTO `t_province` VALUES ('440000', '广东省', '1000', '44');
INSERT INTO `t_province` VALUES ('450000', '广西壮族自治区', '1000', '45');
INSERT INTO `t_province` VALUES ('460000', '海南省', '1000', '46');
INSERT INTO `t_province` VALUES ('500000', '重庆市', '1000', '50');
INSERT INTO `t_province` VALUES ('510000', '四川省', '1000', '51');
INSERT INTO `t_province` VALUES ('520000', '贵州省', '1000', '52');
INSERT INTO `t_province` VALUES ('530000', '云南省', '1000', '53');
INSERT INTO `t_province` VALUES ('540000', '西藏自治区', '1000', '54');
INSERT INTO `t_province` VALUES ('610000', '陕西省', '1000', '61');
INSERT INTO `t_province` VALUES ('620000', '甘肃省', '1000', '62');
INSERT INTO `t_province` VALUES ('630000', '青海省', '1000', '63');
INSERT INTO `t_province` VALUES ('640000', '宁夏回族自治区', '1000', '64');
INSERT INTO `t_province` VALUES ('650000', '新疆维吾尔自治区', '1000', '65');
INSERT INTO `t_province` VALUES ('710000', '台湾省', '1000', '71');
INSERT INTO `t_province` VALUES ('810000', '香港特别行政区', '1000', '81');
INSERT INTO `t_province` VALUES ('820000', '澳门特别行政区', '1000', '82');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('998', 'test1', 'A role for test');
INSERT INTO `t_role` VALUES ('999', 'test', 'A role for test');
INSERT INTO `t_role` VALUES ('20001', 'admin', 'The administrator');
INSERT INTO `t_role` VALUES ('20002', 'customer', 'A customer');
INSERT INTO `t_role` VALUES ('20003', 'staff', 'A staff worked for a supplier');

-- ----------------------------
-- Table structure for t_role_granted_authority
-- ----------------------------
DROP TABLE IF EXISTS `t_role_granted_authority`;
CREATE TABLE `t_role_granted_authority` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `available` char(1) DEFAULT 'T',
  `role_id` int(20) NOT NULL,
  `authority_id` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_role_granted_authority` (`role_id`,`authority_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_granted_authority
-- ----------------------------
INSERT INTO `t_role_granted_authority` VALUES ('1', 'T', '20001', '50001');
INSERT INTO `t_role_granted_authority` VALUES ('2', 'T', '20001', '50002');
INSERT INTO `t_role_granted_authority` VALUES ('3', 'T', '20001', '50003');

-- ----------------------------
-- Table structure for t_staff
-- ----------------------------
DROP TABLE IF EXISTS `t_staff`;
CREATE TABLE `t_staff` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `identification` char(18) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `supplier_id` int(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20003 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_staff
-- ----------------------------
INSERT INTO `t_staff` VALUES ('20001', '老子', 'male', '110114202201214455', '2022-01-21', 'laozi@126.com', '13600002222', '20001', '2024-10-05 13:51:25', null);
INSERT INTO `t_staff` VALUES ('20002', '庄子', 'male', '140110198910123456', '1989-10-12', 'zhuangzi@126.com', '13688881234', '20002', '2024-10-05 13:53:20', null);

-- ----------------------------
-- Table structure for t_supplier
-- ----------------------------
DROP TABLE IF EXISTS `t_supplier`;
CREATE TABLE `t_supplier` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20009 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_supplier
-- ----------------------------
INSERT INTO `t_supplier` VALUES ('20001', '国际商用机器公司(IBM)', '010-65129123', 'business@ibm.com', '北京市朝阳区奥运村街道北四环中路27号', null, null);
INSERT INTO `t_supplier` VALUES ('20002', '上海晨光文具股份有限公司(M&G)', '010-67891122', 'business@chenguang.com', '上海市奉贤区金钱公路3469号3号楼', null, null);
INSERT INTO `t_supplier` VALUES ('20003', '华为技术有限公司', '010-61003419', 'business@huawei.com', '广东省深圳市龙岗区坂田华为基地', null, null);
INSERT INTO `t_supplier` VALUES ('20004', '苹果公司(Apple Inc.)', '010-65128989', 'business@apple.com', null, null, null);
INSERT INTO `t_supplier` VALUES ('20005', '微软公司(Microsoft)', '010-65543423', 'business@microsoft.com', '北京市海淀区丹棱街5号', null, null);
INSERT INTO `t_supplier` VALUES ('20006', '文轩图书出版社', null, null, null, null, null);
INSERT INTO `t_supplier` VALUES ('20007', '德国西门子股份公司(SIEMENS AG)', '010-65882923', 'business@siemens.com', null, null, null);
INSERT INTO `t_supplier` VALUES ('20008', '万利达集团有限公司', '010-67236575', null, null, null, null);

-- ----------------------------
-- Table structure for t_upgrade_rule
-- ----------------------------
DROP TABLE IF EXISTS `t_upgrade_rule`;
CREATE TABLE `t_upgrade_rule` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `vip_level` varchar(10) NOT NULL,
  `points_need` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_upgrade_rule
-- ----------------------------
INSERT INTO `t_upgrade_rule` VALUES ('0', 'silver', '0.00');
INSERT INTO `t_upgrade_rule` VALUES ('1', 'golden', '10000.00');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(20) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `account_expired` int(1) unsigned zerofill DEFAULT NULL,
  `account_locked` int(1) unsigned zerofill DEFAULT NULL,
  `credentials_expired` int(1) unsigned zerofill DEFAULT NULL,
  `disabled` int(1) unsigned zerofill DEFAULT NULL,
  `user_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('998', 'test1', '{noop}1111', '0', '0', '0', '0', 'guest');
INSERT INTO `t_user` VALUES ('999', 'test', '{noop}1111', '0', '0', '0', '0', 'guest');
INSERT INTO `t_user` VALUES ('10001', 'admin', '{noop}1234', '0', '0', '0', '0', 'administrator');
INSERT INTO `t_user` VALUES ('10002', 'guest', '{noop}1234', '0', '0', '0', '0', 'guest');
INSERT INTO `t_user` VALUES ('10003', 'mary', '{noop}1234', '0', '0', '0', '0', 'customer');
INSERT INTO `t_user` VALUES ('10004', 'jack', '{noop}1234', '0', '0', '0', '0', 'customer');
INSERT INTO `t_user` VALUES ('20001', 'patric', '{noop}1111', '0', '0', '0', '0', 'staff');

-- ----------------------------
-- Table structure for t_user_granted_authority
-- ----------------------------
DROP TABLE IF EXISTS `t_user_granted_authority`;
CREATE TABLE `t_user_granted_authority` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `available` char(1) DEFAULT 'T',
  `user_id` int(20) NOT NULL,
  `authority_id` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_granted_authority` (`user_id`,`authority_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_granted_authority
-- ----------------------------
INSERT INTO `t_user_granted_authority` VALUES ('7', 'T', '10001', '50001');
INSERT INTO `t_user_granted_authority` VALUES ('8', 'T', '10001', '50002');
INSERT INTO `t_user_granted_authority` VALUES ('9', 'T', '10001', '50003');

-- ----------------------------
-- Table structure for t_user_granted_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_granted_role`;
CREATE TABLE `t_user_granted_role` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `available` char(1) DEFAULT 'T',
  `user_id` int(20) NOT NULL,
  `role_id` int(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_granted_role` (`user_id`,`role_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_user_granted_role
-- ----------------------------
INSERT INTO `t_user_granted_role` VALUES ('1', 'T', '10001', '20001');
INSERT INTO `t_user_granted_role` VALUES ('2', 'T', '10003', '20002');
INSERT INTO `t_user_granted_role` VALUES ('3', 'T', '10004', '20002');
INSERT INTO `t_user_granted_role` VALUES ('4', 'T', '20001', '20003');

-- ----------------------------
-- Table structure for t_vip
-- ----------------------------
DROP TABLE IF EXISTS `t_vip`;
CREATE TABLE `t_vip` (
  `id` int(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `vip_level` varchar(10) NOT NULL,
  `points` decimal(10,2) DEFAULT NULL,
  `accumulated_points` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `credit_limit` decimal(20,4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_vip
-- ----------------------------
INSERT INTO `t_vip` VALUES ('10009', '2022-08-18 14:40:15', '2024-09-10 14:47:20', 'golden', '3000.00', '20200.00', null, '50000.0000');
INSERT INTO `t_vip` VALUES ('10012', '2022-08-18 14:40:15', '2022-08-18 14:42:12', 'golden', '12000.00', '30000.00', null, '50000.0000');
INSERT INTO `t_vip` VALUES ('10013', '2021-03-12 00:00:00', null, 'silver', '1000.00', '5000.00', null, null);
INSERT INTO `t_vip` VALUES ('10014', '2021-12-09 00:00:00', null, 'silver', '500.00', '1000.00', null, null);

-- ----------------------------
-- Table structure for t_vip_discount
-- ----------------------------
DROP TABLE IF EXISTS `t_vip_discount`;
CREATE TABLE `t_vip_discount` (
  `id` int(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `begin_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `discount` decimal(5,4) DEFAULT NULL,
  `discount_type` varchar(20) DEFAULT NULL,
  `vip_level` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_vip_discount
-- ----------------------------
INSERT INTO `t_vip_discount` VALUES ('1001', '金卡会员打折', '2020-01-01 00:00:00', null, '0.7500', 'vipDiscount', 'golden');
INSERT INTO `t_vip_discount` VALUES ('1002', '银卡会员打折', '2020-01-01 00:00:00', null, '0.9000', 'vipDiscount', 'silver');
