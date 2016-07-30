/*
Navicat MySQL Data Transfer

Source Server         : SERVER
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : rivercity

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-07-30 08:52:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for agency
-- ----------------------------
DROP TABLE IF EXISTS `agency`;
CREATE TABLE `agency` (
  `agency_id` int(11) NOT NULL AUTO_INCREMENT,
  `agency_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `agency_logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `agency_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`agency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of agency
-- ----------------------------
INSERT INTO `agency` VALUES ('1', 'Sai Gon House', 'http://localhost:8080/rivercity/resources/lienhe/images/xSeaReal.jpg.pagespeed.ic.XItLGgo77q.jpg', '0974 444 678');
INSERT INTO `agency` VALUES ('2', 'Huu Duyen', 'http://localhost:8080/rivercity/resources/lienhe/images/xhuuduyen.png.pagespeed.ic.FoP1iC_jox.png', '0909 888 039');
INSERT INTO `agency` VALUES ('3', 'Truong Nguyen', 'http://localhost:8080/rivercity/resources/lienhe/images/xtruongnguyen.png.pagespeed.ic.Qz6kQu4iT4.png', '0901 682 868');
INSERT INTO `agency` VALUES ('4', 'Happy Land', 'http://localhost:8080/rivercity/resources/lienhe/images/xhappyland-logo-FA.jpg.pagespeed.ic.nSg-yhSwL9.jpg', '0949 989 558');
INSERT INTO `agency` VALUES ('5', 'ThienDuc Real', 'http://localhost:8080/rivercity/resources/lienhe/images/xthienduc.png.pagespeed.ic._R9Qtmxn-d.png', '0903 98 2772');
INSERT INTO `agency` VALUES ('6', 'Phat Hung', 'http://localhost:8080/rivercity/resources/lienhe/images/xphathung.png.pagespeed.ic.GkGJh78Cfs.png', '0937 156 969');
INSERT INTO `agency` VALUES ('7', 'My Hung', 'http://localhost:8080/rivercity/resources/lienhe/images/xmyhung.png.pagespeed.ic.aROyIQ9_yU.png', '0911 775 888');

-- ----------------------------
-- Table structure for buy_post
-- ----------------------------
DROP TABLE IF EXISTS `buy_post`;
CREATE TABLE `buy_post` (
  `post_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `post_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `post_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_type` int(1) NOT NULL,
  `post_category` int(2) NOT NULL,
  `post_province` int(11) NOT NULL,
  `post_district` int(11) NOT NULL,
  `post_ward` int(11) NOT NULL,
  `post_street` int(11) NOT NULL,
  `post_area` int(11) NOT NULL,
  `post_price` int(11) NOT NULL,
  `post_unit` int(11) NOT NULL,
  `post_description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of buy_post
-- ----------------------------

-- ----------------------------
-- Table structure for detail_post
-- ----------------------------
DROP TABLE IF EXISTS `detail_post`;
CREATE TABLE `detail_post` (
  `detail_id` int(11) NOT NULL,
  `detail_front_line` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail_way_in` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail_direction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail_number_floor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail_number_bed_room` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail_number_toilet_room` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail_furniture` mediumtext COLLATE utf8_unicode_ci,
  `post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of detail_post
-- ----------------------------

-- ----------------------------
-- Table structure for district
-- ----------------------------
DROP TABLE IF EXISTS `district`;
CREATE TABLE `district` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`district_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of district
-- ----------------------------
INSERT INTO `district` VALUES ('0', 'Quận 9', '0');

-- ----------------------------
-- Table structure for headquarter
-- ----------------------------
DROP TABLE IF EXISTS `headquarter`;
CREATE TABLE `headquarter` (
  `headquarter_id` int(11) NOT NULL,
  `headquarter_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `headquarter_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `headquarter_content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`headquarter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of headquarter
-- ----------------------------

-- ----------------------------
-- Table structure for investor
-- ----------------------------
DROP TABLE IF EXISTS `investor`;
CREATE TABLE `investor` (
  `investor_id` int(11) NOT NULL AUTO_INCREMENT,
  `investor_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `investor_description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `infor_id` int(11) NOT NULL,
  PRIMARY KEY (`investor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of investor
-- ----------------------------
INSERT INTO `investor` VALUES ('1', 'http://localhost:8080/rivercity/resources/gioithieu/images/logo-phatdat.jpg', 'Được thành lập từ năm 2004, Công Ty CP Phát Triển BĐS Phát Đạt hiện là một trong những thương hiệu hàng đầu trong lĩnh vực bất động sản. Với quỹ đất dồi dào tại các thành phố trọng điểm, Phát Đạt đã phát triển dự án ở nhiều phân khúc như\r\nkhách sạn, resort cao cấp, căn hộ, biệt thự, tiêu biểu: The EverRich Infinity, The EverRich 3, The EverRich 1…', '3');
INSERT INTO `investor` VALUES ('2', 'http://localhost:8080/rivercity/resources/gioithieu/images/logo-angia.jpg', 'Thành lập vào năm 2008, An Gia Investment là công ty chuyên đầu tư và phát triển các dự án nhà ở, căn hộ tại TP.HCM. Với đội ngũ có 15 năm kinh nghiệm trong lĩnh vực bất động sản, An Gia Investment hiện là chủ đầu tư của nhiều dự án căn hộ cao cấp như: Angia Skyline, Angia Riverside, Angia Star, The Garden.', '3');
INSERT INTO `investor` VALUES ('3', 'http://localhost:8080/rivercity/resources/gioithieu/images/logo-creed.jpg', 'Được thành lập tại Nhật Bản vào năm 1996, Creed Group là quỹ đầu tư tài chính tầm cỡ với quy mô lên đến 5 tỉ USD, chuyên đầu tư vào lĩnh vực bất động sản. Đến nay, Creed Group đã tham gia phát triển nhiều dự án bất động sản nổi bật ở nhiều quốc gia như Nhật Bản, Malaysia, Cambodia, Singapore, Myanmar, Bangladesh và Việt Nam.', '3');
INSERT INTO `investor` VALUES ('4', 'http://localhost:8080/rivercity/resources/gioithieu/images/logocoteccons.jpg', 'Tổng thầu của dự án River City - Coteccons là tập đoàn hàng đầu trong lĩnh vực xây dựng, thiết kế và thi công cho hàng loạt các dự án lớn tại Việt Nam, trở thành thương hiệu bảo chứng chất lượng cho những công trình mang đẳng cấp quốc tế. Coteccons hiện là đơn vị tổng thầu của các dự án do An Gia Investment làm chủ đầu tư như: Angia Skyline, Angia Riverside, Angia Star.', '3');

-- ----------------------------
-- Table structure for news_real
-- ----------------------------
DROP TABLE IF EXISTS `news_real`;
CREATE TABLE `news_real` (
  `news_id` int(11) NOT NULL,
  `news_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `news_description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `news_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `news_alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `news_content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of news_real
-- ----------------------------
INSERT INTO `news_real` VALUES ('0', 'Hội thảo “Bảo vệ quyền lợi người mua nhà – Minh bạch hóa thị trường bất động sản”', 'Trước những thông tin về một số chủ đầu tư không uy tín gây ảnh hưởng đến thị trường, Báo Thanh Niên đã kịp thời tổ chức Hội Thảo “Bảo vệ quyền lợi người mua nhà – Minh bạch hóa thị trường bất động sản” vào ngày 14/6.', 'http://localhost:8080/rivercity/resources/tintuc/images/xDSC084732.jpg.pagespeed.ic.byuHt-6IcX.jpg', 'hoi-thao-bao-ve-quyen-loi-nguoi-mua-nha--minh-bach-hoa-thi-truong-bat-dong-san', '<div class=\"news-text\">\r\n<h3> 6 tháng cuối năm, giá nhà đất không biến động</h3>\r\n<div style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Đó là nhận định từ ông Lương Sĩ Khoa, phó tổng giám đốc Công ty bất động sản An Gia Investment, khi chia sẻ về tình hình hoạt động của thị trường bất động sản trong nửa cuối năm 2016 tới đây.</span></div><p class=\"ck_question\" style=\"text-align: justify;\"><img alt=\"6 tháng cuối năm, giá nhà đất không biến động&nbsp; \" src=\"http://angia.com.vn/pictures/news/thi-truong/rivercity/chan-dung-1467110170.jpg\" style=\"width: 665px; height: 372px;\"></p><p class=\"ck_question\" style=\"text-align: center;\"><em>Ông Lương Sĩ Khoa, phó tổng giám đốc Công ty bất động sản An Gia Investment - Ảnh: NVCC</em></p><div style=\"text-align: justify;\"><span style=\"font-weight: bold;\">* Giao dịch trên thị trường bất động sản 6 tháng đầu năm diễn biến không khả quan như những gì các chuyên gia đã dự báo trước đó. Theo ông, những nguyên nhân chính nào đã tác động tới thị trường dẫn đến tình trạng này?</span></div><p style=\"text-align: justify;\"><strong>- Ông Lương Sĩ Khoa:</strong> Theo tôi, có hai nguyên nhân chính dẫn đến sự trầm lắng của thị trường bất động sản trong thời gian qua mà&nbsp;đầu tiên phải kể đến các chính sách quản lý mới được Nhà nước công bố gần đây như việc điều chỉnh thông tư 36, siết tín dụng bất động sản.</p><p style=\"text-align: justify;\">Nguồn vốn huy động từ ngân hàng chính là một trong những nguồn tài chính chủ lực để phát triển dự án. Hiện nay hầu hết&nbsp;doanh nghiệp đều dựa vào huy động vốn ngân hàng, việc siết tín dụng bất động sản sẽ “hãm phanh” tốc độ phát triển của thị trường, không chỉ khiến giao dịch nhà đất suy giảm mà các doanh nghiệp cũng phải điều chỉnh lại kế hoạch kinh doanh và nguồn hàng của mình trong thời gian tới.</p><p style=\"text-align: justify;\">Nguyên nhân thứ 2 là sự đa dạng và dồi dào của nguồn cung nhà đất. Hiện tại nguồn cung căn hộ trong cùng một phân khúc rất dồi dào, người mua có nhiều cơ hội để lựa chọn.</p><div style=\"text-align: justify;\"><span style=\"font-weight: bold;\">* Ông có nhìn nhận gì về tình hình hoạt động của thị trường trong 6 tháng cuối năm? Sự sụt giảm về lượng tiêu thụ thời điểm hiện tại liệu có tác động đến giá bất động sản và hoạt động của doanh nghiệp trong thời gian tới?</span></div><p style=\"text-align: justify;\"><strong>- </strong>Tuy lượng giao dịch thời gian qua có giảm hơn so với cùng kỳ năm 2015 nhưng tôi cho rằng thị trường từ giờ đến cuối năm vẫn sẽ phát triển ổn định vì nhu cầu thật của khách hàng vẫn còn rất lớn.&nbsp;</p><p style=\"text-align: justify;\">Để tăng lượng giao dịch vào lúc này, các chủ đầu tư phải cải thiện nhiều hơn nữa chiến lược bán hàng của mình. Các doanh nghiệp cần phải khẳng định được chất lượng sản phẩm của mình và tăng cường chiến dịch truyền thông để giúp khách hàng hiểu rõ hơn về sản phẩm, về những ưu thế của nhà ở căn hộ.&nbsp;</p><div style=\"text-align: justify;\"><span style=\"font-weight: bold;\">* Theo ông, 6 tháng cuối năm có phải là thời điểm thích hợp để mua nhà để ở?</span></div><div style=\"text-align: justify;\">- Hiện nay nguồn cung trên thị trường đang rất đa dạng, có nhiều dự án trên cùng một phân khúc được chào bán với nhiều mức giá khác nhau nên khách hàng sẽ có rất nhiều lựa chọn.</div><p style=\"text-align: justify;\">Giá bán đang khá ổn định và các chính sách bán hàng cũng linh hoạt hơn, hấp dẫn và có lợi hơn đối với người mua. Tuy nhiên, khách hàng cũng cần tìm hiểu thật kỹ những thông tin về dự án như: pháp lý, tiến độ, phương thức thanh toán, uy tín chủ đầu tư… để tránh những rủi ro không đáng có.</p><p style=\"text-align: justify;\">Riêng với An Gia, trong 6 tháng cuối năm, chúng tôi sẽ tiếp tục đẩy mạnh tiến độ tại các dự án đang triển khai. Từ 15-6 An Gia đã bắt đầu bàn giao nhà tại dự án khu <a href=\"http://angiagarden.vn\" target=\"_blank\">căn hộ The Garden</a>, dự án <a href=\"http://angiastar.vn\">Angia Star</a> cũng sẽ được bàn giao vào cuối năm 2016. Về chiến lược dài hơn, chúng tôi sẽ tập trung nguồn lực để tiếp tục triển khai dự án <a href=\"http://rivercity.vn\" target=\"_blank\">căn hộ River City</a>.</p><div style=\"text-align: justify;\"><span style=\"font-weight: bold;\">* Sắp tới đây An Gia Investment có đưa ra các chính sách bán hàng nào để cạnh tranh trên thị trường, nhất là khi sản phẩm của công ty đa phần đều là dòng cao cấp, giá bán cao?</span></div><p style=\"text-align: justify;\">- Đặt mình vào vị trí khách hàng, chúng tôi hiểu mối băn khoăn đầu tiên của khách hàng khi tiếp cận dự án là vấn đề tài chính. An Gia Investment đã cùng phối hợp với các ngân hàng đưa ra những giải pháp về tài chính, các phương thức thanh toán linh hoạt để phục vụ khách hàng một cách tốt nhất.</p><p style=\"text-align: justify;\">Như dự án River City (Q.7), chúng tôi áp dụng lịch thanh toán chỉ từ 1%/tháng để khách hàng có thể dàn trải chi phí. Trước đó, với dự án Angia Skyline (Q.7), chúng tôi cũng áp dụng phương thức thanh toán chỉ 20% cho đến khi nhận căn hộ. Những chính sách này được khách hàng đón nhận rất tích cực.</p><p style=\"text-align: justify;\">Bên cạnh chính sách bán hàng, An Gia Investment còn đưa ra những chiến lược về sản phẩm. Các sản phẩm đều được đầu tư nhiều về hạ tầng, tiện ích, góp phần nâng cao chất lượng cuộc sống, đem lại giá trị bền vững cho cư dân.</p><p style=\"text-align: justify;\">Điển hình như tại dự án River City, cư dân sẽ được hưởng cuộc sống thượng lưu với các tiện ích như: biển đảo nhân tạo, quảng trường nước và ánh sáng, hồ bơi thác nước hai tầng, đường hoa đi bộ trên không….</p><span style=\"font-weight: bold;\">* Xin cảm ơn ông!</span><p class=\"ck_question\" style=\"text-align: justify;\">Theo batdongsan.tuoitre.vn</p></div>');
INSERT INTO `news_real` VALUES ('1', 'Thí sinh Hoa hậu Việt Nam thăm nhà tương lai', 'Top 30 vòng chung khảo phía Nam vừa tới thăm nơi tân hoa hậu sẽ sinh sống trong 2 năm nhiệm kỳ.', 'http://localhost:8080/rivercity/resources/tintuc/images/xDSC084732.jpg.pagespeed.ic.byuHt-6IcX.jpg', 'thi-sinh-hoa-hau-viet-nam-tham-nha-tuong-lai', 'fuck');
INSERT INTO `news_real` VALUES ('2', 'Mỗi tuần một niềm vui: Lái Vespa – Vi Vu Châu Á', 'Hàng trăm khách hàng đã đến tham quan căn hộ mẫu và tham dự chương trình Mỗi Tuần Một Niềm Vui với chủ đề “Lái Vespa – Vi Vu Châu Á” được tổ chức vào Khu Căn Hộ Mẫu River City vào ngày 4/6 vừa qua. ', 'http://localhost:8080/rivercity/resources/tintuc/images/xDSC084732.jpg.pagespeed.ic.byuHt-6IcX.jpg', 'moi-tuan-mot-niem-vui-lai-vespa-vi-vu-chau-a', '<div class=\"news-text\">\r\n<h3> 6 tháng cuối năm, giá nhà đất không biến động</h3>\r\n<div style=\"text-align: justify;\"><span style=\"font-weight: bold;\">Đó là nhận định từ ông Lương Sĩ Khoa, phó tổng giám đốc Công ty bất động sản An Gia Investment, khi chia sẻ về tình hình hoạt động của thị trường bất động sản trong nửa cuối năm 2016 tới đây.</span></div><p class=\"ck_question\" style=\"text-align: justify;\"><img alt=\"6 tháng cuối năm, giá nhà đất không biến động&nbsp; \" src=\"http://angia.com.vn/pictures/news/thi-truong/rivercity/chan-dung-1467110170.jpg\" style=\"width: 665px; height: 372px;\"></p><p class=\"ck_question\" style=\"text-align: center;\"><em>Ông Lương Sĩ Khoa, phó tổng giám đốc Công ty bất động sản An Gia Investment - Ảnh: NVCC</em></p><div style=\"text-align: justify;\"><span style=\"font-weight: bold;\">* Giao dịch trên thị trường bất động sản 6 tháng đầu năm diễn biến không khả quan như những gì các chuyên gia đã dự báo trước đó. Theo ông, những nguyên nhân chính nào đã tác động tới thị trường dẫn đến tình trạng này?</span></div><p style=\"text-align: justify;\"><strong>- Ông Lương Sĩ Khoa:</strong> Theo tôi, có hai nguyên nhân chính dẫn đến sự trầm lắng của thị trường bất động sản trong thời gian qua mà&nbsp;đầu tiên phải kể đến các chính sách quản lý mới được Nhà nước công bố gần đây như việc điều chỉnh thông tư 36, siết tín dụng bất động sản.</p><p style=\"text-align: justify;\">Nguồn vốn huy động từ ngân hàng chính là một trong những nguồn tài chính chủ lực để phát triển dự án. Hiện nay hầu hết&nbsp;doanh nghiệp đều dựa vào huy động vốn ngân hàng, việc siết tín dụng bất động sản sẽ “hãm phanh” tốc độ phát triển của thị trường, không chỉ khiến giao dịch nhà đất suy giảm mà các doanh nghiệp cũng phải điều chỉnh lại kế hoạch kinh doanh và nguồn hàng của mình trong thời gian tới.</p><p style=\"text-align: justify;\">Nguyên nhân thứ 2 là sự đa dạng và dồi dào của nguồn cung nhà đất. Hiện tại nguồn cung căn hộ trong cùng một phân khúc rất dồi dào, người mua có nhiều cơ hội để lựa chọn.</p><div style=\"text-align: justify;\"><span style=\"font-weight: bold;\">* Ông có nhìn nhận gì về tình hình hoạt động của thị trường trong 6 tháng cuối năm? Sự sụt giảm về lượng tiêu thụ thời điểm hiện tại liệu có tác động đến giá bất động sản và hoạt động của doanh nghiệp trong thời gian tới?</span></div><p style=\"text-align: justify;\"><strong>- </strong>Tuy lượng giao dịch thời gian qua có giảm hơn so với cùng kỳ năm 2015 nhưng tôi cho rằng thị trường từ giờ đến cuối năm vẫn sẽ phát triển ổn định vì nhu cầu thật của khách hàng vẫn còn rất lớn.&nbsp;</p><p style=\"text-align: justify;\">Để tăng lượng giao dịch vào lúc này, các chủ đầu tư phải cải thiện nhiều hơn nữa chiến lược bán hàng của mình. Các doanh nghiệp cần phải khẳng định được chất lượng sản phẩm của mình và tăng cường chiến dịch truyền thông để giúp khách hàng hiểu rõ hơn về sản phẩm, về những ưu thế của nhà ở căn hộ.&nbsp;</p><div style=\"text-align: justify;\"><span style=\"font-weight: bold;\">* Theo ông, 6 tháng cuối năm có phải là thời điểm thích hợp để mua nhà để ở?</span></div><div style=\"text-align: justify;\">- Hiện nay nguồn cung trên thị trường đang rất đa dạng, có nhiều dự án trên cùng một phân khúc được chào bán với nhiều mức giá khác nhau nên khách hàng sẽ có rất nhiều lựa chọn.</div><p style=\"text-align: justify;\">Giá bán đang khá ổn định và các chính sách bán hàng cũng linh hoạt hơn, hấp dẫn và có lợi hơn đối với người mua. Tuy nhiên, khách hàng cũng cần tìm hiểu thật kỹ những thông tin về dự án như: pháp lý, tiến độ, phương thức thanh toán, uy tín chủ đầu tư… để tránh những rủi ro không đáng có.</p><p style=\"text-align: justify;\">Riêng với An Gia, trong 6 tháng cuối năm, chúng tôi sẽ tiếp tục đẩy mạnh tiến độ tại các dự án đang triển khai. Từ 15-6 An Gia đã bắt đầu bàn giao nhà tại dự án khu <a href=\"http://angiagarden.vn\" target=\"_blank\">căn hộ The Garden</a>, dự án <a href=\"http://angiastar.vn\">Angia Star</a> cũng sẽ được bàn giao vào cuối năm 2016. Về chiến lược dài hơn, chúng tôi sẽ tập trung nguồn lực để tiếp tục triển khai dự án <a href=\"http://rivercity.vn\" target=\"_blank\">căn hộ River City</a>.</p><div style=\"text-align: justify;\"><span style=\"font-weight: bold;\">* Sắp tới đây An Gia Investment có đưa ra các chính sách bán hàng nào để cạnh tranh trên thị trường, nhất là khi sản phẩm của công ty đa phần đều là dòng cao cấp, giá bán cao?</span></div><p style=\"text-align: justify;\">- Đặt mình vào vị trí khách hàng, chúng tôi hiểu mối băn khoăn đầu tiên của khách hàng khi tiếp cận dự án là vấn đề tài chính. An Gia Investment đã cùng phối hợp với các ngân hàng đưa ra những giải pháp về tài chính, các phương thức thanh toán linh hoạt để phục vụ khách hàng một cách tốt nhất.</p><p style=\"text-align: justify;\">Như dự án River City (Q.7), chúng tôi áp dụng lịch thanh toán chỉ từ 1%/tháng để khách hàng có thể dàn trải chi phí. Trước đó, với dự án Angia Skyline (Q.7), chúng tôi cũng áp dụng phương thức thanh toán chỉ 20% cho đến khi nhận căn hộ. Những chính sách này được khách hàng đón nhận rất tích cực.</p><p style=\"text-align: justify;\">Bên cạnh chính sách bán hàng, An Gia Investment còn đưa ra những chiến lược về sản phẩm. Các sản phẩm đều được đầu tư nhiều về hạ tầng, tiện ích, góp phần nâng cao chất lượng cuộc sống, đem lại giá trị bền vững cho cư dân.</p><p style=\"text-align: justify;\">Điển hình như tại dự án River City, cư dân sẽ được hưởng cuộc sống thượng lưu với các tiện ích như: biển đảo nhân tạo, quảng trường nước và ánh sáng, hồ bơi thác nước hai tầng, đường hoa đi bộ trên không….</p><span style=\"font-weight: bold;\">* Xin cảm ơn ông!</span><p class=\"ck_question\" style=\"text-align: justify;\">Theo batdongsan.tuoitre.vn</p></div>');

-- ----------------------------
-- Table structure for normal
-- ----------------------------
DROP TABLE IF EXISTS `normal`;
CREATE TABLE `normal` (
  `infor_id` int(11) NOT NULL AUTO_INCREMENT,
  `infor_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `infor_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `infor_data_name` int(255) DEFAULT NULL,
  `infor_data_hash` int(255) DEFAULT NULL,
  `infor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `infor_alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `infor_content` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`infor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of normal
-- ----------------------------
INSERT INTO `normal` VALUES ('1', 'bg1.jpg', 'http://rivercity.vn/gioi-thieu/gioi-thieu-du-an.html', '2', '2', 'Giới thiệu dự án', 'gioi-thieu-du-an', ' Đây không đơn thuần là 1 tòa nhà, đây chính là một phần của thành phố. RIVER CITY - tuyệt tác căn hộ bên Sông Sài Gòn với Giải Thưởng Phối Cảnh Đô Thị Châu Á danh giá sẽ là biểu tượng kiến trúc độc đáo – ngay chính tại Nam Sài Gòn này. <br> <br>Thiết kế bứt phá mọi giới hạn. Không gian sống kiêu hãnh dành cho chủ nhân thượng lưu. Tiện ích ưu việt lần đầu tiên có mặt tại Việt Nam. Căn hộ RIVER CITY sẽ mang lại cuộc sống thăng hoa, tràn năng lượng cùng hàng loạt trải nghiệm mà bạn chưa từng thấy ở những căn hộ tương tự.');
INSERT INTO `normal` VALUES ('2', 'bg6.jpg', 'http://rivercity.vn/gioi-thieu/thong-tin-du-an.html', '3', '3', 'Thông tin dự án', 'thong-tin-du-an', 'Quy mô: <strong>12</strong> block từ <strong>15</strong> đến <strong>39</strong> tầng<br> Diện tích đất: <strong>112.585</strong> m2<br> Diện tích xây dựng: <strong>26.614</strong> m2<br> Mật độxây dựng: <strong>23,6</strong>%<br> Tổng số căn hộ ở: <strong>4.800</strong> căn<br> Tổng số căn hộ dịch vụ (office-tel, shop house): <strong>2.500</strong> căn');
INSERT INTO `normal` VALUES ('3', 'bg7.jpg', 'http://rivercity.vn/gioi-thieu/dau-tu-phat-trien.html', '1', '1', 'Đầu tư và phát triển', 'dau-tu-phat-trien', 'TUYỆT TÁC RIVER CITY ĐẾN TỪ NHỮNG THƯƠNG HIỆU HÀNG ĐẦU');
INSERT INTO `normal` VALUES ('4', 'bg9.jpg', null, '4', '4', '4', '4', '4');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `district_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('0', 'Lan Phương MHBR', '0', '0');

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `province_id` int(11) NOT NULL AUTO_INCREMENT,
  `province_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`province_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES ('0', 'TP.Hồ Chí Minh');

-- ----------------------------
-- Table structure for sell_post
-- ----------------------------
DROP TABLE IF EXISTS `sell_post`;
CREATE TABLE `sell_post` (
  `post_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `post_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_category` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `post_province` int(11) NOT NULL,
  `post_district` int(11) NOT NULL,
  `post_ward` int(11) DEFAULT NULL,
  `post_street` int(11) DEFAULT NULL,
  `post_area` int(11) DEFAULT NULL,
  `post_price` int(11) DEFAULT NULL,
  `post_unit` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_description` mediumtext COLLATE utf8_unicode_ci,
  `post_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sell_post
-- ----------------------------
INSERT INTO `sell_post` VALUES ('sp01', 'Căn hộ Lan phương TT 30% nhận nhà và sổ, NHHT 70%, 350 triệu/70m2/2PN, thanh toán linh hoạt', 'BCHCC', '0', '0', null, null, '80', '25', 'BGT', '- Căn hộ được thiết kế hiện đại, có ban công thoáng mát, hướng Tây Bắc, Đông Nam đón lấy nắng gió thiên nhiên, tạo cho khách hàng không gian sống rộng rãi. Nội thất đầy đủ, tiện nghi, đạt chuẩn Singapore, vật liệu an toàn với người sử dụng và thân thiện với môi trường.', 'http://file4.batdongsan.com.vn/resize/745x510/2016/06/28/20160628144803-e7e2.jpg', '1');
INSERT INTO `sell_post` VALUES ('sp02', 'Căn hộ Lan phương TT 30% nhận nhà và sổ, NHHT 70%, 350 triệu/70m2/2PN, thanh toán linh hoạt', 'BCHCC', '0', '0', null, null, '80', '25', 'BGT', '- Căn hộ được thiết kế hiện đại, có ban công thoáng mát, hướng Tây Bắc, Đông Nam đón lấy nắng gió thiên nhiên, tạo cho khách hàng không gian sống rộng rãi. Nội thất đầy đủ, tiện nghi, đạt chuẩn Singapore, vật liệu an toàn với người sử dụng và thân thiện với môi trường', 'http://file4.batdongsan.com.vn/resize/745x510/2016/06/28/20160628144803-e7e2.jpg', '1');

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

-- ----------------------------
-- Table structure for special
-- ----------------------------
DROP TABLE IF EXISTS `special`;
CREATE TABLE `special` (
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
-- Records of special
-- ----------------------------
INSERT INTO `special` VALUES ('1', 'http://localhost:8080/rivercity/resources/gioithieu/images/bg7.jpg', 'http://rivercity.vn/gioi-thieu/dau-tu-phat-trien.html', '1', '1', 'ĐẦU TƯ VÀ PHÁT TRIỂN', 'dau-tu-phat-trien', 'TUYỆT TÁC RIVER CITY ĐẾN TỪ NHỮNG THƯƠNG HIỆU HÀNG ĐẦU');

-- ----------------------------
-- Table structure for street
-- ----------------------------
DROP TABLE IF EXISTS `street`;
CREATE TABLE `street` (
  `street_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`street_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of street
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_login` int(255) NOT NULL,
  `type_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'cuongdeptrai', '123456', 'cuong.dh8c@gmail.com', '1', '', null, null);

-- ----------------------------
-- Table structure for ward
-- ----------------------------
DROP TABLE IF EXISTS `ward`;
CREATE TABLE `ward` (
  `ward_id` int(11) NOT NULL,
  `ward_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ward_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ward
-- ----------------------------
