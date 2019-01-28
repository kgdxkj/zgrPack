-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.2.0-falcon-alpha-community-nt - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 taobiao 的数据库结构
CREATE DATABASE IF NOT EXISTS `taobiao` /*!40100 DEFAULT CHARACTER SET gbk */;
USE `taobiao`;


-- 导出  表 taobiao.admin 结构
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `name` varchar(20) DEFAULT NULL COMMENT '管理员名字',
  `password` varchar(20) DEFAULT NULL COMMENT '管理员密码',
  `phone` varchar(20) DEFAULT NULL COMMENT '管理员电话',
  `cellphone` varchar(11) DEFAULT NULL COMMENT '管理员手机',
  `email` varchar(50) DEFAULT NULL COMMENT '管理员邮箱',
  `status` varchar(2) DEFAULT '1' COMMENT '管理员状态(0：表示挂起，1：表示正常)',
  `role` varchar(2) DEFAULT '0' COMMENT '管理员角色(0：表示客服，1：表示超级管理员)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='管理员表';

-- 正在导出表  taobiao.admin 的数据：~1 rows (大约)
DELETE FROM `admin`;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`, `name`, `password`, `phone`, `cellphone`, `email`, `status`, `role`) VALUES
	(1, 'admin', '123456', '020-11111111', '13631363290', 'stone@163.com', '1', '1');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


-- 导出  表 taobiao.brand 结构
CREATE TABLE IF NOT EXISTS `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '品牌id',
  `name` varchar(40) DEFAULT NULL COMMENT '品牌名',
  `story` varchar(500) DEFAULT NULL COMMENT '品牌故事',
  `logo` varchar(50) DEFAULT NULL COMMENT '品牌logo',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='品牌表';

-- 正在导出表  taobiao.brand 的数据：~24 rows (大约)
DELETE FROM `brand`;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` (`id`, `name`, `story`, `logo`) VALUES
	(1, '劳力士', '', 'images/brandlogo/rolex.jpg'),
	(2, '天梭', '', 'images/brandlogo/tissot.jpg'),
	(3, '浪琴', '', 'images/brandlogo/longines.jpg'),
	(4, '欧米茄', '', 'images/brandlogo/omega.jpg'),
	(5, '帝舵', '', 'images/brandlogo/tudor.jpg'),
	(6, '美度', '', 'images/brandlogo/tudor.jpg'),
	(7, '百达翡丽', '', 'images/brandlogo/patek_philippe.jpg'),
	(8, '依波路', '', 'images/brandlogo/borel.jpg'),
	(9, '朗坤', '', 'images/brandlogo/bylacher.jpg'),
	(10, '汉米尔顿 ', '', 'images/brandlogo/namilton.jpg'),
	(11, '卡地亚', '', 'images/brandlogo/cartier.jpg'),
	(12, '梅花', '', 'images/brandlogo/titoni.jpg'),
	(13, '伯爵', '', 'images/brandlogo/piaget.jpg'),
	(14, '江诗丹顿', '', 'images/brandlogo/jiansidandun.jpg'),
	(15, '古琦', '', 'images/brandlogo/guji.jpg'),
	(16, '积家', '', 'images/brandlogo/jijia.jpg'),
	(17, '万国', '', 'images/brandlogo/wangguo.jpg'),
	(18, '宝玑', '', 'images/brandlogo/baoji.jpg'),
	(19, '罗马', '', 'images/brandlogo/luoma.jpg'),
	(20, '爱马仕', '', 'images/brandlogo/aimashi.jpg'),
	(21, '芝柏', '', 'images/brandlogo/zibo.jpg'),
	(22, '真力时', '', 'images/brandlogo/zhenglishi.jpg'),
	(23, '豪雅', '', 'images/brandlogo/aoyi.jpg'),
	(24, '荣汉斯', '', 'images/brandlogo/hangronsi.jpg');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;


-- 导出  表 taobiao.collect 结构
CREATE TABLE IF NOT EXISTS `collect` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '收藏id',
  `product_id` int(11) DEFAULT NULL COMMENT '收藏商品id',
  `product_name` varchar(50) DEFAULT NULL COMMENT '收藏商品名称',
  `product_price` float DEFAULT '0' COMMENT '收藏商品价格',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `FK_collect_product_reference` (`product_id`),
  KEY `FK_collect_user_reference` (`user_id`),
  CONSTRAINT `FK_collect_product_reference` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FK_collect_user_reference` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='商品收藏表';

