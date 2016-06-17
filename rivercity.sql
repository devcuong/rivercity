/*
Navicat MySQL Data Transfer

Source Server         : SERVER
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : rivercity

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-06-17 07:30:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for information_investor
-- ----------------------------
DROP TABLE IF EXISTS `information_investor`;
CREATE TABLE `information_investor` (
  `investor_id` int(11) NOT NULL AUTO_INCREMENT,
  `investor_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `investor_description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `information_special_id` int(11) NOT NULL,
  PRIMARY KEY (`investor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of information_investor
-- ----------------------------
INSERT INTO `information_investor` VALUES ('1', 'http://localhost:8080/rivercity/resources/second/images/logo-phatdat.jpg', 'Được thành lập từ năm 2004, Công Ty CP Phát Triển BĐS Phát Đạt hiện là một trong những thương hiệu hàng đầu trong lĩnh vực bất động sản. Với quỹ đất dồi dào tại các thành phố trọng điểm, Phát Đạt đã phát triển dự án ở nhiều phân khúc như\r\nkhách sạn, resort cao cấp, căn hộ, biệt thự, tiêu biểu: The EverRich Infinity, The EverRich 3, The EverRich 1…', '1');
INSERT INTO `information_investor` VALUES ('2', 'http://localhost:8080/rivercity/resources/second/images/logo-angia.jpg', 'Thành lập vào năm 2008, An Gia Investment là công ty chuyên đầu tư và phát triển các dự án nhà ở, căn hộ tại TP.HCM. Với đội ngũ có 15 năm kinh nghiệm trong lĩnh vực bất động sản, An Gia Investment hiện là chủ đầu tư của nhiều dự án căn hộ cao cấp như: Angia Skyline, Angia Riverside, Angia Star, The Garden.', '1');
INSERT INTO `information_investor` VALUES ('3', 'http://localhost:8080/rivercity/resources/second/images/logo-creed.jpg', 'Được thành lập tại Nhật Bản vào năm 1996, Creed Group là quỹ đầu tư tài chính tầm cỡ với quy mô lên đến 5 tỉ USD, chuyên đầu tư vào lĩnh vực bất động sản. Đến nay, Creed Group đã tham gia phát triển nhiều dự án bất động sản nổi bật ở nhiều quốc gia như Nhật Bản, Malaysia, Cambodia, Singapore, Myanmar, Bangladesh và Việt Nam.', '1');
INSERT INTO `information_investor` VALUES ('4', 'http://localhost:8080/rivercity/resources/second/images/logocoteccons.jpg', 'Tổng thầu của dự án River City - Coteccons là tập đoàn hàng đầu trong lĩnh vực xây dựng, thiết kế và thi công cho hàng loạt các dự án lớn tại Việt Nam, trở thành thương hiệu bảo chứng chất lượng cho những công trình mang đẳng cấp quốc tế. Coteccons hiện là đơn vị tổng thầu của các dự án do An Gia Investment làm chủ đầu tư như: Angia Skyline, Angia Riverside, Angia Star.', '1');

-- ----------------------------
-- Table structure for information_normal
-- ----------------------------
DROP TABLE IF EXISTS `information_normal`;
CREATE TABLE `information_normal` (
  `infor_id` int(11) NOT NULL AUTO_INCREMENT,
  `infor_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `infor_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `infor_data_name` int(255) NOT NULL,
  `infor_data_hash` int(255) NOT NULL,
  `infor_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `infor_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `infor_content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`infor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of information_normal
-- ----------------------------
INSERT INTO `information_normal` VALUES ('1', 'bg1.jpg', 'http://rivercity.vn/gioi-thieu/gioi-thieu-du-an.html', '2', '2', 'Giới thiệu dự án', 'gioi-thieu-du-an', ' Đây không đơn thuần là 1 tòa nhà, đây chính là một phần của thành phố. RIVER CITY - tuyệt tác căn hộ bên Sông Sài Gòn với Giải Thưởng Phối Cảnh Đô Thị Châu Á danh giá sẽ là biểu tượng kiến trúc độc đáo – ngay chính tại Nam Sài Gòn này. <br> <br>Thiết kế bứt phá mọi giới hạn. Không gian sống kiêu hãnh dành cho chủ nhân thượng lưu. Tiện ích ưu việt lần đầu tiên có mặt tại Việt Nam. Căn hộ RIVER CITY sẽ mang lại cuộc sống thăng hoa, tràn năng lượng cùng hàng loạt trải nghiệm mà bạn chưa từng thấy ở những căn hộ tương tự.');
INSERT INTO `information_normal` VALUES ('2', 'bg6.jpg', 'http://rivercity.vn/gioi-thieu/thong-tin-du-an.html', '3', '3', 'Thông tin dự án', 'thong-tin-du-an', 'Quy mô: <strong>12</strong> block từ <strong>15</strong> đến <strong>39</strong> tầng<br> Diện tích đất: <strong>112.585</strong> m2<br> Diện tích xây dựng: <strong>26.614</strong> m2<br> Mật độxây dựng: <strong>23,6</strong>%<br> Tổng số căn hộ ở: <strong>4.800</strong> căn<br> Tổng số căn hộ dịch vụ (office-tel, shop house): <strong>2.500</strong> căn');

-- ----------------------------
-- Table structure for information_special
-- ----------------------------
DROP TABLE IF EXISTS `information_special`;
CREATE TABLE `information_special` (
  `infor_id` int(11) NOT NULL AUTO_INCREMENT,
  `infor_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `infor_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `infor_data_name` int(255) NOT NULL,
  `infor_data_hash` int(255) NOT NULL,
  `infor_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `infor_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `infor_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`infor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of information_special
-- ----------------------------
INSERT INTO `information_special` VALUES ('1', 'http://localhost:8080/rivercity/resources/second/images/bg7.jpg', 'http://rivercity.vn/gioi-thieu/dau-tu-phat-trien.html', '1', '1', 'ĐẦU TƯ VÀ PHÁT TRIỂN', 'dau-tu-phat-trien', 'TUYỆT TÁC RIVER CITY ĐẾN TỪ NHỮNG THƯƠNG HIỆU HÀNG ĐẦU');

-- ----------------------------
-- Table structure for slide_image
-- ----------------------------
DROP TABLE IF EXISTS `slide_image`;
CREATE TABLE `slide_image` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_active` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of slide_image
-- ----------------------------
INSERT INTO `slide_image` VALUES ('1', 'http://rivercity.vn/pictures/catalog/background/bg8.jpg', '0', 'ĐƯỜNG HOA ĐI BỘ TRÊN KHÔNG', 'LẦN ĐẦU TIÊN XUẤT HIỆN TẠI VIỆT NAM');
INSERT INTO `slide_image` VALUES ('2', 'http://rivercity.vn/pictures/catalog/background/bg1.jpg', '0', 'BIỂU TƯỢNG KIẾN TRÚC ĐỘC ĐÁO', 'NGAY TẠI NAM SÀI GÒN');
INSERT INTO `slide_image` VALUES ('3', 'http://rivercity.vn/pictures/catalog/background/bg2.jpg', '1', 'TUYỆT TÁC CĂN HỘ', 'BÊN SÔNG SÀI GÒN');
INSERT INTO `slide_image` VALUES ('4', 'http://rivercity.vn/pictures/catalog/background/bg3.jpg', '0', 'QUẢNG TRƯỜNG NƯỚC ÁNH SÁNG', 'LẦN ĐẦU TIÊN XUẤT HIỆN TẠI VIỆT NAM');
INSERT INTO `slide_image` VALUES ('5', 'http://rivercity.vn/pictures/catalog/background/bg4.jpg', '0', 'BIỂN ĐẢO NHÂN TẠO', 'LẦN ĐẦU TIÊN XUẤT HIỆN TẠI VIỆT NAM');
INSERT INTO `slide_image` VALUES ('6', 'http://rivercity.vn/pictures/catalog/background/bg5.jpg', '0', 'HỒ BƠI THÁC NƯỚC HAI TẦNG', 'LẦN ĐẦU TIÊN XUẤT HIỆN TẠI VIỆT NAM');
INSERT INTO `slide_image` VALUES ('7', 'http://rivercity.vn/pictures/catalog/background/bg8.jpg', '0', 'ĐƯỜNG HOA ĐI BỘ TRÊN KHÔNG', 'LẦN ĐẦU TIÊN XUẤT HIỆN TẠI VIỆT NAM');
INSERT INTO `slide_image` VALUES ('8', 'http://rivercity.vn/pictures/catalog/background/bg1.jpg', '0', 'BIỂU TƯỢNG KIẾN TRÚC ĐỘC ĐÁO', 'NGAY TẠI NAM SÀI GÒN');
INSERT INTO `slide_image` VALUES ('9', 'http://i.imgur.com/SCEZ9sy.jpg', '0', 'BIỂU TƯỢNG KIẾN TRÚC ĐỘC ĐÁO', 'NGAY TẠI NAM SÀI GÒN');