-- 正在导出表  taobiao.collect 的数据：~0 rows (大约)
DELETE FROM `collect`;
/*!40000 ALTER TABLE `collect` DISABLE KEYS */;
/*!40000 ALTER TABLE `collect` ENABLE KEYS */;


-- 导出  表 taobiao.consignee_address 结构
CREATE TABLE IF NOT EXISTS `consignee_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '收货地址id',
  `consignee` varchar(30) DEFAULT NULL COMMENT '收货人姓名',
  `province` varchar(30) DEFAULT NULL COMMENT '省份',
  `city` varchar(30) DEFAULT NULL COMMENT '城市',
  `district` varchar(30) DEFAULT NULL COMMENT '区',
  `address` varchar(100) DEFAULT NULL COMMENT '详细地址',
  `postcode` varchar(20) DEFAULT NULL COMMENT '邮编',
  `phone` varchar(30) DEFAULT NULL COMMENT '电话',
  `cellphone` varchar(20) DEFAULT NULL COMMENT '手机',
  `deliver_time` date DEFAULT NULL COMMENT '最佳送货时间',
  `isDefault` int(11) DEFAULT NULL COMMENT '是否是默认',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `FK_consignee_reference` (`user_id`),
  CONSTRAINT `FK_consignee_reference` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='收货地址表';

-- 正在导出表  taobiao.consignee_address 的数据：~5 rows (大约)
DELETE FROM `consignee_address`;
/*!40000 ALTER TABLE `consignee_address` DISABLE KEYS */;
INSERT INTO `consignee_address` (`id`, `consignee`, `province`, `city`, `district`, `address`, `postcode`, `phone`, `cellphone`, `deliver_time`, `isDefault`, `user_id`) VALUES
	(2, 'rose', '广东', '广州', '天河', '广州天河', '51000', '13826842275', '13826842275', '2015-10-05', 1, 25),
	(30, 'andy', '广东', '广州', '天河', '广州天河', '51000', '13826842275', '13826842275', '2015-10-05', 1, 1),
	(31, '张三', '广东', '广州', '天河', '广州天河', '510001', '020-11111111', '13631363290', '2015-10-05', 0, 29),
	(34, 'rose', '广东', '广州', '天河', '广州天河', '51000', '13826842275', '13826842275', '2015-10-05', 0, 25),
	(36, 'rose', '广东', '广州', '天河', '广州天河', '51000', '13826842275', '13826842275', '2015-10-05', 0, 25);
/*!40000 ALTER TABLE `consignee_address` ENABLE KEYS */;


-- 导出  表 taobiao.message 结构
CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '留言id',
  `type` varchar(2) DEFAULT NULL COMMENT '留言类型',
  `title` varchar(50) DEFAULT NULL COMMENT '留言主题',
  `content` varchar(200) DEFAULT NULL COMMENT '留言内容',
  `file` varchar(50) DEFAULT NULL COMMENT '留言文件',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `FK_message_user_reference` (`user_id`),
  CONSTRAINT `FK_message_user_reference` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='用户留言';

-- 正在导出表  taobiao.message 的数据：~0 rows (大约)
DELETE FROM `message`;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;


-- 导出  表 taobiao.order_detail 结构
CREATE TABLE IF NOT EXISTS `order_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '明细id',
  `product_pic` varchar(20) DEFAULT NULL COMMENT '商品路径',
  `product_name` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `product_count` int(11) DEFAULT '0' COMMENT '商品数量',
  `product_price` float DEFAULT '0' COMMENT '商品单价',
  `product_id` int(11) DEFAULT NULL COMMENT '商品id',
  `order_id` varchar(20) DEFAULT NULL COMMENT '订单id',
  PRIMARY KEY (`id`),
  KEY `FK_detail_product_reference` (`product_id`),
  KEY `FK_orderdetail_order_reference` (`order_id`),
  CONSTRAINT `FK_detail_product_reference` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FK_orderdetail_order_reference` FOREIGN KEY (`order_id`) REFERENCES `userorder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='订单明细';

-- 正在导出表  taobiao.order_detail 的数据：~0 rows (大约)
DELETE FROM `order_detail`;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;


-- 导出  表 taobiao.picture 结构
CREATE TABLE IF NOT EXISTS `picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '图片id',
  `pic_path` varchar(100) DEFAULT NULL COMMENT '图片路径',
  `description` varchar(100) DEFAULT NULL COMMENT '图片描述',
  `isdefault` varchar(2) DEFAULT NULL COMMENT '是否是默认图片，即主图片(0：否，1：是)',
  `product_id` int(11) DEFAULT NULL COMMENT '商品id',
  PRIMARY KEY (`id`),
  KEY `FK_picture_product_reference` (`product_id`),
  CONSTRAINT `FK_picture_product_reference` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='商品图片';

-- 正在导出表  taobiao.picture 的数据：~21 rows (大约)
DELETE FROM `picture`;
/*!40000 ALTER TABLE `picture` DISABLE KEYS */;
INSERT INTO `picture` (`id`, `pic_path`, `description`, `isdefault`, `product_id`) VALUES
	(1, 'images/201012/thumb_img/5540_thumb_G_1292534363407.jpg', '', '1', 1),
	(2, 'images/201109/thumb_img/344_thumb_G_1316563675085.jpg', '', '1', 2),
	(3, 'images/201011/thumb_img/4719_thumb_G_1288995948326.jpg', '', '1', 3),
	(4, 'images/201011/thumb_img/4680_thumb_G_1288813013314.jpg', '', '1', 4),
	(5, 'images/201011/thumb_img/4662_thumb_G_1289005621058.jpg', '', '1', 5),
	(6, 'images/201011/thumb_img/5110_thumb_G_1289770635554.jpg', '', '1', 6),
	(7, 'images/201010/thumb_img/3856_thumb_G_1287967862843.jpg', '', '1', 7),
	(8, 'images/201009/thumb_img/3619_thumb_G_1283276597389.jpg', '', '1', 8),
	(9, 'images/201009/thumb_img/303_thumb_G_1283464621143.jpg', '', '1', 9),
	(10, 'images/201102/thumb_img/5500_thumb_G_1297797056239.jpg', '', '1', 10),
	(11, 'images/201011/thumb_img/4656_thumb_G_1289153520184.jpg', '', '1', 11),
	(12, 'images/201105/thumb_img/5278_thumb_G_1304708633213.jpg', '', '1', 12),
	(13, 'images/201011/thumb_img/4658_thumb_G_1289151780493.jpg', '', '1', 13),
	(14, 'images/201105/thumb_img/5729_thumb_G_1304641805280.jpg', '', '1', 14),
	(15, 'images/201011/thumb_img/4655_thumb_G_1289154233264.jpg', '', '1', 15),
	(16, 'images/201009/thumb_img/3618_thumb_G_1283477993769.jpg', '', '1', 16),
	(17, 'images/201102/thumb_img/5746_thumb_G_1298225002590.jpg', '', '1', 17),
	(18, 'images/201009/thumb_img/3750_thumb_G_1284596450839.jpg', '', '1', 18),
	(19, 'images/201010/thumb_img/4420_thumb_G_1287020685047.jpg', '', '1', 19),
	(20, 'images/201011/thumb_img/4719_thumb_G_1288995948326.jpg', '', '1', 20),
	(21, 'images/201010/thumb_img/4428_thumb_G_1287097556936.jpg', '', '1', 21);
/*!40000 ALTER TABLE `picture` ENABLE KEYS */;


-- 导出  表 taobiao.product 结构
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `product_name` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `location` varchar(30) DEFAULT NULL COMMENT '产地',
  `brand` varchar(30) DEFAULT NULL COMMENT '品牌',
  `brand_id` int(11) DEFAULT NULL COMMENT '品牌id',
  `series` varchar(30) DEFAULT NULL COMMENT '系列',
  `series_id` int(11) DEFAULT NULL COMMENT '系列id',
  `model` varchar(50) DEFAULT NULL COMMENT '型号',
  `style` varchar(2) DEFAULT NULL COMMENT '款式(1：男表，2：女表，3：中性表)',
  `size` varchar(50) DEFAULT NULL COMMENT '尺寸',
  `thickness` varchar(20) DEFAULT NULL COMMENT '厚度',
  `mechanism` varchar(50) DEFAULT NULL COMMENT '机芯',
  `mechanism_type` varchar(2) DEFAULT NULL COMMENT '机芯类别(1：:机械,2：石英)',
  `watchcase` varchar(20) DEFAULT NULL COMMENT '表壳',
  `dial` varchar(30) DEFAULT NULL COMMENT '表盘',
  `face` varchar(50) DEFAULT NULL COMMENT '表面',
  `watchband` varchar(50) DEFAULT NULL COMMENT '表带',
  `waterproof` varchar(20) DEFAULT NULL COMMENT '防水',
  `function` varchar(50) DEFAULT NULL COMMENT '功能',
  `pack` varchar(100) DEFAULT NULL COMMENT '包装',
  `price` float DEFAULT '0' COMMENT '原价',
  `special_price` float DEFAULT '0' COMMENT '特价',
  `top_carriage_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上架时间',
  `popularity` bigint(20) DEFAULT '0' COMMENT '人气',
  `sales` int(11) DEFAULT '0' COMMENT '销售量',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `pic` varchar(200) DEFAULT NULL COMMENT '主图片',
  PRIMARY KEY (`id`),
  KEY `FK_brand_reference` (`brand_id`),
  KEY `FK_product_series_reference` (`series_id`),
  CONSTRAINT `FK_brand_reference` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`),
  CONSTRAINT `FK_product_series_reference` FOREIGN KEY (`series_id`) REFERENCES `series` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='商品表';

-- 正在导出表  taobiao.product 的数据：~21 rows (大约)
DELETE FROM `product`;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`, `product_name`, `location`, `brand`, `brand_id`, `series`, `series_id`, `model`, `style`, `size`, `thickness`, `mechanism`, `mechanism_type`, `watchcase`, `dial`, `face`, `watchband`, `waterproof`, `function`, `pack`, `price`, `special_price`, `top_carriage_time`, `popularity`, `sales`, `remark`, `pic`) VALUES
	(1, '天梭Tissot 天慕系列 蓝宝石水晶玻璃/折叠扣/日历 女士石英表 T009.310.11.037.00 ', NULL, '天梭', 2, NULL, NULL, NULL, '1', NULL, NULL, '机械表', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4200, 2976, '2015-10-02 22:03:26', 1, 1, '轻易配搭 即可展现时尚眼光', 'images/201012/thumb_img/5540_thumb_G_1292534363407.jpg'),
	(2, '天梭力洛克系列T41.1.423.33机械男表 ', NULL, '天梭', 2, NULL, NULL, NULL, '1', NULL, NULL, '机械表', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5300, 3359, '2015-10-02 22:03:32', 2, 2, '独特纪念意义 时间造就经典', 'images/201109/thumb_img/344_thumb_G_1316563675085.jpg'),
	(3, '天梭娉驰100系列T22.1.161.81石英女表', NULL, '天梭', 2, NULL, NULL, NULL, '2', NULL, NULL, '机械表', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12000, 8556, '2015-10-02 22:03:36', 3, 3, '被誉为世上最性感的运动腕表', 'images/201011/thumb_img/4719_thumb_G_1288995948326.jpg'),
	(4, '天梭运动系列T039.417.11.047.00石英男表 ', NULL, '天梭', 2, NULL, NULL, NULL, '1', NULL, NULL, '石英表', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3800, 3108, '2015-10-02 22:03:43', 4, 4, '强大计时功能 酷感十足运动款', 'images/201011/thumb_img/4680_thumb_G_1288813013314.jpg'),
	(5, '天梭运动系列T014.427.16.031.00机械男表', NULL, '天梭', 2, NULL, NULL, NULL, '1', NULL, NULL, '机械表', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5800, 5496, '2015-10-02 22:03:47', 8, 6, '优雅完美运动款 亦适合正装场合', 'images/201011/thumb_img/4662_thumb_G_1289005621058.jpg'),
	(6, '天梭Tissot 经典系列 蓝宝石水晶玻璃/防水/日历 男士机械表 T035.407.16.051.01', NULL, '天梭', 2, NULL, NULL, NULL, '1', NULL, NULL, '机械表', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4500, 4236, '2015-10-02 22:03:51', 0, 0, 'ETA机芯 商务场合绝佳配饰', 'images/201011/thumb_img/5110_thumb_G_1289770635554.jpg'),
	(7, '天梭PRC200系列T014.421.11.047.00人动电能男表(Tissot)', NULL, '天梭', 2, NULL, NULL, NULL, '1', NULL, NULL, '机械表', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3969, 3468, '2015-10-02 22:04:00', 0, 0, '动人弧线 画成时尚味道', 'images/201010/thumb_img/3856_thumb_G_1287967862843.jpg'),
	(8, '天梭力洛克系列T41.1.483.53机械男表 ', NULL, '天梭', 2, NULL, NULL, NULL, '1', NULL, NULL, '机械表', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4000, 3699, '2015-10-02 22:04:04', 0, 0, '纪念诞生地力作 最畅销表款', 'images/201009/thumb_img/3619_thumb_G_1283276597389.jpg'),
	(9, '天梭运动系列T014.430.16.057.00机械男表', NULL, '天梭', 2, NULL, NULL, NULL, '1', NULL, NULL, '机械表', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4522, 3489, '2015-10-02 22:04:10', 1, 1, '天梭销量冠军 深得各类男士喜爱', 'images/201009/thumb_img/303_thumb_G_1283464621143.jpg'),
	(10, '天梭Tissot 唯意系列 蓝宝石水晶玻璃/防水/日历 女士机械表 T038.207.11.057.01', NULL, '天梭', 2, NULL, NULL, NULL, '2', NULL, NULL, '机械表', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3945, 3720, '2015-10-02 22:04:16', 0, 0, '唯美浑圆 经典传统之作', 'images/201102/thumb_img/5500_thumb_G_1297797056239.jpg'),
	(11, '天梭运动系列T035.627.11.051.00自动机械男表', NULL, '天梭', 2, NULL, NULL, NULL, '1', NULL, NULL, '机械表', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7100, 6120, '2015-10-02 22:04:20', 0, 0, '大气笃定 从容驾驭运动商务场合', 'images/201011/thumb_img/4656_thumb_G_1289153520184.jpg'),
	(12, '天梭Tissot 经典系列 蓝宝石水晶玻璃/双日历/防水 男士机械表 T019.430.16.031.01', NULL, '天梭', 2, NULL, NULL, NULL, '1', NULL, NULL, '机械表', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4611, 3829, '2015-10-02 22:04:30', 0, 0, '经典商务外观 ETA机芯精准计时', 'images/201105/thumb_img/5278_thumb_G_1304708633213.jpg'),
	(13, '天梭PRC200系列T014.421.11.057.00人动电能男表(Tissot)', NULL, '天梭', 2, NULL, NULL, NULL, '1', NULL, NULL, '机械表', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3200, 2976, '2015-10-02 22:04:34', 1, 1, '150周年纪念款 情意默默显现 ', 'images/201011/thumb_img/4658_thumb_G_1289151780493.jpg'),
	(14, '天梭PRC200系列T014.421.11.037.00男表', NULL, '天梭', 2, NULL, NULL, NULL, '1', NULL, NULL, '机械表', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8522, 7836, '2015-10-02 22:04:40', 2, 2, '顶尖防水功能 动感来源于非凡创意', 'images/201105/thumb_img/5729_thumb_G_1304641805280.jpg'),
	(15, '天梭腾智系列T013.420.44.202.00石英男表', NULL, '天梭', 2, NULL, NULL, NULL, '2', NULL, NULL, '石英表', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9200, 8556, '2015-10-02 22:04:45', 3, 3, '功能超群 各种运动场合首选利器', 'images/201011/thumb_img/4655_thumb_G_1289154233264.jpg'),
	(16, '天梭Tissot 经典系列 蓝宝石水晶玻璃/防水 情侣石英表  ', NULL, '天梭', 2, NULL, NULL, NULL, '3', NULL, NULL, '情侣表', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3500, 3108, '2015-10-02 22:04:55', 4, 4, '简约情侣款 相似外观却各具魅力', 'images/201009/thumb_img/3618_thumb_G_1283477993769.jpg'),
	(17, '天梭Tissot 经典系列 蓝宝石水晶玻璃/日历/防水 情侣机械表 ', NULL, '天梭', 2, NULL, NULL, NULL, '3', NULL, NULL, '情侣表', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3500, 3108, '2015-10-02 22:05:00', 4, 4, '唯意系列对表 将爱意合二为一', 'images/201102/thumb_img/5746_thumb_G_1298225002590.jpg'),
	(18, '浪琴Longines 军旗系列 有机玻璃/防水/小三针 男士机械表 L4.746.8.72.0', NULL, '浪琴', 3, NULL, NULL, NULL, '1', NULL, NULL, '机械表', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36000, 32292, '2015-10-02 22:05:07', 1, 1, '简约大方 适合成熟优雅的男士', 'images/201009/thumb_img/3750_thumb_G_1284596450839.jpg'),
	(19, '浪琴经典复古系列L4.796.4.72.2机械男表', NULL, '浪琴', 3, NULL, NULL, NULL, '1', NULL, NULL, '机械表', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25000, 19596, '2015-10-02 22:05:12', 8, 4, '向堪称美学典范的历史表款致敬', 'images/201010/thumb_img/4420_thumb_G_1287020685047.jpg'),
	(20, '浪琴康卡斯系列L3.258.0.89.6石英女表', NULL, '浪琴', 3, NULL, NULL, NULL, '2', NULL, NULL, '石英', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18000, 16928, '2015-10-02 22:05:16', 1, 1, '恒久魅力 创新技术 完美融于一体', 'images/201011/thumb_img/4719_thumb_G_1288995948326.jpg'),
	(21, '浪琴L3.662.4.76.6 康卡斯系列 男士机械表', NULL, '浪琴', 3, NULL, NULL, NULL, '1', NULL, NULL, '机械表', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000, 13432, '2015-10-02 22:05:24', 1, 1, '顶尖防水性能 成功人士风范', 'images/201010/thumb_img/4428_thumb_G_1287097556936.jpg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


-- 导出  表 taobiao.series 结构
CREATE TABLE IF NOT EXISTS `series` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系列id',
  `name` varchar(30) DEFAULT NULL COMMENT '系列名',
  `description` varchar(200) DEFAULT NULL COMMENT '系列描述',
  `brand_id` int(11) DEFAULT NULL COMMENT '品牌id',
  PRIMARY KEY (`id`),
  KEY `FK_series_reference` (`brand_id`),
  CONSTRAINT `FK_series_reference` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='品牌系列';

-- 正在导出表  taobiao.series 的数据：~0 rows (大约)
DELETE FROM `series`;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
/*!40000 ALTER TABLE `series` ENABLE KEYS */;


-- 导出  表 taobiao.t_user 结构
CREATE TABLE IF NOT EXISTS `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(20) DEFAULT NULL COMMENT '密码',
  `MSN` varchar(50) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `office_phone` varchar(20) DEFAULT NULL COMMENT '办公室电话',
  `home_phone` varchar(20) DEFAULT NULL COMMENT '家庭电话',
  `cellphone` varchar(20) DEFAULT NULL COMMENT '手机',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `password_tip` varchar(50) DEFAULT NULL COMMENT '密码提示问题',
  `password_answer` varchar(50) DEFAULT NULL COMMENT '密码提示答案',
  `last_logintime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上一次登录时间',
  `balance` float DEFAULT '0',
  `consume` int(11) DEFAULT '0' COMMENT '累计消费(累计消费达到5000，升级会VIP会员，达到20000，升级为金钻会员)',
  `level` varchar(2) DEFAULT '1' COMMENT '会员级别(1：普通会员，2：VIP会员(九折优惠)，3，金钻会员(八折优惠))',
  `status` varchar(2) DEFAULT '1' COMMENT '用户状态(0：表示挂起，1：表示正常使用)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='用户表';

-- 正在导出表  taobiao.t_user 的数据：~11 rows (大约)
DELETE FROM `t_user`;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` (`id`, `name`, `password`, `MSN`, `qq`, `office_phone`, `home_phone`, `cellphone`, `email`, `password_tip`, `password_answer`, `last_logintime`, `balance`, `consume`, `level`, `status`) VALUES
	(1, 'andy', '111', 'andy\'s MSN', '5427854', '8888', '8888', '8888', 'andy@163.com', 'old_address', 'admin', '2015-10-05 15:45:15', 12, 1, '1', '1'),
	(25, 'rose', '123', 'roseMSN', 'rose', '123', '123', '123', 'rose@qq.com', 'old_address', '123123', '2015-10-09 14:25:47', 120, 0, '1', '1'),
	(26, 'andy', '123456', '548754', '548754', '457821', '48201', '1221', 'andy@163.com', 'admin', 'admin', '2015-10-09 14:25:51', 65, 0, '1', '1'),
	(29, '张三', '123', '547845', '788542', '213687', '48788', '1111111111', 'andy@163.com', 'admin', 'admin', '2015-10-09 14:25:53', 32, 0, '1', '1'),
	(30, 'andy', '123456', 'andy\'s MSN', '8888', '8888', '8888', '8888', 'andy@163.com', 'andy', 'andy', '2015-10-04 13:52:50', 12, 1, '1', '1'),
	(31, 'andy', '123456', 'andy\'s MSN', '8888', '8888', '8888', '8888', 'andy@163.com', 'andy', 'andy', '2015-10-04 13:54:50', 12, 1, '1', '1'),
	(32, 'hello', '666', 'andy\'s MSN', NULL, NULL, NULL, '555', 'andy@163.com', 'hi', 'woqu', '2015-10-09 14:27:08', 25, 0, '1', '1'),
	(33, 'andy', '123456', 'andy\'s MSN', '8888', '8888', '8888', '8888', 'andy@163.com', 'andy', 'andy', '2015-10-04 13:57:06', 12, 1, '1', '1'),
	(34, 'andy', '123456', 'andy\'s MSN', '8888', '8888', '8888', '8888', 'andy@163.com', 'andy', 'andy', '2015-10-04 21:13:28', 12, 1, '1', '1'),
	(35, 'andy', '123456', 'andy\'s MSN', '8888', '8888', '8888', '8888', 'andy@163.com', 'andy', 'andy', '2015-10-04 22:22:54', 12, 1, '1', '1'),
	(36, 'lucy', 'lucy', NULL, NULL, NULL, NULL, '1111111', NULL, NULL, NULL, '2015-10-10 14:16:47', 0, 0, NULL, NULL);
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;


-- 导出  表 taobiao.userorder 结构
CREATE TABLE IF NOT EXISTS `userorder` (
  `id` varchar(20) NOT NULL COMMENT '订单id(由系统时间组成yyyyMMddhhmmss)',
  `order_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '下单时间',
  `total_price` float DEFAULT '0' COMMENT '订单总额',
  `ispay` varchar(2) DEFAULT '0' COMMENT '是否付款(0：未付款，1：已付款)',
  `issend` varchar(2) DEFAULT '0' COMMENT '卖家是否发货(0：未发货，1：已发货)',
  `isconfirm` varchar(2) DEFAULT '0' COMMENT '买家收到货是否已确认(0：未确认，1：已确认)',
  `status` varchar(2) DEFAULT '1' COMMENT '状态(0：表示关闭，1：表示正常使用)',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `send_order_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_order_user_reference` (`user_id`),
  CONSTRAINT `FK_order_user_reference` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='用户订单';

-- 正在导出表  taobiao.userorder 的数据：~2 rows (大约)
DELETE FROM `userorder`;
/*!40000 ALTER TABLE `userorder` DISABLE KEYS */;
INSERT INTO `userorder` (`id`, `order_time`, `total_price`, `ispay`, `issend`, `isconfirm`, `status`, `user_id`, `send_order_id`) VALUES
	('1444460567174', '2015-10-10 15:02:47', 19596, '0', '0', '0', '1', 1, '4333381701522'),
	('1444461654372', '2015-10-10 15:20:54', 29360, '0', '0', '0', '1', 1, '4333384963116');
/*!40000 ALTER TABLE `userorder` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
