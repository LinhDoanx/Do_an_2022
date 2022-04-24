-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2022 at 04:19 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_category`
--

CREATE TABLE `db_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `level` int(2) NOT NULL,
  `parentid` int(11) NOT NULL,
  `orders` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `link`, `level`, `parentid`, `orders`, `created_at`, `created_by`, `updated_at`, `updated_by`, `trash`, `status`) VALUES
(1, 'Sách giải ', 'sach-giai', 2, 3, '0', '2021-05-22 16:15:39', '4', '2022-03-01 20:20:52', '1', 1, 1),
(2, 'Sách tham khảo', 'sach-tham-khao', 2, 3, '0', '2021-05-22 16:13:24', '4', '2022-03-01 20:23:09', '1', 1, 1),
(3, 'Sách giáo khoa', 'sach-giao-khoa', 1, 0, '0', '2021-05-22 16:09:41', '4', '2022-03-01 20:12:26', '1', 1, 1),
(4, 'Truyện tranh', 'truyen-tranh', 1, 0, '1', '2021-05-23 21:33:25', '1', '2022-03-01 20:12:40', '1', 1, 1),
(5, 'Truyện Anime', 'truyen-anime', 2, 4, '0', '2021-05-23 21:33:41', '1', '2022-03-01 20:22:18', '1', 1, 1),
(6, 'Truyện trinh thám', 'truyen-trinh-tham', 2, 4, '1', '2021-06-03 21:38:28', '1', '2022-03-01 20:22:46', '1', 1, 1),
(7, 'Sách giáo viên', 'sach-giao-vien', 2, 3, '1', '2021-06-03 21:39:01', '1', '2022-03-01 20:21:02', '1', 1, 1),
(8, 'Sách học sinh', 'sach-hoc-sinh', 2, 3, '2', '2021-06-03 21:39:48', '1', '2022-03-01 20:21:21', '1', 1, 1),
(9, 'Truyện Manga', 'truyen-manga', 2, 4, '0', '2021-06-03 21:40:38', '1', '2022-03-01 20:21:32', '1', 1, 1),
(10, 'Tài liệu ôn thi', 'tai-lieu-on-thi', 1, 0, '2', '2021-06-03 22:19:53', '1', '2022-03-01 20:23:35', '1', 1, 1),
(11, 'Truyện Drama', 'truyen-drama', 2, 4, '1', '2021-06-03 22:37:59', '1', '2022-03-01 20:22:33', '1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_config`
--

CREATE TABLE `db_config` (
  `id` int(11) NOT NULL,
  `mail_smtp` varchar(68) CHARACTER SET utf8 NOT NULL,
  `mail_smtp_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Password mail shop',
  `mail_noreply` varchar(68) CHARACTER SET utf8 NOT NULL,
  `priceShip` mediumtext CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_config`
--

INSERT INTO `db_config` (`id`, `mail_smtp`, `mail_smtp_password`, `mail_noreply`, `priceShip`, `title`, `description`) VALUES
(1, 'bookshop@gmail.com', '123456', 'book.shop@gmail.com', '35000', 'Website BOOKSHOP', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_contact`
--

CREATE TABLE `db_contact` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `trash` int(11) NOT NULL DEFAULT 1,
  `fullname` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_contact`
--

INSERT INTO `db_contact` (`id`, `title`, `phone`, `email`, `content`, `created_at`, `status`, `trash`, `fullname`) VALUES
(1, 'Đánh giá', '09776558763', 'ngocanh@gmail.com', 'Giao hàng nhanh và đóng gói sản phẩm đẹp', '2022/02/1', 0, 0, 'Ngoc Anh'),
(2, 'Góp ý', '09866678783', 'baoan@gmail.com', 'Đã nhận hàng và rất ưng sản phẩm', '2022/03/1', 1, 1, 'Bao An');

-- --------------------------------------------------------

--
-- Table structure for table `db_content`
--

CREATE TABLE `db_content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `introtext` mediumtext CHARACTER SET utf8 NOT NULL,
  `fulltext` mediumtext CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_content`
--

INSERT INTO `db_content` (`id`, `title`, `alias`, `introtext`, `fulltext`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(1, 'Tác giả của hơn 700 bìa sách', 'tac-gia-cua-hon-700-bia-sach', 'Tìm ý tưởng, thực hiện từng chi tiết nhỏ, có tầm nhìn xa là những điều mà Tạ Quốc Kỳ Nam hướng đến khi thiết kế bìa sách.', '<p>Tạ Quốc Kỳ Nam l&agrave; t&aacute;c giả của hơn 700 b&igrave;a s&aacute;ch nhiều thể loại. B&igrave;a s&aacute;ch của anh g&oacute;p phần lưu dấu ấn t&aacute;c phẩm trong l&ograve;ng bạn đọc. H&agrave;nh tr&igrave;nh trở th&agrave;nh người thiết kế b&igrave;a, những c&acirc;u chuyện hậu trường của người s&aacute;ng tạo b&igrave;a s&aacute;ch được anh kể khi tham gia chương tr&igrave;nh &ldquo;C&acirc;u chuyện xuất bản&rdquo;.</p>\r\n\r\n<p>Họa sĩ thiết kế b&igrave;a s&aacute;ch Tạ Quốc Kỳ Nam. Ảnh: FBNV.</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Thiet ke bia sach anh 1\" src=\"https://znews-photo.zadn.vn/w860/Uploaded/oplukaa/2022_02_27/thumb_Ky_Nam.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Họa sĩ thiết kế b&igrave;a s&aacute;ch Tạ Quốc Kỳ Nam. Ảnh:&nbsp;<em>FBNV</em>.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3>B&igrave;a s&aacute;ch phải thể hiện r&otilde; mục đ&iacute;ch xuất bản</h3>\r\n\r\n<p>Tạ Quốc Kỳ Nam được giới trẻ biết đến khi tạo trend &ldquo;hoy đi nha&rdquo;, một người s&aacute;ng tạo nội dung với gần 100.000 người theo d&otilde;i tr&ecirc;n mạng x&atilde; hội, ghi dấu ấn trong vai tr&ograve; thiết kế h&agrave;ng trăm b&igrave;a s&aacute;ch. Con đường trở th&agrave;nh người thiết kế b&igrave;a đến với anh một c&aacute;ch t&igrave;nh cờ.</p>\r\n\r\n<p>C&aacute;ch đ&acirc;y 11 năm, Nam đọc được d&ograve;ng tin tuyển dụng nh&acirc;n viết thiết kế b&igrave;a s&aacute;ch. L&uacute;c đ&oacute;, anh đang học b&aacute;o ch&iacute; - truyền th&ocirc;ng, kh&ocirc;ng c&oacute; chuy&ecirc;n m&ocirc;n thiết kế. Chỉ với sở th&iacute;ch đọc s&aacute;ch, ch&agrave;ng trai 9X muốn thử c&ocirc;ng việc n&agrave;y.</p>\r\n\r\n<p>Vượt qua b&agrave;i kiểm tra, anh được l&agrave;m b&igrave;a hai cuốn&nbsp;<em>Đo thế giới</em>,&nbsp;<em>Xứ c&aacute;t&nbsp;</em>v&agrave; được nhận v&agrave;o c&ocirc;ng ty s&aacute;ch. &ldquo;T&ocirc;i kh&ocirc;ng ngờ c&ocirc;ng việc ấy mang lại nhiều niềm vui, gi&uacute;p bản th&acirc;n hạnh ph&uacute;c, l&agrave; một trong những thứ khiến m&igrave;nh được nhiều bạn biết đến&rdquo;, Nam chia sẻ.</p>\r\n\r\n<p>Khi bắt tay v&agrave;o l&agrave;m b&igrave;a s&aacute;ch, việc đầu ti&ecirc;n anh t&igrave;m hiểu l&agrave; b&igrave;a s&aacute;ch gốc đ&atilde; được nước ngo&agrave;i thiết kế như thế n&agrave;o. Dựa theo đ&oacute;, người thiết kế biết được về nội dung, tầm quan trọng của t&aacute;c phẩm, đối tượng kh&aacute;n giả&hellip; để c&oacute; hướng đi ph&ugrave; hợp.</p>\r\n\r\n<p>B&igrave;a s&aacute;ch của Tạ Quốc Kỳ Nam kh&ocirc;ng giống của nh&agrave; xuất bản nước ngo&agrave;i hay phi&ecirc;n bản b&igrave;a s&aacute;ch gốc. Nhưng bước t&igrave;m hiểu đ&oacute; rất quan trọng khi người thiết kế kh&ocirc;ng đủ thời gian để đọc hết về cuốn s&aacute;ch m&igrave;nh l&agrave;m b&igrave;a. Đ&atilde; l&agrave; c&ocirc;ng việc, người thiết kế phải t&igrave;m hiểu để l&agrave;m sao b&igrave;a trở về gần nhất với nội dung cuốn s&aacute;ch, đ&uacute;ng với mục đ&iacute;ch xuất bản, tất cả phải nhờ v&agrave;o nghi&ecirc;n cứu t&aacute;c phẩm.</p>\r\n\r\n<p>Với nhiều người thiết kế b&igrave;a s&aacute;ch, vẽ l&agrave; một thế mạnh. Nhưng với Tạ Quốc Kỳ Nam, vẽ đ&oacute;ng g&oacute;p 10-20% dung lượng c&ocirc;ng việc. Tự nhận vẽ tranh b&igrave;a kh&ocirc;ng phải điểm mạnh, anh tự nhủ muốn đi đường d&agrave;i, buộc phải c&oacute; tư duy thiết kế tốt. Những kỹ năng như chọn font chữ, sắp đặt, bố cục&hellip; được anh chăm ch&uacute;t, đ&agrave;o s&acirc;u.</p>\r\n\r\n<p>Bộ s&aacute;ch anh ưng &yacute; nhất trong năm 2021 l&agrave; những cuốn của t&aacute;c giả Nguyễn Thị Ho&agrave;ng. Anh kết hợp họa sĩ Hương Anh để l&agrave;m b&igrave;a, b&agrave;n bạc kỹ từ tranh vẽ cho tới kiểu chữ, m&agrave;u chữ, g&aacute;y s&aacute;ch, b&igrave;a bốn&hellip; sao cho ph&ugrave; hợp thể loại, t&aacute;c phẩm.</p>\r\n\r\n<p>Khi l&agrave;m b&igrave;a cho một t&aacute;c giả, cần &ldquo;nghĩ xa xa&rdquo; rằng nếu t&aacute;c giả ấy ra cuốn kh&aacute;c th&igrave; n&ecirc;n ph&aacute;t triển b&igrave;a s&aacute;ch như n&agrave;o cho thống nhất với cuốn trước. Do đ&oacute;, bạn đọc c&oacute; thể dễ d&agrave;ng nhận diện những điểm chung trong c&aacute;c cuốn s&aacute;ch của Alain de Botton, Milan Kundera&hellip;</p>\r\n\r\n<p>C&oacute; những bộ s&aacute;ch, người l&agrave;m b&igrave;a biết nếu thực hiện sẽ mất cả qu&atilde;ng thời gian d&agrave;i. V&iacute; dụ, khi l&agrave;m cuốn&nbsp;<em>Sử k&yacute;</em>&nbsp;tập một, c&ocirc;ng ty s&aacute;ch n&oacute;i việc ra trọn bộ t&aacute;c phẩm c&oacute; thể mất 10 năm do qu&aacute; tr&igrave;nh dịch bộ s&aacute;ch k&eacute;o d&agrave;i. Từ đ&oacute;, Tạ Quốc Kỳ Nam c&oacute; sự chuẩn bị trước n&ecirc;n đến giớ,&nbsp;<em>Sử k&yacute;</em>&nbsp;c&oacute; th&ecirc;m c&aacute;c tập tiếp theo, b&igrave;a cuốn tập một kh&ocirc;ng bị lỗi thời, c&aacute;c tập sau c&oacute; thể tận dụng lại, ph&aacute;t triển th&ecirc;m những &yacute; tưởng từ tập đầu.</p>\r\n\r\n<p>&ldquo;C&oacute; những bộ s&aacute;ch nếu khi l&agrave;m b&igrave;a m&agrave; chạy theo trend, th&igrave; v&agrave;i năm sau sẽ kh&ocirc;ng c&ograve;n ph&ugrave; hợp nữa&rdquo;, Tạ Quốc Kỳ Nam n&oacute;i.</p>\r\n\r\n<p>D&ugrave; nh&igrave;n trước, vẫn c&oacute; những việc xảy ra ngo&agrave;i dự t&iacute;nh của người l&agrave;m b&igrave;a. Khi l&agrave;m b&igrave;a bộ&nbsp;<em>Emily</em>, người thiết kế kh&ocirc;ng ngờ tập ba mỏng hơn nhiều so với 2 tập trước. V&igrave; thế, phần g&aacute;y của s&aacute;ch chưa được như kỳ vọng.</p>\r\n\r\n<p>&ldquo;Những lần như vậy, t&ocirc;i chỉ mong s&aacute;ch b&aacute;n hết thật nhanh để được t&aacute;i bản. T&ocirc;i sẽ chỉnh sửa lại cho đẹp hơn&rdquo;, họa sĩ thiết kế n&oacute;i.</p>\r\n\r\n<p>Một số b&igrave;a s&aacute;ch do Tạ Quốc Kỳ Nam thiết kế. Ảnh: NN.</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"Thiet ke bia sach anh 2\" src=\"https://znews-photo.zadn.vn/w860/Uploaded/oplukaa/2022_02_27/Ky_Nam_.jpg\" /></p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Một số b&igrave;a s&aacute;ch do Tạ Quốc Kỳ Nam thiết kế. Ảnh:&nbsp;<em>NN</em>.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3>Chỉn chu từng chi tiết</h3>\r\n\r\n<p>Tự nhận m&igrave;nh kh&ocirc;ng phải người l&agrave;m việc tập trung v&agrave; kỷ luật, b&ugrave; lại, Tạ Quốc Kỳ Nam c&oacute; tr&aacute;ch nhiệm, lu&ocirc;n cố gắng ho&agrave;n th&agrave;nh c&ocirc;ng việc được giao để sản phẩm chỉn chu nhất c&oacute; thể.</p>\r\n\r\n<p>Nhiều người nghĩ với c&ocirc;ng việc thiết kế, b&igrave;a của s&aacute;ch l&agrave; quan trọng nhất, tạo ấn tượng với người mua v&agrave; độc giả. Nhưng với người thiết kế, mọi chi tiết đều phải l&agrave;m tốt nhất c&oacute; thể. Khi độc giả mua s&aacute;ch về, họ xếp l&ecirc;n gi&aacute;, b&igrave;a của s&aacute;ch sẽ kh&ocirc;ng được nh&igrave;n thấy nữa. L&uacute;c n&agrave;y, g&aacute;y s&aacute;ch l&agrave; phần quan trọng, được nh&igrave;n thấy nhiều nhất.</p>\r\n\r\n<p>G&aacute;y s&aacute;ch cũng l&agrave; một phần của b&igrave;a, li&ecirc;n kết giữa b&igrave;a một với b&igrave;a 4. &ldquo;Kh&ocirc;ng ai trả tiền cho thiết kế để l&agrave;m một c&aacute;i g&aacute;y đẹp, nhưng người l&agrave;m sẽ rất vui khi tạo ra một chiếc g&aacute;y đẹp, hai m&eacute;p gấp h&agrave;i h&ograve;a với nhau. Đ&oacute; l&agrave; y&ecirc;u cầu ri&ecirc;ng của bản th&acirc;n t&ocirc;i&rdquo;, Nam n&oacute;i.</p>\r\n\r\n<p>Trong 11 năm l&agrave;m s&aacute;ch, b&igrave;a m&agrave; anh t&acirc;m đắc nhất l&agrave; cuốn&nbsp;<em>M&aacute;u lạnh</em>, đ&acirc;y l&agrave; thiết kế kh&ocirc;ng c&oacute; t&ecirc;n s&aacute;ch tr&ecirc;n b&igrave;a (cũng l&agrave; thiết kế cuối c&ugrave;ng s&aacute;ch được xuất bản m&agrave; kh&ocirc;ng c&oacute; t&ecirc;n tr&ecirc;n b&igrave;a).</p>\r\n\r\n<p>Thiết kế b&igrave;a cho t&aacute;c phẩm của Truman Capote thể hiện đ&uacute;ng tinh thần của Nam: Muốn l&agrave;m điều g&igrave; đ&oacute; kh&aacute;c, ấn tượng hơn. B&ecirc;n cạnh đ&oacute;, anh cũng h&agrave;i l&ograve;ng với b&igrave;a của&nbsp;<em>S&aacute;u người đi khắp thế gian</em>,&nbsp;<em>Xứ c&aacute;t, 1Q84</em>, bộ b&igrave;a s&aacute;ch của Alain de Botton, một số b&igrave;a trong bộ Milan Kundera&hellip;.</p>\r\n\r\n<p>L&agrave; người đến với thiết kế b&igrave;a khi chưa được đ&agrave;o tạo căn cơ về nghề, Tạ Quốc Kỳ Nam trưởng th&agrave;nh với c&ocirc;ng việc từ sự y&ecirc;u th&iacute;ch v&agrave; tự học. Anh học chủ yếu qua mạng v&agrave; sự quan s&aacute;t. Cứ cầm s&aacute;ch, b&aacute;o l&ecirc;n l&agrave; anh &quot;săm soi&quot;, thấy g&igrave; kh&ocirc;ng hiểu th&igrave; hỏi. Khi đi t&igrave;m c&acirc;u trả lời cho những c&acirc;u hỏi đ&oacute; ch&iacute;nh l&agrave; qu&aacute; tr&igrave;nh họa sĩ thiết kế học hỏi.</p>\r\n\r\n<p>&ldquo;T&ocirc;i lu&ocirc;n cảm thấy m&igrave;nh may mắn với c&ocirc;ng việc thiết kế b&igrave;a s&aacute;ch. Nhưng t&ocirc;i khẳng định kh&ocirc;ng ai gắn b&oacute; l&acirc;u với một việc g&igrave; đ&oacute; m&agrave; kh&ocirc;ng trải qua nước mắt, thất bại&rdquo;, Tạ Quốc Kỳ Nam n&oacute;i. Với anh, để l&agrave;m tốt bất cứ c&ocirc;ng việc n&agrave;o, sự tự học v&agrave; t&acirc;m huyết quyết định rất lớn.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'thumb_Ky_Nam1.jpg', '2021-05-26 23:18:02', '1', '2022-03-02 06:55:51', '1', 1, 1),
(2, 'Giáo dục trẻ theo phương pháp của người Nhật', 'giao-duc-tre-theo-phuong-phap-cua-nguoi-nhat', '', '<p>Bộ s&aacute;ch kỹ năng của Nhật Bản l&agrave; người bạn đồng h&agrave;nh c&ugrave;ng phụ huynh tr&ecirc;n h&agrave;nh tr&igrave;nh r&egrave;n luyện cho con khả năng tự lập, ứng xử trước c&aacute;c vấn đề xảy ra trong cuộc sống.</p>\r\n\r\n<p>Bộ s&aacute;ch&nbsp;<em>Kỹ năng sống mỗi ng&agrave;y - Tuyển tập giải đ&aacute;p những t&igrave;nh huống SOS của b&eacute;&nbsp;</em>nằm trong dự &aacute;n &ldquo;Tủ s&aacute;ch gi&aacute;o dục&rdquo; của Gakken - tập đo&agrave;n xuất bản gi&aacute;o dục tại Nhật Bản.</p>\r\n\r\n<p>Từ tr&aacute;i qua: Dịch giả L&ecirc; Thị Ngọc Tuyền v&agrave; b&agrave; Nguyễn Thi&ecirc;n Kim - Chủ nhiệm C&acirc;u lạc bộ Totoro - chia sẻ tại sự kiện. Ảnh: BTC.</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Phuong phap giao duc Nhat Ban anh 1\" src=\"https://znews-photo.zadn.vn/w1200/Uploaded/mzjyy/2022_02_28/dich_gia_Tuyen.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Từ tr&aacute;i qua: Dịch giả L&ecirc; Thị Ngọc Tuyền v&agrave; b&agrave; Nguyễn Thi&ecirc;n Kim - Chủ nhiệm C&acirc;u lạc bộ Totoro - chia sẻ tại sự kiện. Ảnh:&nbsp;<em>BTC</em>.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3>&Aacute;p dụng phương ph&aacute;p gi&aacute;o dục Nhật Bản</h3>\r\n\r\n<p>Dịch giả L&ecirc; Thị Ngọc Tuyền c&oacute; 18 năm sinh sống, học tập v&agrave; l&agrave;m việc tại Nhật Bản. B&agrave; nhận thấy những điểm ưu việt trong nền gi&aacute;o dục n&agrave;y v&agrave; mong muốn trẻ em n&oacute;i ri&ecirc;ng, người Việt Nam n&oacute;i chung được tiếp cận kiến thức, phương ph&aacute;p gi&aacute;o dục của Nhật Bản.</p>\r\n\r\n<p>Sau th&agrave;nh c&ocirc;ng từ&nbsp;<em>Bộ s&aacute;ch gi&aacute;o dục nhi đồng Nhật Bản</em>, dịch giả Ngọc Tuyền tiếp tục chọn lựa bộ s&aacute;ch thứ hai&nbsp;<em>Kỹ năng sống mỗi ng&agrave;y - Tuyển tập giải đ&aacute;p những t&igrave;nh huống SOS của b&eacute;</em>.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; cẩm nang gồm 4 cuốn, được chia th&agrave;nh 4 nh&oacute;m chủ đề: Bạn b&egrave; - Gia đ&igrave;nh - C&aacute;c mối quan hệ; Học tập - Tương lai - R&egrave;n luyện; Gia đ&igrave;nh - Trường học - X&atilde; hội v&agrave; Bản th&acirc;n - Sinh mệnh - Hạnh ph&uacute;c.</p>\r\n\r\n<p>Dịch giả L&ecirc; Thị Ngọc Tuyền chia sẻ: &ldquo;C&aacute;ch đ&acirc;y 8 năm, c&oacute; em b&eacute; đầu ti&ecirc;n, t&ocirc;i bắt đầu t&igrave;m hiểu s&acirc;u hơn về t&agrave;i liệu, gi&aacute;o tr&igrave;nh dạy con v&agrave; nhận thấy tất cả s&aacute;ch dạy trẻ em ở Nhật Bản rất hữu &iacute;ch. Từ đ&oacute;, t&ocirc;i nảy ra &yacute; định dịch v&agrave; đem những cuốn s&aacute;ch đ&oacute; về Việt Nam với mong muốn gi&uacute;p trẻ em trong nước cũng được hưởng nền gi&aacute;o dục ti&ecirc;n tiến như vậy&rdquo;.</p>\r\n\r\n<p>Hiện, b&agrave; Ngọc Tuyền l&agrave; mẹ của hai con nhỏ. B&agrave; hiểu t&acirc;m l&yacute; c&aacute;c bậc phụ huynh đều muốn d&agrave;nh những phương ph&aacute;p, sản phẩm gi&aacute;o dục tốt nhất cho con em m&igrave;nh. Ch&iacute;nh v&igrave; vậy, sau khi t&igrave;m hiểu Tập đo&agrave;n Gakken v&agrave; c&aacute;c xuất bản phẩm của họ, b&agrave; quyết t&acirc;m kết nối, đưa bộ s&aacute;ch kỹ năng về Việt Nam.</p>\r\n\r\n<p>Bộ s&aacute;ch Kỹ năng sống mỗi ng&agrave;y - Tuyển tập giải đ&aacute;p những t&igrave;nh huống SOS của b&eacute; gồm 4 cuốn. Ảnh: BTC.</p>\r\n\r\n<p><img alt=\"Phuong phap giao duc Nhat Ban anh 2\" src=\"https://znews-photo.zadn.vn/w1200/Uploaded/mzjyy/2022_02_28/ky_nang_tre.jpg\" /></p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Bộ s&aacute;ch&nbsp;<em>Kỹ năng sống mỗi ng&agrave;y - Tuyển tập giải đ&aacute;p những t&igrave;nh huống SOS của b&eacute;&nbsp;</em>gồm 4 cuốn. Ảnh:&nbsp;<em>BTC.</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3>Gi&uacute;p trẻ xử l&yacute; t&igrave;nh huống thường gặp</h3>\r\n\r\n<p>Bộ s&aacute;ch kỹ năng n&agrave;y hướng đến trẻ trong độ tuổi tiểu học, gi&uacute;p cha mẹ v&agrave; c&aacute;c b&eacute; xử l&yacute; được tất cả t&igrave;nh huống h&agrave;ng ng&agrave;y trong trường học, đời sống v&agrave; c&aacute;c mối quan hệ bạn b&egrave;.</p>\r\n\r\n<p>Th&ocirc;ng qua h&igrave;nh thức truyện tranh in m&agrave;u tạo sự gần gũi v&agrave; cuốn h&uacute;t, bộ s&aacute;ch tổng hợp những &ldquo;t&igrave;nh huống SOS&rdquo; trong cuộc sống m&agrave; trẻ thường gặp. Qua đ&oacute;, s&aacute;ch gi&uacute;p phụ huynh nhận biết việc l&agrave;m thế n&agrave;o để dễ d&agrave;ng tiếp cận t&acirc;m l&yacute;, gợi mở t&acirc;m sự của trẻ, cũng như để cha mẹ thấu hiểu những vấn đề m&agrave; con trẻ phải đối mặt.</p>\r\n\r\n<p>Cũng trong buổi giao lưu, b&agrave; Nguyễn Thi&ecirc;n Kim - Chủ nhiệm C&acirc;u lạc bộ Totoro (c&acirc;u lạc bộ kết nối kỹ năng Việt - Nhật) - th&ocirc;ng tin bộ ấn phẩm n&oacute;i về c&aacute;ch xử l&yacute; t&igrave;nh huống trong c&aacute;c gia đ&igrave;nh c&oacute; con nhỏ. Từ những c&acirc;u chuyện kh&aacute;c nhau trong s&aacute;ch, độc giả c&oacute; thể suy ra t&igrave;nh huống thực tế của gia đ&igrave;nh m&igrave;nh v&agrave; dễ d&agrave;ng t&igrave;m hướng giải quyết.</p>\r\n\r\n<p>Theo b&agrave; Thi&ecirc;n Kim, nu&ocirc;i con l&agrave; bản năng, dạy con l&agrave; nghệ thuật. Với 4 cuốn s&aacute;ch n&agrave;y, phụ huynh sẽ nh&igrave;n r&otilde; ưu, khuyết điểm của trẻ v&agrave; nhẹ nh&agrave;ng th&aacute;o gỡ những kh&uacute;c mắc cho ch&uacute;ng m&agrave; kh&ocirc;ng cần đi theo khu&ocirc;n mẫu n&agrave;o cả.</p>\r\n\r\n<p>Ở mỗi vấn đề, s&aacute;ch đều chỉ ra cả hai mặt lợi v&agrave; bất lợi để c&ugrave;ng đ&aacute;nh gi&aacute; một c&aacute;ch kh&aacute;ch quan. Điều n&agrave;y gi&uacute;p trẻ h&igrave;nh th&agrave;nh tư duy v&agrave; kỹ năng ph&acirc;n t&iacute;ch. Đ&acirc;y cũng l&agrave; một kỹ năng quan trọng trong qu&aacute; tr&igrave;nh ph&aacute;t triển nh&acirc;n c&aacute;ch của trẻ.</p>\r\n\r\n<p>Dịch giả L&ecirc; Thị Ngọc Tuyền cho rằng bộ s&aacute;ch kh&ocirc;ng chỉ d&agrave;nh cho độc giả nhỏ tuổi m&agrave; c&ograve;n rất hữu &iacute;ch cho phụ huynh. Cha mẹ khi đọc sẽ nh&igrave;n nhận lại bản th&acirc;n để cư xử đ&uacute;ng mực, ph&ugrave; hợp hơn với con.</p>\r\n\r\n<p>&ldquo;Người Nhật sống nghi&ecirc;m khắc, trẻ em Nhật cũng được đ&agrave;o tạo một c&aacute;ch b&agrave;i bản, c&oacute; kỷ luật v&igrave; cha mẹ đ&atilde; r&egrave;n luyện con từ nhỏ. Điều quan trọng l&agrave; phải biết định hướng, lựa chọn phương ph&aacute;p gi&aacute;o dục, d&agrave;nh nhiều thời gian cho con v&agrave; c&ugrave;ng c&aacute;c b&eacute; đi qua những cột mốc, giai đoạn quan trọng trong việc h&igrave;nh th&agrave;nh c&aacute; t&iacute;nh, lối ứng xử&rdquo;, b&agrave; Ngọc Tuyền n&oacute;i th&ecirc;m.</p>\r\n\r\n<p>Với ng&ocirc;n ngữ dễ đọc, dễ hiểu, lời thoại h&oacute;m hỉnh v&agrave; phần tranh minh họa dễ thương, bộ s&aacute;ch mang đến cho độc giả nh&iacute; nhiều b&agrave;i học bổ &iacute;ch th&ocirc;ng qua những c&acirc;u tr&iacute;ch ca dao, tục ngữ, th&agrave;nh ngữ của thầy hiệu trưởng Panda v&agrave; h&agrave;ng loạt vấn đề của học sinh trường Tiểu học Animaru (Nhật Bản). B&ecirc;n cạnh đ&oacute;, trẻ c&ograve;n được r&egrave;n luyện khả năng s&aacute;ng tạo, tập trung v&agrave; tr&iacute; tưởng tượng.</p>\r\n\r\n<p><em>Kỹ năng sống mỗi ng&agrave;y - Tuyển tập giải đ&aacute;p những t&igrave;nh huống SOS của b&eacute;</em>&nbsp;sẽ đồng h&agrave;nh c&ugrave;ng phụ huynh tr&ecirc;n h&agrave;nh tr&igrave;nh r&egrave;n luyện cho con khả năng tự lập trong suy nghĩ v&agrave; ứng xử, tạo động lực, dẫn dắt con trẻ biết c&aacute;ch ứng ph&oacute; với c&aacute;c vấn đề xảy ra trong cuộc sống bằng c&aacute;ch nhẹ nh&agrave;ng v&agrave; kh&eacute;o l&eacute;o.</p>\r\n', 'sach_nhi_dong_NB_2_1.jpg', '2021-06-26 17:22:04', '1', '2022-03-02 06:52:38', '1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_customer`
--

CREATE TABLE `db_customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(13) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_customer`
--

INSERT INTO `db_customer` (`id`, `fullname`, `username`, `password`, `address`, `phone`, `email`, `created`, `trash`, `status`) VALUES
(1, 'Minh Anh', 'anhminh.dsn', 'e10adc3949ba59abbe56e057f20f883e', '', '0981643651', '', '2021-05-24 22:10:08', 0, 1),
(2, 'Trần Anh', 'anhanh', 'e10adc3949ba59abbe56e057f20f883e', '', '090932323', '', '2021-06-11 17:15:12', 0, 1),
(3, 'Jethro', '', '', '', '052244141', '', '2021-06-16 23:19:45', 0, 1),
(4, 'Quynh Như', '', '', '', '0908030405', '', '2021-06-22 23:11:42', 0, 1),
(5, 'Anh Minh', '', '', '', '090305146', '', '2021-06-22 23:16:45', 0, 1),
(6, 'Huyền lê', '', '', '', '090640316', '', '2021-06-25 22:52:27', 0, 1),
(7, 'Design', '', '', '', '0913164136', '', '2021-06-25 22:58:22', 0, 1),
(8, 'Develop', '', '', '', '096323646', '', '2021-06-25 23:09:57', 0, 1),
(9, 'Diego', '', '', '', '0357646765', '', '2021-06-26 13:17:30', 0, 1),
(10, 'K.M', '', '', '', '0903121564', '', '2021-06-28 15:57:50', 0, 1),
(11, 'V.Anh', '', '', '', '033564616', '', '2021-06-28 22:17:44', 0, 1),
(12, 'Anh Anh', '', '', '', '03056451', '', '2021-06-29 15:02:46', 0, 1),
(13, 'Hoàng Anh', '', '', '', '0305464844', '', '2021-06-29 15:09:06', 0, 1),
(14, 'Bích', '', '', '', '032133234', '', '2021-07-05 23:01:51', 0, 1),
(15, 'Clone', 'clone1', 'e10adc3949ba59abbe56e057f20f883e', '', '0306444854', '', '2021-07-06 00:00:00', 0, 1),
(16, 'Minh Anh', 'minhanh.nvd', '248d72f177f20c9d2167693e55de5e2d', '', '0983103187', 'minhanh.nvd@gmail.com', '2021-11-30 00:00:00', 0, 1),
(17, 'Hoàng Anh', 'hoanganh15112007', '25f9e794323b453885f5181f1b624d0b', '', '0982303758', 'anhhoang15112007@gmail.com', '2021-12-01 00:00:00', 0, 1),
(18, 'Ngo Minh', 'minhanh2001', '09aed5790a7b696d0902c277eb2dd494', '', '0983103186', 'ngonguyenkminh@gmail.com', '2021-12-07 00:00:00', 0, 1),
(19, 'háhdhasdsadasd', 'tester2021', '6d87cfa7d7423f4accc8d9a70b7816f1', '', '0932323534', 'saddssd@gmail.com', '2021-12-08 00:00:00', 0, 1),
(20, 'Linh Anh', '', '', '', '09835758443', '', '2022-03-02 10:13:46', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_discount`
--

CREATE TABLE `db_discount` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã giảm giá',
  `discount` int(11) NOT NULL COMMENT 'Số tiền',
  `limit_number` int(11) NOT NULL COMMENT 'giới hạn lượt mua',
  `number_used` int(11) NOT NULL COMMENT 'Số lượng đã nhập',
  `expiration_date` date NOT NULL COMMENT 'Ngày hết hạn',
  `payment_limit` int(11) NOT NULL COMMENT 'giới hạn đơn hàng tối thiểu',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mô tả',
  `created` date NOT NULL,
  `orders` int(11) NOT NULL,
  `trash` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_discount`
--

INSERT INTO `db_discount` (`id`, `code`, `discount`, `limit_number`, `number_used`, `expiration_date`, `payment_limit`, `description`, `created`, `orders`, `trash`, `status`) VALUES
(1, 'BOOKSHOP', 500000, 5000, 1, '2022-12-30', 1, 'Voucher tặng', '2021-12-07', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_district`
--

CREATE TABLE `db_district` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `provinceid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_district`
--

INSERT INTO `db_district` (`id`, `name`, `type`, `provinceid`) VALUES
(1, 'Quận Ba Đình', 'Quận', 1),
(2, 'Quận Hoàn Kiếm', 'Quận', 1),
(3, 'Quận Tây Hồ', 'Quận', 1),
(4, 'Quận Long Biên', 'Quận', 1),
(5, 'Quận Cầu Giấy', 'Quận', 1),
(6, 'Quận Đống Đa', 'Quận', 1),
(7, 'Quận Hai Bà Trưng', 'Quận', 1),
(8, 'Quận Hoàng Mai', 'Quận', 1),
(9, 'Quận Thanh Xuân', 'Quận', 1),
(10, 'Huyện Sóc Sơn', 'Huyện', 1),
(11, 'Huyện Đông Anh', 'Huyện', 1),
(18, 'Huyện Gia Lâm', 'Huyện', 1),
(19, 'Quận Nam Từ Liêm', 'Quận', 1),
(20, 'Huyện Thanh Trì', 'Huyện', 1),
(21, 'Quận Bắc Từ Liêm', 'Quận', 1),
(24, 'Thành phố Hà Giang', 'Thành phố', 2),
(26, 'Huyện Đồng Văn', 'Huyện', 2),
(27, 'Huyện Mèo Vạc', 'Huyện', 2),
(28, 'Huyện Yên Minh', 'Huyện', 2),
(29, 'Huyện Quản Bạ', 'Huyện', 2),
(30, 'Huyện Vị Xuyên', 'Huyện', 2),
(31, 'Huyện Bắc Mê', 'Huyện', 2),
(32, 'Huyện Hoàng Su Phì', 'Huyện', 2),
(33, 'Huyện Xín Mần', 'Huyện', 2),
(34, 'Huyện Bắc Quang', 'Huyện', 2),
(35, 'Huyện Quang Bình', 'Huyện', 2),
(40, 'Thành phố Cao Bằng', 'Thành phố', 4),
(42, 'Huyện Bảo Lâm', 'Huyện', 4),
(43, 'Huyện Bảo Lạc', 'Huyện', 4),
(44, 'Huyện Thông Nông', 'Huyện', 4),
(45, 'Huyện Hà Quảng', 'Huyện', 4),
(46, 'Huyện Trà Lĩnh', 'Huyện', 4),
(47, 'Huyện Trùng Khánh', 'Huyện', 4),
(48, 'Huyện Hạ Lang', 'Huyện', 4),
(49, 'Huyện Quảng Uyên', 'Huyện', 4),
(50, 'Huyện Phục Hoà', 'Huyện', 4),
(51, 'Huyện Hoà An', 'Huyện', 4),
(52, 'Huyện Nguyên Bình', 'Huyện', 4),
(53, 'Huyện Thạch An', 'Huyện', 4),
(58, 'Thành Phố Bắc Kạn', 'Thành phố', 6),
(60, 'Huyện Pác Nặm', 'Huyện', 6),
(61, 'Huyện Ba Bể', 'Huyện', 6),
(62, 'Huyện Ngân Sơn', 'Huyện', 6),
(63, 'Huyện Bạch Thông', 'Huyện', 6),
(64, 'Huyện Chợ Đồn', 'Huyện', 6),
(65, 'Huyện Chợ Mới', 'Huyện', 6),
(66, 'Huyện Na Rì', 'Huyện', 6),
(70, 'Thành phố Tuyên Quang', 'Thành phố', 8),
(71, 'Huyện Lâm Bình', 'Huyện', 8),
(72, 'Huyện Nà Hang', 'Huyện', 8),
(73, 'Huyện Chiêm Hóa', 'Huyện', 8),
(74, 'Huyện Hàm Yên', 'Huyện', 8),
(75, 'Huyện Yên Sơn', 'Huyện', 8),
(76, 'Huyện Sơn Dương', 'Huyện', 8),
(80, 'Thành phố Lào Cai', 'Thành phố', 10),
(82, 'Huyện Bát Xát', 'Huyện', 10),
(83, 'Huyện Mường Khương', 'Huyện', 10),
(84, 'Huyện Si Ma Cai', 'Huyện', 10),
(85, 'Huyện Bắc Hà', 'Huyện', 10),
(86, 'Huyện Bảo Thắng', 'Huyện', 10),
(87, 'Huyện Bảo Yên', 'Huyện', 10),
(88, 'Huyện Sa Pa', 'Huyện', 10),
(89, 'Huyện Văn Bàn', 'Huyện', 10),
(94, 'Thành phố Điện Biên Phủ', 'Thành phố', 11),
(95, 'Thị Xã Mường Lay', 'Thị xã', 11),
(96, 'Huyện Mường Nhé', 'Huyện', 11),
(97, 'Huyện Mường Chà', 'Huyện', 11),
(98, 'Huyện Tủa Chùa', 'Huyện', 11),
(99, 'Huyện Tuần Giáo', 'Huyện', 11),
(100, 'Huyện Điện Biên', 'Huyện', 11),
(101, 'Huyện Điện Biên Đông', 'Huyện', 11),
(102, 'Huyện Mường Ảng', 'Huyện', 11),
(103, 'Huyện Nậm Pồ', 'Huyện', 11),
(105, 'Thành phố Lai Châu', 'Thành phố', 12),
(106, 'Huyện Tam Đường', 'Huyện', 12),
(107, 'Huyện Mường Tè', 'Huyện', 12),
(108, 'Huyện Sìn Hồ', 'Huyện', 12),
(109, 'Huyện Phong Thổ', 'Huyện', 12),
(110, 'Huyện Than Uyên', 'Huyện', 12),
(111, 'Huyện Tân Uyên', 'Huyện', 12),
(112, 'Huyện Nậm Nhùn', 'Huyện', 12),
(116, 'Thành phố Sơn La', 'Thành phố', 14),
(118, 'Huyện Quỳnh Nhai', 'Huyện', 14),
(119, 'Huyện Thuận Châu', 'Huyện', 14),
(120, 'Huyện Mường La', 'Huyện', 14),
(121, 'Huyện Bắc Yên', 'Huyện', 14),
(122, 'Huyện Phù Yên', 'Huyện', 14),
(123, 'Huyện Mộc Châu', 'Huyện', 14),
(124, 'Huyện Yên Châu', 'Huyện', 14),
(125, 'Huyện Mai Sơn', 'Huyện', 14),
(126, 'Huyện Sông Mã', 'Huyện', 14),
(127, 'Huyện Sốp Cộp', 'Huyện', 14),
(128, 'Huyện Vân Hồ', 'Huyện', 14),
(132, 'Thành phố Yên Bái', 'Thành phố', 15),
(133, 'Thị xã Nghĩa Lộ', 'Thị xã', 15),
(135, 'Huyện Lục Yên', 'Huyện', 15),
(136, 'Huyện Văn Yên', 'Huyện', 15),
(137, 'Huyện Mù Căng Chải', 'Huyện', 15),
(138, 'Huyện Trấn Yên', 'Huyện', 15),
(139, 'Huyện Trạm Tấu', 'Huyện', 15),
(140, 'Huyện Văn Chấn', 'Huyện', 15),
(141, 'Huyện Yên Bình', 'Huyện', 15),
(148, 'Thành phố Hòa Bình', 'Thành phố', 17),
(150, 'Huyện Đà Bắc', 'Huyện', 17),
(151, 'Huyện Kỳ Sơn', 'Huyện', 17),
(152, 'Huyện Lương Sơn', 'Huyện', 17),
(153, 'Huyện Kim Bôi', 'Huyện', 17),
(154, 'Huyện Cao Phong', 'Huyện', 17),
(155, 'Huyện Tân Lạc', 'Huyện', 17),
(156, 'Huyện Mai Châu', 'Huyện', 17),
(157, 'Huyện Lạc Sơn', 'Huyện', 17),
(158, 'Huyện Yên Thủy', 'Huyện', 17),
(159, 'Huyện Lạc Thủy', 'Huyện', 17),
(164, 'Thành phố Thái Nguyên', 'Thành phố', 19),
(165, 'Thành phố Sông Công', 'Thành phố', 19),
(167, 'Huyện Định Hóa', 'Huyện', 19),
(168, 'Huyện Phú Lương', 'Huyện', 19),
(169, 'Huyện Đồng Hỷ', 'Huyện', 19),
(170, 'Huyện Võ Nhai', 'Huyện', 19),
(171, 'Huyện Đại Từ', 'Huyện', 19),
(172, 'Thị xã Phổ Yên', 'Thị xã', 19),
(173, 'Huyện Phú Bình', 'Huyện', 19),
(178, 'Thành phố Lạng Sơn', 'Thành phố', 20),
(180, 'Huyện Tràng Định', 'Huyện', 20),
(181, 'Huyện Bình Gia', 'Huyện', 20),
(182, 'Huyện Văn Lãng', 'Huyện', 20),
(183, 'Huyện Cao Lộc', 'Huyện', 20),
(184, 'Huyện Văn Quan', 'Huyện', 20),
(185, 'Huyện Bắc Sơn', 'Huyện', 20),
(186, 'Huyện Hữu Lũng', 'Huyện', 20),
(187, 'Huyện Chi Lăng', 'Huyện', 20),
(188, 'Huyện Lộc Bình', 'Huyện', 20),
(189, 'Huyện Đình Lập', 'Huyện', 20),
(193, 'Thành phố Hạ Long', 'Thành phố', 22),
(194, 'Thành phố Móng Cái', 'Thành phố', 22),
(195, 'Thành phố Cẩm Phả', 'Thành phố', 22),
(196, 'Thành phố Uông Bí', 'Thành phố', 22),
(198, 'Huyện Bình Liêu', 'Huyện', 22),
(199, 'Huyện Tiên Yên', 'Huyện', 22),
(200, 'Huyện Đầm Hà', 'Huyện', 22),
(201, 'Huyện Hải Hà', 'Huyện', 22),
(202, 'Huyện Ba Chẽ', 'Huyện', 22),
(203, 'Huyện Vân Đồn', 'Huyện', 22),
(204, 'Huyện Hoành Bồ', 'Huyện', 22),
(205, 'Thị xã Đông Triều', 'Thị xã', 22),
(206, 'Thị xã Quảng Yên', 'Thị xã', 22),
(207, 'Huyện Cô Tô', 'Huyện', 22),
(213, 'Thành phố Bắc Giang', 'Thành phố', 24),
(215, 'Huyện Yên Thế', 'Huyện', 24),
(216, 'Huyện Tân Yên', 'Huyện', 24),
(217, 'Huyện Lạng Giang', 'Huyện', 24),
(218, 'Huyện Lục Nam', 'Huyện', 24),
(219, 'Huyện Lục Ngạn', 'Huyện', 24),
(220, 'Huyện Sơn Động', 'Huyện', 24),
(221, 'Huyện Yên Dũng', 'Huyện', 24),
(222, 'Huyện Việt Yên', 'Huyện', 24),
(223, 'Huyện Hiệp Hòa', 'Huyện', 24),
(227, 'Thành phố Việt Trì', 'Thành phố', 25),
(228, 'Thị xã Phú Thọ', 'Thị xã', 25),
(230, 'Huyện Đoan Hùng', 'Huyện', 25),
(231, 'Huyện Hạ Hoà', 'Huyện', 25),
(232, 'Huyện Thanh Ba', 'Huyện', 25),
(233, 'Huyện Phù Ninh', 'Huyện', 25),
(234, 'Huyện Yên Lập', 'Huyện', 25),
(235, 'Huyện Cẩm Khê', 'Huyện', 25),
(236, 'Huyện Tam Nông', 'Huyện', 25),
(237, 'Huyện Lâm Thao', 'Huyện', 25),
(238, 'Huyện Thanh Sơn', 'Huyện', 25),
(239, 'Huyện Thanh Thuỷ', 'Huyện', 25),
(240, 'Huyện Tân Sơn', 'Huyện', 25),
(243, 'Thành phố Vĩnh Yên', 'Thành phố', 26),
(244, 'Thị xã Phúc Yên', 'Thị xã', 26),
(246, 'Huyện Lập Thạch', 'Huyện', 26),
(247, 'Huyện Tam Dương', 'Huyện', 26),
(248, 'Huyện Tam Đảo', 'Huyện', 26),
(249, 'Huyện Bình Xuyên', 'Huyện', 26),
(250, 'Huyện Mê Linh', 'Huyện', 1),
(251, 'Huyện Yên Lạc', 'Huyện', 26),
(252, 'Huyện Vĩnh Tường', 'Huyện', 26),
(253, 'Huyện Sông Lô', 'Huyện', 26),
(256, 'Thành phố Bắc Ninh', 'Thành phố', 27),
(258, 'Huyện Yên Phong', 'Huyện', 27),
(259, 'Huyện Quế Võ', 'Huyện', 27),
(260, 'Huyện Tiên Du', 'Huyện', 27),
(261, 'Thị xã Từ Sơn', 'Thị xã', 27),
(262, 'Huyện Thuận Thành', 'Huyện', 27),
(263, 'Huyện Gia Bình', 'Huyện', 27),
(264, 'Huyện Lương Tài', 'Huyện', 27),
(268, 'Quận Hà Đông', 'Quận', 1),
(269, 'Thị xã Sơn Tây', 'Thị xã', 1),
(271, 'Huyện Ba Vì', 'Huyện', 1),
(272, 'Huyện Phúc Thọ', 'Huyện', 1),
(273, 'Huyện Đan Phượng', 'Huyện', 1),
(274, 'Huyện Hoài Đức', 'Huyện', 1),
(275, 'Huyện Quốc Oai', 'Huyện', 1),
(276, 'Huyện Thạch Thất', 'Huyện', 1),
(277, 'Huyện Chương Mỹ', 'Huyện', 1),
(278, 'Huyện Thanh Oai', 'Huyện', 1),
(279, 'Huyện Thường Tín', 'Huyện', 1),
(280, 'Huyện Phú Xuyên', 'Huyện', 1),
(281, 'Huyện Ứng Hòa', 'Huyện', 1),
(282, 'Huyện Mỹ Đức', 'Huyện', 1),
(288, 'Thành phố Hải Dương', 'Thành phố', 30),
(290, 'Thị xã Chí Linh', 'Thị xã', 30),
(291, 'Huyện Nam Sách', 'Huyện', 30),
(292, 'Huyện Kinh Môn', 'Huyện', 30),
(293, 'Huyện Kim Thành', 'Huyện', 30),
(294, 'Huyện Thanh Hà', 'Huyện', 30),
(295, 'Huyện Cẩm Giàng', 'Huyện', 30),
(296, 'Huyện Bình Giang', 'Huyện', 30),
(297, 'Huyện Gia Lộc', 'Huyện', 30),
(298, 'Huyện Tứ Kỳ', 'Huyện', 30),
(299, 'Huyện Ninh Giang', 'Huyện', 30),
(300, 'Huyện Thanh Miện', 'Huyện', 30),
(303, 'Quận Hồng Bàng', 'Quận', 31),
(304, 'Quận Ngô Quyền', 'Quận', 31),
(305, 'Quận Lê Chân', 'Quận', 31),
(306, 'Quận Hải An', 'Quận', 31),
(307, 'Quận Kiến An', 'Quận', 31),
(308, 'Quận Đồ Sơn', 'Quận', 31),
(309, 'Quận Dương Kinh', 'Quận', 31),
(311, 'Huyện Thuỷ Nguyên', 'Huyện', 31),
(312, 'Huyện An Dương', 'Huyện', 31),
(313, 'Huyện An Lão', 'Huyện', 31),
(314, 'Huyện Kiến Thuỵ', 'Huyện', 31),
(315, 'Huyện Tiên Lãng', 'Huyện', 31),
(316, 'Huyện Vĩnh Bảo', 'Huyện', 31),
(317, 'Huyện Cát Hải', 'Huyện', 31),
(318, 'Huyện Bạch Long Vĩ', 'Huyện', 31),
(323, 'Thành phố Hưng Yên', 'Thành phố', 33),
(325, 'Huyện Văn Lâm', 'Huyện', 33),
(326, 'Huyện Văn Giang', 'Huyện', 33),
(327, 'Huyện Yên Mỹ', 'Huyện', 33),
(328, 'Huyện Mỹ Hào', 'Huyện', 33),
(329, 'Huyện Ân Thi', 'Huyện', 33),
(330, 'Huyện Khoái Châu', 'Huyện', 33),
(331, 'Huyện Kim Động', 'Huyện', 33),
(332, 'Huyện Tiên Lữ', 'Huyện', 33),
(333, 'Huyện Phù Cừ', 'Huyện', 33),
(336, 'Thành phố Thái Bình', 'Thành phố', 34),
(338, 'Huyện Quỳnh Phụ', 'Huyện', 34),
(339, 'Huyện Hưng Hà', 'Huyện', 34),
(340, 'Huyện Đông Hưng', 'Huyện', 34),
(341, 'Huyện Thái Thụy', 'Huyện', 34),
(342, 'Huyện Tiền Hải', 'Huyện', 34),
(343, 'Huyện Kiến Xương', 'Huyện', 34),
(344, 'Huyện Vũ Thư', 'Huyện', 34),
(347, 'Thành phố Phủ Lý', 'Thành phố', 35),
(349, 'Huyện Duy Tiên', 'Huyện', 35),
(350, 'Huyện Kim Bảng', 'Huyện', 35),
(351, 'Huyện Thanh Liêm', 'Huyện', 35),
(352, 'Huyện Bình Lục', 'Huyện', 35),
(353, 'Huyện Lý Nhân', 'Huyện', 35),
(356, 'Thành phố Nam Định', 'Thành phố', 36),
(358, 'Huyện Mỹ Lộc', 'Huyện', 36),
(359, 'Huyện Vụ Bản', 'Huyện', 36),
(360, 'Huyện Ý Yên', 'Huyện', 36),
(361, 'Huyện Nghĩa Hưng', 'Huyện', 36),
(362, 'Huyện Nam Trực', 'Huyện', 36),
(363, 'Huyện Trực Ninh', 'Huyện', 36),
(364, 'Huyện Xuân Trường', 'Huyện', 36),
(365, 'Huyện Giao Thủy', 'Huyện', 36),
(366, 'Huyện Hải Hậu', 'Huyện', 36),
(369, 'Thành phố Ninh Bình', 'Thành phố', 37),
(370, 'Thành phố Tam Điệp', 'Thành phố', 37),
(372, 'Huyện Nho Quan', 'Huyện', 37),
(373, 'Huyện Gia Viễn', 'Huyện', 37),
(374, 'Huyện Hoa Lư', 'Huyện', 37),
(375, 'Huyện Yên Khánh', 'Huyện', 37),
(376, 'Huyện Kim Sơn', 'Huyện', 37),
(377, 'Huyện Yên Mô', 'Huyện', 37),
(380, 'Thành phố Thanh Hóa', 'Thành phố', 38),
(381, 'Thị xã Bỉm Sơn', 'Thị xã', 38),
(382, 'Thị xã Sầm Sơn', 'Thị xã', 38),
(384, 'Huyện Mường Lát', 'Huyện', 38),
(385, 'Huyện Quan Hóa', 'Huyện', 38),
(386, 'Huyện Bá Thước', 'Huyện', 38),
(387, 'Huyện Quan Sơn', 'Huyện', 38),
(388, 'Huyện Lang Chánh', 'Huyện', 38),
(389, 'Huyện Ngọc Lặc', 'Huyện', 38),
(390, 'Huyện Cẩm Thủy', 'Huyện', 38),
(391, 'Huyện Thạch Thành', 'Huyện', 38),
(392, 'Huyện Hà Trung', 'Huyện', 38),
(393, 'Huyện Vĩnh Lộc', 'Huyện', 38),
(394, 'Huyện Yên Định', 'Huyện', 38),
(395, 'Huyện Thọ Xuân', 'Huyện', 38),
(396, 'Huyện Thường Xuân', 'Huyện', 38),
(397, 'Huyện Triệu Sơn', 'Huyện', 38),
(398, 'Huyện Thiệu Hóa', 'Huyện', 38),
(399, 'Huyện Hoằng Hóa', 'Huyện', 38),
(400, 'Huyện Hậu Lộc', 'Huyện', 38),
(401, 'Huyện Nga Sơn', 'Huyện', 38),
(402, 'Huyện Như Xuân', 'Huyện', 38),
(403, 'Huyện Như Thanh', 'Huyện', 38),
(404, 'Huyện Nông Cống', 'Huyện', 38),
(405, 'Huyện Đông Sơn', 'Huyện', 38),
(406, 'Huyện Quảng Xương', 'Huyện', 38),
(407, 'Huyện Tĩnh Gia', 'Huyện', 38),
(412, 'Thành phố Vinh', 'Thành phố', 40),
(413, 'Thị xã Cửa Lò', 'Thị xã', 40),
(414, 'Thị xã Thái Hoà', 'Thị xã', 40),
(415, 'Huyện Quế Phong', 'Huyện', 40),
(416, 'Huyện Quỳ Châu', 'Huyện', 40),
(417, 'Huyện Kỳ Sơn', 'Huyện', 40),
(418, 'Huyện Tương Dương', 'Huyện', 40),
(419, 'Huyện Nghĩa Đàn', 'Huyện', 40),
(420, 'Huyện Quỳ Hợp', 'Huyện', 40),
(421, 'Huyện Quỳnh Lưu', 'Huyện', 40),
(422, 'Huyện Con Cuông', 'Huyện', 40),
(423, 'Huyện Tân Kỳ', 'Huyện', 40),
(424, 'Huyện Anh Sơn', 'Huyện', 40),
(425, 'Huyện Diễn Châu', 'Huyện', 40),
(426, 'Huyện Yên Thành', 'Huyện', 40),
(427, 'Huyện Đô Lương', 'Huyện', 40),
(428, 'Huyện Thanh Chương', 'Huyện', 40),
(429, 'Huyện Nghi Lộc', 'Huyện', 40),
(430, 'Huyện Nam Đàn', 'Huyện', 40),
(431, 'Huyện Hưng Nguyên', 'Huyện', 40),
(432, 'Thị xã Hoàng Mai', 'Thị xã', 40),
(436, 'Thành phố Hà Tĩnh', 'Thành phố', 42),
(437, 'Thị xã Hồng Lĩnh', 'Thị xã', 42),
(439, 'Huyện Hương Sơn', 'Huyện', 42),
(440, 'Huyện Đức Thọ', 'Huyện', 42),
(441, 'Huyện Vũ Quang', 'Huyện', 42),
(442, 'Huyện Nghi Xuân', 'Huyện', 42),
(443, 'Huyện Can Lộc', 'Huyện', 42),
(444, 'Huyện Hương Khê', 'Huyện', 42),
(445, 'Huyện Thạch Hà', 'Huyện', 42),
(446, 'Huyện Cẩm Xuyên', 'Huyện', 42),
(447, 'Huyện Kỳ Anh', 'Huyện', 42),
(448, 'Huyện Lộc Hà', 'Huyện', 42),
(449, 'Thị xã Kỳ Anh', 'Thị xã', 42),
(450, 'Thành Phố Đồng Hới', 'Thành phố', 44),
(452, 'Huyện Minh Hóa', 'Huyện', 44),
(453, 'Huyện Tuyên Hóa', 'Huyện', 44),
(454, 'Huyện Quảng Trạch', 'Thị xã', 44),
(455, 'Huyện Bố Trạch', 'Huyện', 44),
(456, 'Huyện Quảng Ninh', 'Huyện', 44),
(457, 'Huyện Lệ Thủy', 'Huyện', 44),
(458, 'Thị xã Ba Đồn', 'Huyện', 44),
(461, 'Thành phố Đông Hà', 'Thành phố', 45),
(462, 'Thị xã Quảng Trị', 'Thị xã', 45),
(464, 'Huyện Vĩnh Linh', 'Huyện', 45),
(465, 'Huyện Hướng Hóa', 'Huyện', 45),
(466, 'Huyện Gio Linh', 'Huyện', 45),
(467, 'Huyện Đa Krông', 'Huyện', 45),
(468, 'Huyện Cam Lộ', 'Huyện', 45),
(469, 'Huyện Triệu Phong', 'Huyện', 45),
(470, 'Huyện Hải Lăng', 'Huyện', 45),
(471, 'Huyện Cồn Cỏ', 'Huyện', 45),
(474, 'Thành phố Huế', 'Thành phố', 46),
(476, 'Huyện Phong Điền', 'Huyện', 46),
(477, 'Huyện Quảng Điền', 'Huyện', 46),
(478, 'Huyện Phú Vang', 'Huyện', 46),
(479, 'Thị xã Hương Thủy', 'Thị xã', 46),
(480, 'Thị xã Hương Trà', 'Thị xã', 46),
(481, 'Huyện A Lưới', 'Huyện', 46),
(482, 'Huyện Phú Lộc', 'Huyện', 46),
(483, 'Huyện Nam Đông', 'Huyện', 46),
(490, 'Quận Liên Chiểu', 'Quận', 48),
(491, 'Quận Thanh Khê', 'Quận', 48),
(492, 'Quận Hải Châu', 'Quận', 48),
(493, 'Quận Sơn Trà', 'Quận', 48),
(494, 'Quận Ngũ Hành Sơn', 'Quận', 48),
(495, 'Quận Cẩm Lệ', 'Quận', 48),
(497, 'Huyện Hòa Vang', 'Huyện', 48),
(498, 'Huyện Hoàng Sa', 'Huyện', 48),
(502, 'Thành phố Tam Kỳ', 'Thành phố', 49),
(503, 'Thành phố Hội An', 'Thành phố', 49),
(504, 'Huyện Tây Giang', 'Huyện', 49),
(505, 'Huyện Đông Giang', 'Huyện', 49),
(506, 'Huyện Đại Lộc', 'Huyện', 49),
(507, 'Thị xã Điện Bàn', 'Thị xã', 49),
(508, 'Huyện Duy Xuyên', 'Huyện', 49),
(509, 'Huyện Quế Sơn', 'Huyện', 49),
(510, 'Huyện Nam Giang', 'Huyện', 49),
(511, 'Huyện Phước Sơn', 'Huyện', 49),
(512, 'Huyện Hiệp Đức', 'Huyện', 49),
(513, 'Huyện Thăng Bình', 'Huyện', 49),
(514, 'Huyện Tiên Phước', 'Huyện', 49),
(515, 'Huyện Bắc Trà My', 'Huyện', 49),
(516, 'Huyện Nam Trà My', 'Huyện', 49),
(517, 'Huyện Núi Thành', 'Huyện', 49),
(518, 'Huyện Phú Ninh', 'Huyện', 49),
(519, 'Huyện Nông Sơn', 'Huyện', 49),
(522, 'Thành phố Quảng Ngãi', 'Thành phố', 51),
(524, 'Huyện Bình Sơn', 'Huyện', 51),
(525, 'Huyện Trà Bồng', 'Huyện', 51),
(526, 'Huyện Tây Trà', 'Huyện', 51),
(527, 'Huyện Sơn Tịnh', 'Huyện', 51),
(528, 'Huyện Tư Nghĩa', 'Huyện', 51),
(529, 'Huyện Sơn Hà', 'Huyện', 51),
(530, 'Huyện Sơn Tây', 'Huyện', 51),
(531, 'Huyện Minh Long', 'Huyện', 51),
(532, 'Huyện Nghĩa Hành', 'Huyện', 51),
(533, 'Huyện Mộ Đức', 'Huyện', 51),
(534, 'Huyện Đức Phổ', 'Huyện', 51),
(535, 'Huyện Ba Tơ', 'Huyện', 51),
(536, 'Huyện Lý Sơn', 'Huyện', 51),
(540, 'Thành phố Qui Nhơn', 'Thành phố', 52),
(542, 'Huyện An Lão', 'Huyện', 52),
(543, 'Huyện Hoài Nhơn', 'Huyện', 52),
(544, 'Huyện Hoài Ân', 'Huyện', 52),
(545, 'Huyện Phù Mỹ', 'Huyện', 52),
(546, 'Huyện Vĩnh Thạnh', 'Huyện', 52),
(547, 'Huyện Tây Sơn', 'Huyện', 52),
(548, 'Huyện Phù Cát', 'Huyện', 52),
(549, 'Thị xã An Nhơn', 'Thị xã', 52),
(550, 'Huyện Tuy Phước', 'Huyện', 52),
(551, 'Huyện Vân Canh', 'Huyện', 52),
(555, 'Thành phố Tuy Hoà', 'Thành phố', 54),
(557, 'Thị xã Sông Cầu', 'Thị xã', 54),
(558, 'Huyện Đồng Xuân', 'Huyện', 54),
(559, 'Huyện Tuy An', 'Huyện', 54),
(560, 'Huyện Sơn Hòa', 'Huyện', 54),
(561, 'Huyện Sông Hinh', 'Huyện', 54),
(562, 'Huyện Tây Hoà', 'Huyện', 54),
(563, 'Huyện Phú Hoà', 'Huyện', 54),
(564, 'Huyện Đông Hòa', 'Huyện', 54),
(568, 'Thành phố Nha Trang', 'Thành phố', 56),
(569, 'Thành phố Cam Ranh', 'Thành phố', 56),
(570, 'Huyện Cam Lâm', 'Huyện', 56),
(571, 'Huyện Vạn Ninh', 'Huyện', 56),
(572, 'Thị xã Ninh Hòa', 'Thị xã', 56),
(573, 'Huyện Khánh Vĩnh', 'Huyện', 56),
(574, 'Huyện Diên Khánh', 'Huyện', 56),
(575, 'Huyện Khánh Sơn', 'Huyện', 56),
(576, 'Huyện Trường Sa', 'Huyện', 56),
(582, 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', 58),
(584, 'Huyện Bác Ái', 'Huyện', 58),
(585, 'Huyện Ninh Sơn', 'Huyện', 58),
(586, 'Huyện Ninh Hải', 'Huyện', 58),
(587, 'Huyện Ninh Phước', 'Huyện', 58),
(588, 'Huyện Thuận Bắc', 'Huyện', 58),
(589, 'Huyện Thuận Nam', 'Huyện', 58),
(593, 'Thành phố Phan Thiết', 'Thành phố', 60),
(594, 'Thị xã La Gi', 'Thị xã', 60),
(595, 'Huyện Tuy Phong', 'Huyện', 60),
(596, 'Huyện Bắc Bình', 'Huyện', 60),
(597, 'Huyện Hàm Thuận Bắc', 'Huyện', 60),
(598, 'Huyện Hàm Thuận Nam', 'Huyện', 60),
(599, 'Huyện Tánh Linh', 'Huyện', 60),
(600, 'Huyện Đức Linh', 'Huyện', 60),
(601, 'Huyện Hàm Tân', 'Huyện', 60),
(602, 'Huyện Phú Quí', 'Huyện', 60),
(608, 'Thành phố Kon Tum', 'Thành phố', 62),
(610, 'Huyện Đắk Glei', 'Huyện', 62),
(611, 'Huyện Ngọc Hồi', 'Huyện', 62),
(612, 'Huyện Đắk Tô', 'Huyện', 62),
(613, 'Huyện Kon Plông', 'Huyện', 62),
(614, 'Huyện Kon Rẫy', 'Huyện', 62),
(615, 'Huyện Đắk Hà', 'Huyện', 62),
(616, 'Huyện Sa Thầy', 'Huyện', 62),
(617, 'Huyện Tu Mơ Rông', 'Huyện', 62),
(618, 'Huyện Ia H\' Drai', 'Huyện', 62),
(622, 'Thành phố Pleiku', 'Thành phố', 64),
(623, 'Thị xã An Khê', 'Thị xã', 64),
(624, 'Thị xã Ayun Pa', 'Thị xã', 64),
(625, 'Huyện KBang', 'Huyện', 64),
(626, 'Huyện Đăk Đoa', 'Huyện', 64),
(627, 'Huyện Chư Păh', 'Huyện', 64),
(628, 'Huyện Ia Grai', 'Huyện', 64),
(629, 'Huyện Mang Yang', 'Huyện', 64),
(630, 'Huyện Kông Chro', 'Huyện', 64),
(631, 'Huyện Đức Cơ', 'Huyện', 64),
(632, 'Huyện Chư Prông', 'Huyện', 64),
(633, 'Huyện Chư Sê', 'Huyện', 64),
(634, 'Huyện Đăk Pơ', 'Huyện', 64),
(635, 'Huyện Ia Pa', 'Huyện', 64),
(637, 'Huyện Krông Pa', 'Huyện', 64),
(638, 'Huyện Phú Thiện', 'Huyện', 64),
(639, 'Huyện Chư Pưh', 'Huyện', 64),
(643, 'Thành phố Buôn Ma Thuột', 'Thành phố', 66),
(644, 'Thị Xã Buôn Hồ', 'Thị xã', 66),
(645, 'Huyện Ea H\'leo', 'Huyện', 66),
(646, 'Huyện Ea Súp', 'Huyện', 66),
(647, 'Huyện Buôn Đôn', 'Huyện', 66),
(648, 'Huyện Cư M\'gar', 'Huyện', 66),
(649, 'Huyện Krông Búk', 'Huyện', 66),
(650, 'Huyện Krông Năng', 'Huyện', 66),
(651, 'Huyện Ea Kar', 'Huyện', 66),
(652, 'Huyện M\'Đrắk', 'Huyện', 66),
(653, 'Huyện Krông Bông', 'Huyện', 66),
(654, 'Huyện Krông Pắc', 'Huyện', 66),
(655, 'Huyện Krông A Na', 'Huyện', 66),
(656, 'Huyện Lắk', 'Huyện', 66),
(657, 'Huyện Cư Kuin', 'Huyện', 66),
(660, 'Thị xã Gia Nghĩa', 'Thị xã', 67),
(661, 'Huyện Đăk Glong', 'Huyện', 67),
(662, 'Huyện Cư Jút', 'Huyện', 67),
(663, 'Huyện Đắk Mil', 'Huyện', 67),
(664, 'Huyện Krông Nô', 'Huyện', 67),
(665, 'Huyện Đắk Song', 'Huyện', 67),
(666, 'Huyện Đắk R Lấp', 'Huyện', 67),
(667, 'Huyện Tuy Đức', 'Huyện', 67),
(672, 'Thành phố Đà Lạt', 'Thành phố', 68),
(673, 'Thành phố Bảo Lộc', 'Thành phố', 68),
(674, 'Huyện Đam Rông', 'Huyện', 68),
(675, 'Huyện Lạc Dương', 'Huyện', 68),
(676, 'Huyện Lâm Hà', 'Huyện', 68),
(677, 'Huyện Đơn Dương', 'Huyện', 68),
(678, 'Huyện Đức Trọng', 'Huyện', 68),
(679, 'Huyện Di Linh', 'Huyện', 68),
(680, 'Huyện Bảo Lâm', 'Huyện', 68),
(681, 'Huyện Đạ Huoai', 'Huyện', 68),
(682, 'Huyện Đạ Tẻh', 'Huyện', 68),
(683, 'Huyện Cát Tiên', 'Huyện', 68),
(688, 'Thị xã Phước Long', 'Thị xã', 70),
(689, 'Thị xã Đồng Xoài', 'Thị xã', 70),
(690, 'Thị xã Bình Long', 'Thị xã', 70),
(691, 'Huyện Bù Gia Mập', 'Huyện', 70),
(692, 'Huyện Lộc Ninh', 'Huyện', 70),
(693, 'Huyện Bù Đốp', 'Huyện', 70),
(694, 'Huyện Hớn Quản', 'Huyện', 70),
(695, 'Huyện Đồng Phú', 'Huyện', 70),
(696, 'Huyện Bù Đăng', 'Huyện', 70),
(697, 'Huyện Chơn Thành', 'Huyện', 70),
(698, 'Huyện Phú Riềng', 'Huyện', 70),
(703, 'Thành phố Tây Ninh', 'Thành phố', 72),
(705, 'Huyện Tân Biên', 'Huyện', 72),
(706, 'Huyện Tân Châu', 'Huyện', 72),
(707, 'Huyện Dương Minh Châu', 'Huyện', 72),
(708, 'Huyện Châu Thành', 'Huyện', 72),
(709, 'Huyện Hòa Thành', 'Huyện', 72),
(710, 'Huyện Gò Dầu', 'Huyện', 72),
(711, 'Huyện Bến Cầu', 'Huyện', 72),
(712, 'Huyện Trảng Bàng', 'Huyện', 72),
(718, 'Thành phố Thủ Dầu Một', 'Thành phố', 74),
(719, 'Huyện Bàu Bàng', 'Huyện', 74),
(720, 'Huyện Dầu Tiếng', 'Huyện', 74),
(721, 'Thị xã Bến Cát', 'Thị xã', 74),
(722, 'Huyện Phú Giáo', 'Huyện', 74),
(723, 'Thị xã Tân Uyên', 'Thị xã', 74),
(724, 'Thị xã Dĩ An', 'Thị xã', 74),
(725, 'Thị xã Thuận An', 'Thị xã', 74),
(726, 'Huyện Bắc Tân Uyên', 'Huyện', 74),
(731, 'Thành phố Biên Hòa', 'Thành phố', 75),
(732, 'Thị xã Long Khánh', 'Thị xã', 75),
(734, 'Huyện Tân Phú', 'Huyện', 75),
(735, 'Huyện Vĩnh Cửu', 'Huyện', 75),
(736, 'Huyện Định Quán', 'Huyện', 75),
(737, 'Huyện Trảng Bom', 'Huyện', 75),
(738, 'Huyện Thống Nhất', 'Huyện', 75),
(739, 'Huyện Cẩm Mỹ', 'Huyện', 75),
(740, 'Huyện Long Thành', 'Huyện', 75),
(741, 'Huyện Xuân Lộc', 'Huyện', 75),
(742, 'Huyện Nhơn Trạch', 'Huyện', 75),
(747, 'Thành phố Vũng Tàu', 'Thành phố', 77),
(748, 'Thành phố Bà Rịa', 'Thành phố', 77),
(750, 'Huyện Châu Đức', 'Huyện', 77),
(751, 'Huyện Xuyên Mộc', 'Huyện', 77),
(752, 'Huyện Long Điền', 'Huyện', 77),
(753, 'Huyện Đất Đỏ', 'Huyện', 77),
(754, 'Huyện Tân Thành', 'Huyện', 77),
(755, 'Huyện Côn Đảo', 'Huyện', 77),
(760, 'Quận 1', 'Quận', 79),
(761, 'Quận 12', 'Quận', 79),
(762, 'Quận Thủ Đức', 'Quận', 79),
(763, 'Quận 9', 'Quận', 79),
(764, 'Quận Gò Vấp', 'Quận', 79),
(765, 'Quận Bình Thạnh', 'Quận', 79),
(766, 'Quận Tân Bình', 'Quận', 79),
(767, 'Quận Tân Phú', 'Quận', 79),
(768, 'Quận Phú Nhuận', 'Quận', 79),
(769, 'Quận 2', 'Quận', 79),
(770, 'Quận 3', 'Quận', 79),
(771, 'Quận 10', 'Quận', 79),
(772, 'Quận 11', 'Quận', 79),
(773, 'Quận 4', 'Quận', 79),
(774, 'Quận 5', 'Quận', 79),
(775, 'Quận 6', 'Quận', 79),
(776, 'Quận 8', 'Quận', 79),
(777, 'Quận Bình Tân', 'Quận', 79),
(778, 'Quận 7', 'Quận', 79),
(783, 'Huyện Củ Chi', 'Huyện', 79),
(784, 'Huyện Hóc Môn', 'Huyện', 79),
(785, 'Huyện Bình Chánh', 'Huyện', 79),
(786, 'Huyện Nhà Bè', 'Huyện', 79),
(787, 'Huyện Cần Giờ', 'Huyện', 79),
(794, 'Thành phố Tân An', 'Thành phố', 80),
(795, 'Thị xã Kiến Tường', 'Thị xã', 80),
(796, 'Huyện Tân Hưng', 'Huyện', 80),
(797, 'Huyện Vĩnh Hưng', 'Huyện', 80),
(798, 'Huyện Mộc Hóa', 'Huyện', 80),
(799, 'Huyện Tân Thạnh', 'Huyện', 80),
(800, 'Huyện Thạnh Hóa', 'Huyện', 80),
(801, 'Huyện Đức Huệ', 'Huyện', 80),
(802, 'Huyện Đức Hòa', 'Huyện', 80),
(803, 'Huyện Bến Lức', 'Huyện', 80),
(804, 'Huyện Thủ Thừa', 'Huyện', 80),
(805, 'Huyện Tân Trụ', 'Huyện', 80),
(806, 'Huyện Cần Đước', 'Huyện', 80),
(807, 'Huyện Cần Giuộc', 'Huyện', 80),
(808, 'Huyện Châu Thành', 'Huyện', 80),
(815, 'Thành phố Mỹ Tho', 'Thành phố', 82),
(816, 'Thị xã Gò Công', 'Thị xã', 82),
(817, 'Thị xã Cai Lậy', 'Huyện', 82),
(818, 'Huyện Tân Phước', 'Huyện', 82),
(819, 'Huyện Cái Bè', 'Huyện', 82),
(820, 'Huyện Cai Lậy', 'Thị xã', 82),
(821, 'Huyện Châu Thành', 'Huyện', 82),
(822, 'Huyện Chợ Gạo', 'Huyện', 82),
(823, 'Huyện Gò Công Tây', 'Huyện', 82),
(824, 'Huyện Gò Công Đông', 'Huyện', 82),
(825, 'Huyện Tân Phú Đông', 'Huyện', 82),
(829, 'Thành phố Bến Tre', 'Thành phố', 83),
(831, 'Huyện Châu Thành', 'Huyện', 83),
(832, 'Huyện Chợ Lách', 'Huyện', 83),
(833, 'Huyện Mỏ Cày Nam', 'Huyện', 83),
(834, 'Huyện Giồng Trôm', 'Huyện', 83),
(835, 'Huyện Bình Đại', 'Huyện', 83),
(836, 'Huyện Ba Tri', 'Huyện', 83),
(837, 'Huyện Thạnh Phú', 'Huyện', 83),
(838, 'Huyện Mỏ Cày Bắc', 'Huyện', 83),
(842, 'Thành phố Trà Vinh', 'Thành phố', 84),
(844, 'Huyện Càng Long', 'Huyện', 84),
(845, 'Huyện Cầu Kè', 'Huyện', 84),
(846, 'Huyện Tiểu Cần', 'Huyện', 84),
(847, 'Huyện Châu Thành', 'Huyện', 84),
(848, 'Huyện Cầu Ngang', 'Huyện', 84),
(849, 'Huyện Trà Cú', 'Huyện', 84),
(850, 'Huyện Duyên Hải', 'Huyện', 84),
(851, 'Thị xã Duyên Hải', 'Thị xã', 84),
(855, 'Thành phố Vĩnh Long', 'Thành phố', 86),
(857, 'Huyện Long Hồ', 'Huyện', 86),
(858, 'Huyện Mang Thít', 'Huyện', 86),
(859, 'Huyện  Vũng Liêm', 'Huyện', 86),
(860, 'Huyện Tam Bình', 'Huyện', 86),
(861, 'Thị xã Bình Minh', 'Thị xã', 86),
(862, 'Huyện Trà Ôn', 'Huyện', 86),
(863, 'Huyện Bình Tân', 'Huyện', 86),
(866, 'Thành phố Cao Lãnh', 'Thành phố', 87),
(867, 'Thành phố Sa Đéc', 'Thành phố', 87),
(868, 'Thị xã Hồng Ngự', 'Thị xã', 87),
(869, 'Huyện Tân Hồng', 'Huyện', 87),
(870, 'Huyện Hồng Ngự', 'Huyện', 87),
(871, 'Huyện Tam Nông', 'Huyện', 87),
(872, 'Huyện Tháp Mười', 'Huyện', 87),
(873, 'Huyện Cao Lãnh', 'Huyện', 87),
(874, 'Huyện Thanh Bình', 'Huyện', 87),
(875, 'Huyện Lấp Vò', 'Huyện', 87),
(876, 'Huyện Lai Vung', 'Huyện', 87),
(877, 'Huyện Châu Thành', 'Huyện', 87),
(883, 'Thành phố Long Xuyên', 'Thành phố', 89),
(884, 'Thành phố Châu Đốc', 'Thành phố', 89),
(886, 'Huyện An Phú', 'Huyện', 89),
(887, 'Thị xã Tân Châu', 'Thị xã', 89),
(888, 'Huyện Phú Tân', 'Huyện', 89),
(889, 'Huyện Châu Phú', 'Huyện', 89),
(890, 'Huyện Tịnh Biên', 'Huyện', 89),
(891, 'Huyện Tri Tôn', 'Huyện', 89),
(892, 'Huyện Châu Thành', 'Huyện', 89),
(893, 'Huyện Chợ Mới', 'Huyện', 89),
(894, 'Huyện Thoại Sơn', 'Huyện', 89),
(899, 'Thành phố Rạch Giá', 'Thành phố', 91),
(900, 'Thị xã Hà Tiên', 'Thị xã', 91),
(902, 'Huyện Kiên Lương', 'Huyện', 91),
(903, 'Huyện Hòn Đất', 'Huyện', 91),
(904, 'Huyện Tân Hiệp', 'Huyện', 91),
(905, 'Huyện Châu Thành', 'Huyện', 91),
(906, 'Huyện Giồng Riềng', 'Huyện', 91),
(907, 'Huyện Gò Quao', 'Huyện', 91),
(908, 'Huyện An Biên', 'Huyện', 91),
(909, 'Huyện An Minh', 'Huyện', 91),
(910, 'Huyện Vĩnh Thuận', 'Huyện', 91),
(911, 'Huyện Phú Quốc', 'Huyện', 91),
(912, 'Huyện Kiên Hải', 'Huyện', 91),
(913, 'Huyện U Minh Thượng', 'Huyện', 91),
(914, 'Huyện Giang Thành', 'Huyện', 91),
(916, 'Quận Ninh Kiều', 'Quận', 92),
(917, 'Quận Ô Môn', 'Quận', 92),
(918, 'Quận Bình Thuỷ', 'Quận', 92),
(919, 'Quận Cái Răng', 'Quận', 92),
(923, 'Quận Thốt Nốt', 'Quận', 92),
(924, 'Huyện Vĩnh Thạnh', 'Huyện', 92),
(925, 'Huyện Cờ Đỏ', 'Huyện', 92),
(926, 'Huyện Phong Điền', 'Huyện', 92),
(927, 'Huyện Thới Lai', 'Huyện', 92),
(930, 'Thành phố Vị Thanh', 'Thành phố', 93),
(931, 'Thị xã Ngã Bảy', 'Thị xã', 93),
(932, 'Huyện Châu Thành A', 'Huyện', 93),
(933, 'Huyện Châu Thành', 'Huyện', 93),
(934, 'Huyện Phụng Hiệp', 'Huyện', 93),
(935, 'Huyện Vị Thuỷ', 'Huyện', 93),
(936, 'Huyện Long Mỹ', 'Huyện', 93),
(937, 'Thị xã Long Mỹ', 'Thị xã', 93),
(941, 'Thành phố Sóc Trăng', 'Thành phố', 94),
(942, 'Huyện Châu Thành', 'Huyện', 94),
(943, 'Huyện Kế Sách', 'Huyện', 94),
(944, 'Huyện Mỹ Tú', 'Huyện', 94),
(945, 'Huyện Cù Lao Dung', 'Huyện', 94),
(946, 'Huyện Long Phú', 'Huyện', 94),
(947, 'Huyện Mỹ Xuyên', 'Huyện', 94),
(948, 'Thị xã Ngã Năm', 'Thị xã', 94),
(949, 'Huyện Thạnh Trị', 'Huyện', 94),
(950, 'Thị xã Vĩnh Châu', 'Thị xã', 94),
(951, 'Huyện Trần Đề', 'Huyện', 94),
(954, 'Thành phố Bạc Liêu', 'Thành phố', 95),
(956, 'Huyện Hồng Dân', 'Huyện', 95),
(957, 'Huyện Phước Long', 'Huyện', 95),
(958, 'Huyện Vĩnh Lợi', 'Huyện', 95),
(959, 'Thị xã Giá Rai', 'Thị xã', 95),
(960, 'Huyện Đông Hải', 'Huyện', 95),
(961, 'Huyện Hoà Bình', 'Huyện', 95),
(964, 'Thành phố Cà Mau', 'Thành phố', 96),
(966, 'Huyện U Minh', 'Huyện', 96),
(967, 'Huyện Thới Bình', 'Huyện', 96),
(968, 'Huyện Trần Văn Thời', 'Huyện', 96),
(969, 'Huyện Cái Nước', 'Huyện', 96),
(970, 'Huyện Đầm Dơi', 'Huyện', 96),
(971, 'Huyện Năm Căn', 'Huyện', 96),
(972, 'Huyện Phú Tân', 'Huyện', 96),
(973, 'Huyện Ngọc Hiển', 'Huyện', 96);

-- --------------------------------------------------------

--
-- Table structure for table `db_order`
--

CREATE TABLE `db_order` (
  `id` int(11) NOT NULL,
  `orderCode` varchar(8) CHARACTER SET utf8 NOT NULL,
  `customerid` int(11) NOT NULL,
  `orderdate` datetime NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `money` int(12) NOT NULL,
  `price_ship` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `province` int(5) NOT NULL,
  `district` int(5) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_order`
--

INSERT INTO `db_order` (`id`, `orderCode`, `customerid`, `orderdate`, `fullname`, `phone`, `money`, `price_ship`, `coupon`, `province`, `district`, `address`, `trash`, `status`) VALUES
(1, '9Xa0wWsx', 39, '2021-05-24 22:10:25', 'Minh ANh', '981643651', 73190000, 30000, 0, 79, 761, 'Lê đức thọ', 0, 2),
(2, 'kBbR02fq', 2, '2021-06-08 22:16:37', 'Ngô Văn A', '0981643651', 22520000, 30000, 0, 1, 597, 'so nha 23', 0, 3),
(3, 'ynPqQjPX', 9, '2021-06-11 21:38:46', 'Ngô Văn A', '0981643651', 30610000, 30000, 0, 1, 721, 'so nha 23', 0, 4),
-- (10, '9PKJZdES', 9, '2021-06-14 00:17:31', 'Ngô Văn A', '981643651', 68280000, 30000, 0, 1, 764, 'Hẻm 493, Lê đức thọ, Phường 16', 0, 4),
-- (42, 'ONyIhUsT', 2, '2021-06-20 23:44:34', 'Minh Minh', '0981643651', 29600000, 30000, 0, 1, 696, 'ss', 0, 3),
-- (43, '5OV82vwX', 39, '2021-06-21 16:08:26', 'Lợn', '0932323252', 20030000, 30000, 0, 79, 770, '30, Nam kỳ khởi nghĩa', 0, 4),
-- (44, 'A3M9aBsQ', 2, '2021-06-21 16:20:59', 'Smile', '0981643651', 80510000, 30000, 0, 79, 760, '33, Hàm nghi', 0, 4),
-- (45, 'Q3KRv23X', 2, '2021-06-21 16:26:11', 'Minh Péo', '0981643651', 34610000, 30000, 0, 79, 760, '33, Hàm nghi', 0, 3),
-- (46, 'YCuxWwS8', 2, '2021-06-21 16:34:33', 'kakaka', '0981643651', 39710000, 30000, 0, 79, 761, '11A, Quốc lô 1A, Ngã tư ga', 0, 2),
-- (47, 'qpzSKH6S', 2, '2021-06-21 16:47:05', 'MA', '0981643651', 20530000, 30000, 0, 79, 761, '', 0, 2),
-- (48, '3pBolrH7', 2, '2021-06-21 16:48:25', 'Dev.Ds', '0981643651', 20180000, 30000, 0, 79, 771, '', 0, 3),
-- (49, 'DNZ9O0v4', 2, '2021-06-22 21:24:09', 'Dsn', '0981643651', 134570000, 30000, 0, 52, 543, 'ddd', 0, 4),
-- (50, 'B9pS7vS9', 46, '2021-06-22 23:11:42', 'Anh Nguyen', '0908030405', 33800000, 30000, 0, 79, 778, '90, Nguyễn Thị Thấp, Phuong Tân Thuận', 0, 4),
-- (51, '2PaYlRw0', 47, '2021-06-22 23:16:45', 'Nguyen Minh', '090305146', 17500000, 30000, 0, 96, 969, '11, Nguyễn Trãi', 0, 2),
-- (52, 'iLsZ3OSp', 2, '2021-06-24 22:33:14', 'Diego', '0981643651', 49630000, 30000, 100000, 79, 760, '33, Võ thị sáu, phường Bến nghé', 0, 3),
-- (53, 'ZRpyN4s4', 2, '2021-06-24 22:50:43', 'Jethro', '0981643651', 11920000, 30000, 100000, 31, 311, '11, Lê Duẩn, p11', 0, 4),
-- (54, 'ynJiNdW6', 48, '2021-06-25 22:52:27', 'Dev', '090640316', 15330000, 30000, 100000, 79, 765, '11, Điện Biên Phủ, p 11', 0, 4),
-- (55, 'rGAmiC25', 49, '2021-06-25 22:58:22', 'Minh Sang', '0913164136', 22230000, 30000, 100000, 79, 773, 'Số 33, Hẻm 337, Nguyễn Tất Thành, p10', 0, 2),
-- (56, 'DVpI5Z2S', 50, '2021-06-25 23:09:57', 'Quang Minh', '096323646', 52410000, 30000, 100000, 79, 764, '11, Phan Huy Ích, p4', 0, 4),
-- (57, 'qWuGMFF4', 2, '2021-06-25 23:29:53', 'Tuấn', '0981643651', 860000, 30000, 100000, 79, 760, '11, Hàm Nghi, p14', 0, 2),
-- (58, 'Ys1tyS43', 9, '2021-06-26 00:18:09', 'Hoàng', '090932323', 19430000, 30000, 100000, 79, 761, '11, Hà Huy Giáp, p Thành Lộc', 0, 4),
-- (59, 'ZtQ6Lo3D', 9, '2021-06-26 00:23:39', 'Ngọc Minh', '090932323', 15920000, 30000, 100000, 79, 760, '11, Lý Tự Trọng, P Bến Thành', 0, 4),
-- (60, 'BrDHRuS3', 9, '2021-06-26 00:24:27', 'Khánh Minh', '090932323', 18930000, 30000, 0, 60, 595, '', 0, 4),
-- (61, 'J2DcgBS5', 9, '2021-06-26 00:26:39', 'Minh An', '090932323', 18930000, 30000, 0, 96, 972, '', 0, 4),
-- (62, 'UbFtpe2E', 9, '2021-06-26 00:30:42', 'Nguyễn B', '090932323', 14830000, 30000, 100000, 92, 926, 'EEFEF', 0, 4),
-- (63, 'L5M40Dle', 9, '2021-06-26 13:15:36', 'Nguyễn C', '090932323', 15870000, 30000, 150000, 79, 778, '11, Nguyễn Thị Thập, p Tân Thuận', 0, 4),
-- (64, 'B17rt3S6', 51, '2021-06-26 13:17:30', 'Minh A', '0357646765', 29730000, 30000, 200000, 48, 497, '30a, Phạm Văn Chiêu', 0, 4),
-- (65, 'p7fMeu3n', 2, '2021-06-26 16:26:19', 'Trần Anh', '076613166', 16820000, 30000, 0, 79, 778, 'efef', 0, 2),
-- (66, '8yXWhO11', 53, '2021-06-28 15:57:50', 'Anh Trần', '0903121564', 15330000, 30000, 100000, 79, 760, '46, Lê Lơi, Bến Thành', 0, 4),
-- (67, '6lVn7Bim', 54, '2021-06-28 22:17:44', 'Thành', '033564616', 51830000, 30000, 0, 79, 760, '33, Đường số 14', 0, 4),
-- (68, 'qxDgoJvp', 2, '2021-06-28 22:23:47', 'Minh Minh', '0981643651', 23010000, 30000, 0, 79, 761, '33A/11, Đường Hà Huy Giáp', 0, 4),
-- (69, 'voGyL6jS', 55, '2021-06-29 15:02:46', 'Lương 21', '03056451', 11720000, 30000, 200000, 79, 760, '33, Huỳnh Thúc Khàng, P Bến Thành', 0, 4),
-- (70, 'IOM5jzdT', 9, '2021-06-29 15:04:28', 'K.Minh', '090932323', 48000000, 30000, 0, 79, 778, 'Hẻm 253, Trần Xuân Soạn, Tân Thuận', 0, 4),
-- (71, 'bTRYE81q', 56, '2021-06-29 15:09:06', 'Tuấn Anh', '0305464844', 22810000, 30000, 200000, 79, 760, '44, Lê Lai, P Bến Thành', 0, 4),
-- (72, 'MlzJ2HV5', 2, '2021-06-29 15:10:39', 'Hiệp gà', '0981643651', 31780000, 30000, 200000, 79, 768, '27, Đào Duy Anh', 0, 3),
-- (73, '5LZxClVb', 2, '2021-06-29 22:01:22', 'Hiệp gà', '0981643651', 30830000, 30000, 0, 95, 957, 'wded', 0, 4),
-- (74, 'q1sHScIN', 57, '2021-07-05 23:01:51', 'Tiến Đạt', '032133234', 12730000, 30000, 0, 79, 775, '33, Nguyễn Hữa Cảnh', 0, 4),
-- (75, '3x4iJyP1', 66, '2021-07-06 22:12:24', 'Hiệp 2019', '0306444854', 7360000, 30000, 100000, 79, 778, '33, Nguyễn Thị Thập', 0, 4),
-- (76, 'xdFQk3PX', 67, '2021-11-30 20:33:25', 'Minh Anh', '0983103187', 69435000, 35000, 0, 1, 272, 'Võng Xuyên Phúc Thọ Hà Nội', 0, 2),
-- (77, 'ONezdMhl', 68, '2021-12-01 19:00:33', 'Hoàng Anh', '0982303758', 30035000, 35000, 0, 1, 272, 'Số nhà 43, Nghĩa Lộ, Võng Xuyên, Phúc Thọ, Hà Nội', 0, 2),
-- (78, '4f8VzPrd', 69, '2021-12-07 23:13:34', 'Ngo Minh', '0983103186', 117215000, 35000, 100000, 1, 272, 'Vong Xuyen', 0, 2),
-- (79, 'BFUaym8o', 70, '2021-12-08 21:33:24', 'háhdhasdsadasd', '0932323534', 825000, 35000, 0, 4, 46, 'aggsd', 0, 4),
-- (80, 'lexHZwaG', 71, '2022-03-02 10:13:46', 'Linh Anh', '09835758443', -365000, 35000, 500000, 92, 919, 'âhfhkjfdhuehihitehthhte', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `count` int(10) NOT NULL,
  `price` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_orderdetail`
--

INSERT INTO `db_orderdetail` (`id`, `orderid`, `productid`, `count`, `price`, `trash`, `status`) VALUES
(1, 80, 34, 10, 10000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_producer`
--

CREATE TABLE `db_producer` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `trash` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_producer`
--

INSERT INTO `db_producer` (`id`, `name`, `code`, `keyword`, `created_at`, `created_by`, `modified`, `modified_by`, `status`, `trash`) VALUES
(1, 'Nhi Đồng', 'NHIDONG', 'Sách mới', '2021-05-22 16:08:31', 4, '2021-05-22 16:08:31', 4, 1, 1),
(2, 'Tiền phong', 'TIENPHONG', 'Báo, tạp chí', '2021-06-12 23:30:37', 1, '2021-07-05 10:52:13', 1, 1, 1),
(3, 'NXB Dân Trí', 'DANTRI', 'Sách, vở, dụng cụ học tập', '2021-05-22 16:06:31', 4, '2021-06-12 23:40:22', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_product`
--

CREATE TABLE `db_product` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sortDesc` text CHARACTER SET utf8 NOT NULL,
  `detail` text CHARACTER SET utf8 NOT NULL,
  `producer` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `number_buy` int(11) NOT NULL,
  `sale` int(3) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `modified` datetime NOT NULL,
  `modified_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_product`
--

INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(1, 2, 'Sách Giáo Khoa', 'sach-giao-khoa', '5df5496a8fb411fd207b39eae9802655.jpg', '5a6fb8ec2db3063e1e241a3e75d4e3ee.png', 'Samsung Galaxy S10 Plus Green chính hãng, nhiều ưu đãi khi đặt trước', '<h3><strong>Thiết kế thi&ecirc;n hướng&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-note-9-chinh-hang.html\" target=\"_blank\">Note 9</a>, kiểu m&agrave;n h&igrave;nh Infinity-O độc đ&aacute;o</strong></h3>\r\n\r\n<p>B&agrave;i to&aacute;n về hiển thị full m&agrave;n h&igrave;nh đ&atilde; được Samsung ho&agrave;n th&agrave;nh xuất sắc tr&ecirc;n Samsung Galaxy S10 Plus. Với thiết kế Infinity-O, m&agrave;n h&igrave;nh 6.4 inch tr&ecirc;n Galaxy S10 Plus đ&atilde; gần như chiếm trọn bộ mặt trước, với viền tr&ecirc;n v&agrave; cằm ở dưới rất mỏng. Tai thỏ, cũng như phần viền d&agrave;y đ&atilde; biến mất, thay v&agrave;o đ&oacute; l&agrave; một &lsquo;nốt ruồi&rsquo; chứa 2 camera selfie nằm ở g&oacute;c phải m&agrave;n h&igrave;nh.</p>\r\n\r\n<p>Phần nốt ruồi n&agrave;y được Samsung thiết kế rất tỉ mỉ, gọn g&agrave;ng, kh&ocirc;ng g&acirc;y qu&aacute; nhiều sự ch&uacute; &yacute;. B&ecirc;n cạnh đ&oacute;, nh&agrave; sản xuất H&agrave;n Quốc cũng kỹ lưỡng c&agrave;i đặt sẵn tr&ecirc;n m&aacute;y những h&igrave;nh nền mặc định &lsquo;tối dần&rsquo; về ph&iacute;a g&oacute;c tr&aacute;i, nhằm gi&uacute;p thiết kế tr&ocirc;ng liền lạc hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-s10-plus-chinh-hang-2.jpg.jpg\" style=\"height:525px; width:840px\" /></p>\r\n\r\n<h2><strong><a href=\"https://cellphones.com.vn/samsung-galaxy-s10plus-chinh-hang.html\" target=\"_blank\">Samsung Galaxy S10 Plus</a>&nbsp;ch&iacute;nh h&atilde;ng, nhiều ưu đ&atilde;i khi đặt trước</strong></h2>\r\n\r\n<p><em>Vậy l&agrave;&nbsp;<strong><a href=\"https://cellphones.com.vn/mobile/samsung/galaxy-s.html\" target=\"_blank\">Samsung Galaxy S&nbsp;</a></strong>thế hệ thứ 10 đ&atilde; được ra mắt, v&agrave; kh&ocirc;ng l&agrave;m người d&ugrave;ng thất vọng một ch&uacute;t n&agrave;o. Trong bộ ba si&ecirc;u phẩm d&ograve;ng S năm nay,<strong><a href=\"https://cellphones.com.vn/samsung-galaxy-s10plus-chinh-hang.html\" target=\"_blank\">Samsung Galaxy S10 Plus</a>&nbsp;</strong>l&agrave; thiết bị đắt gi&aacute; cũng như được trang bị những t&iacute;nh năng đ&igrave;nh đ&aacute;m nhất từ&nbsp;<strong><a href=\"https://cellphones.com.vn/mobile/samsung.html\" target=\"_blank\">Samsung</a></strong>. Đ&acirc;y hứa hẹn sẽ trở th&agrave;nh một trong những smartphone ho&agrave;n hảo nhất năm 2019. Ngo&agrave;i ra, c&aacute;c si&ecirc;u phẩm dự kiến tr&igrave;nh l&agrave;ng của Samsung như&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-s10e.html\" target=\"_blank\"><strong>Samsung Galaxy S10e</strong></a>,&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-note-10-chinh-hang.html\" target=\"_blank\"><strong>Samsung Galaxy Note 10&nbsp;</strong></a>với những thiết kế c&ugrave;ng t&iacute;nh năng đột ph&aacute; hứa hẹn sẽ b&ugrave;ng nổ giới c&ocirc;ng nghệ trong năm nay.&nbsp;</em></p>\r\n\r\n<h3><strong>Thiết kế thi&ecirc;n hướng&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-note-9-chinh-hang.html\" target=\"_blank\">Note 9</a>, kiểu m&agrave;n h&igrave;nh Infinity-O độc đ&aacute;o</strong></h3>\r\n\r\n<p>B&agrave;i to&aacute;n về hiển thị full m&agrave;n h&igrave;nh đ&atilde; được Samsung ho&agrave;n th&agrave;nh xuất sắc tr&ecirc;n Samsung Galaxy S10 Plus. Với thiết kế Infinity-O, m&agrave;n h&igrave;nh 6.4 inch tr&ecirc;n Galaxy S10 Plus đ&atilde; gần như chiếm trọn bộ mặt trước, với viền tr&ecirc;n v&agrave; cằm ở dưới rất mỏng. Tai thỏ, cũng như phần viền d&agrave;y đ&atilde; biến mất, thay v&agrave;o đ&oacute; l&agrave; một &lsquo;nốt ruồi&rsquo; chứa 2 camera selfie nằm ở g&oacute;c phải m&agrave;n h&igrave;nh.</p>\r\n\r\n<p>Phần nốt ruồi n&agrave;y được Samsung thiết kế rất tỉ mỉ, gọn g&agrave;ng, kh&ocirc;ng g&acirc;y qu&aacute; nhiều sự ch&uacute; &yacute;. B&ecirc;n cạnh đ&oacute;, nh&agrave; sản xuất H&agrave;n Quốc cũng kỹ lưỡng c&agrave;i đặt sẵn tr&ecirc;n m&aacute;y những h&igrave;nh nền mặc định &lsquo;tối dần&rsquo; về ph&iacute;a g&oacute;c tr&aacute;i, nhằm gi&uacute;p thiết kế tr&ocirc;ng liền lạc hơn.</p>\r\n\r\n<p><img alt=\"thiết kế samsung galaxy s10 plus\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-s10-plus-chinh-hang-1.jpg_1.jpg\" /></p>\r\n\r\n<p>Về thiết kế mặt lưng, tr&ecirc;n Galaxy S10 Plus, thay v&igrave; đặt camera nằm dọc, Samsung đ&atilde; xoay ngang cụm camera giống như tr&ecirc;n Note 9. Đồng thời v&acirc;n tay cũng đ&atilde; được t&iacute;ch hợp thẳng v&agrave;o trong m&agrave;n h&igrave;nh. Nhờ đ&oacute; m&agrave; thiết kế tr&ecirc;n m&aacute;y tr&ocirc;ng gọn g&agrave;ng, vu&ocirc;ng vứt hơn. Song song với đ&oacute;, Galaxy S10 Plus cũng c&oacute; độ mỏng rất ấn tượng, chỉ 7.8mm v&agrave; c&oacute; hai khối lượng dựa v&agrave;o tuỳ phi&ecirc;n bản: 175g (bản thường), 198g (bản gốm).</p>\r\n\r\n<p><img alt=\"màn hình samsung galaxy s10\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-s10-plus-chinh-hang-2.jpg.jpg\" /></p>\r\n\r\n<p>Samsung cũng kh&ocirc;ng qu&ecirc;n mang l&ecirc;n S10 Plus khả năng kh&aacute;ng nước IP68 cũng như mặt k&iacute;nh bảo vệ Gorilla Glass 5 ở ph&iacute;a sau. Về m&agrave;u sắc, Samsung Galaxy S10 Plus sở hữu rất nhiều phi&ecirc;n bản m&agrave;u sắc như: Prism White, Prism Black, Prism Green, Prism Blue, Canary Yellow, Flamingo Pink, Ceramic Black, Ceramic White. Nhưng hiện tại bạn c&oacute; thể đặt h&agrave;ng trước c&aacute;c m&agrave;u như Prism White, Prism Black v&agrave; Prism Green.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh Dynamic AMOLED 2K, t&iacute;ch hợp cảm biến v&acirc;n tay si&ecirc;u &acirc;m&nbsp;</strong></h3>\r\n\r\n<p>Tr&ecirc;n m&agrave;n h&igrave;nh Galaxy S10 Plus, nếu như thiết kế Infinity-O l&agrave; một điểm c&aacute;ch t&acirc;n, th&igrave; chất lượng hiển thị lại l&agrave; một lời khẳng định về chất lượng. M&agrave;n h&igrave;nh 6.4 inch tr&ecirc;n Galaxy S10 Plus được trang bị tấm nền Dynamic AMOLED do ch&iacute;nh Samsung ph&aacute;t triển. Với kỹ thuật Dynamic Tone Mapping, m&agrave;n h&igrave;nh sử dụng tấm nền tr&ecirc;n sẽ hỗ trợ tối ưu độ tương phản cho từng khung h&igrave;nh kh&aacute;c nhau. Song song với đ&oacute;, Dynamic AMOLED cũng đạt chuẩn HDR10+. Đi k&egrave;m với độ ph&acirc;n giải rất cao - 1440 x 3040, m&agrave;n h&igrave;nh tr&ecirc;n Galaxy S10 Plus chắc chắn sẽ mang đến những trải nghiệm hiển thị xuất sắc chưa từng c&oacute;.<img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-s10-plus-chinh-hang-4.jpg\" style=\"height:473px; width:840px\" /></p>\r\n\r\n<h3><strong>Hiệu năng mạnh mẽ với Exynos 9820, dung lượng RAM 8GB tối thiểu</strong></h3>\r\n\r\n<p>Galaxy S10 Plus được Samsung n&acirc;ng cấp l&ecirc;n vi xử l&yacute; Exynos 9820. Đ&acirc;y l&agrave; một CPU được thiết kế tr&ecirc;n tiến tr&igrave;nh 8nm v&agrave; chắc chắn sẽ mang đến một tốc độ xử l&yacute; nhanh hơn thế hệ cũ 9810 rất nhiều. Nh&acirc;n NPU cũng xuất hiện nhằm hỗ trợ c&aacute;c thuật to&aacute;n xử l&yacute; AI. B&ecirc;n cạnh đ&oacute;, mức ti&ecirc;u thụ pin của bộ vi xử l&yacute; n&agrave;y cũng &iacute;t hơn đ&aacute;ng kể. Song song với vi xử l&yacute; mạnh mẽ, Samsung cũng trang bị cho Galaxy S10 Plus bộ nhớ RAM tối thiểu l&agrave; 8GB (cho hai phi&ecirc;n bản 128<strong>/<a href=\"https://cellphones.com.vn/samsung-galaxy-s10-plus-512gb.html\" target=\"_blank\">512GB</a></strong>&nbsp;bộ nhớ trong). Đặc biệt hơn, bản tối đa cấu h&igrave;nh&nbsp;<strong><a href=\"https://cellphones.com.vn/samsung-galaxy-s10-plus-1tb.html\" target=\"_blank\">Galaxy S10 Plus 1TB</a></strong>&nbsp;sẽ sở hữu dung lượng RAM l&ecirc;n đến 12GB.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cellphones.com.vn/media/wysiwyg/mobile/samsung/Samsung-galaxy-s10-plus-chinh-hang-5.jpg\" style=\"height:531px; width:840px\" /></p>\r\n', 1, 320, 62, 10, 18290000, 15290000, '2019-05-22 16:22:43', '4', '2021-06-27 17:11:20', '1', 0, 1),


-- --------------------------------------------------------

--
-- Table structure for table `db_province`
--

CREATE TABLE `db_province` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `db_province`
--

INSERT INTO `db_province` (`id`, `name`, `type`) VALUES
(1, 'Thành phố Hà Nội', 'Thành phố Trung ương'),
(2, 'Tỉnh Hà Giang', 'Tỉnh'),
(4, 'Tỉnh Cao Bằng', 'Tỉnh'),
(6, 'Tỉnh Bắc Kạn', 'Tỉnh'),
(8, 'Tỉnh Tuyên Quang', 'Tỉnh'),
(10, 'Tỉnh Lào Cai', 'Tỉnh'),
(11, 'Tỉnh Điện Biên', 'Tỉnh'),
(12, 'Tỉnh Lai Châu', 'Tỉnh'),
(14, 'Tỉnh Sơn La', 'Tỉnh'),
(15, 'Tỉnh Yên Bái', 'Tỉnh'),
(17, 'Tỉnh Hoà Bình', 'Tỉnh'),
(19, 'Tỉnh Thái Nguyên', 'Tỉnh'),
(20, 'Tỉnh Lạng Sơn', 'Tỉnh'),
(22, 'Tỉnh Quảng Ninh', 'Tỉnh'),
(24, 'Tỉnh Bắc Giang', 'Tỉnh'),
(25, 'Tỉnh Phú Thọ', 'Tỉnh'),
(26, 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
(27, 'Tỉnh Bắc Ninh', 'Tỉnh'),
(30, 'Tỉnh Hải Dương', 'Tỉnh'),
(31, 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
(33, 'Tỉnh Hưng Yên', 'Tỉnh'),
(34, 'Tỉnh Thái Bình', 'Tỉnh'),
(35, 'Tỉnh Hà Nam', 'Tỉnh'),
(36, 'Tỉnh Nam Định', 'Tỉnh'),
(37, 'Tỉnh Ninh Bình', 'Tỉnh'),
(38, 'Tỉnh Thanh Hóa', 'Tỉnh'),
(40, 'Tỉnh Nghệ An', 'Tỉnh'),
(42, 'Tỉnh Hà Tĩnh', 'Tỉnh'),
(44, 'Tỉnh Quảng Bình', 'Tỉnh'),
(45, 'Tỉnh Quảng Trị', 'Tỉnh'),
(46, 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
(48, 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
(49, 'Tỉnh Quảng Nam', 'Tỉnh'),
(51, 'Tỉnh Quảng Ngãi', 'Tỉnh'),
(52, 'Tỉnh Bình Định', 'Tỉnh'),
(54, 'Tỉnh Phú Yên', 'Tỉnh'),
(56, 'Tỉnh Khánh Hòa', 'Tỉnh'),
(58, 'Tỉnh Ninh Thuận', 'Tỉnh'),
(60, 'Tỉnh Bình Thuận', 'Tỉnh'),
(62, 'Tỉnh Kon Tum', 'Tỉnh'),
(64, 'Tỉnh Gia Lai', 'Tỉnh'),
(66, 'Tỉnh Đắk Lắk', 'Tỉnh'),
(67, 'Tỉnh Đắk Nông', 'Tỉnh'),
(68, 'Tỉnh Lâm Đồng', 'Tỉnh'),
(70, 'Tỉnh Bình Phước', 'Tỉnh'),
(72, 'Tỉnh Tây Ninh', 'Tỉnh'),
(74, 'Tỉnh Bình Dương', 'Tỉnh'),
(75, 'Tỉnh Đồng Nai', 'Tỉnh'),
(77, 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
(79, 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
(80, 'Tỉnh Long An', 'Tỉnh'),
(82, 'Tỉnh Tiền Giang', 'Tỉnh'),
(83, 'Tỉnh Bến Tre', 'Tỉnh'),
(84, 'Tỉnh Trà Vinh', 'Tỉnh'),
(86, 'Tỉnh Vĩnh Long', 'Tỉnh'),
(87, 'Tỉnh Đồng Tháp', 'Tỉnh'),
(89, 'Tỉnh An Giang', 'Tỉnh'),
(91, 'Tỉnh Kiên Giang', 'Tỉnh'),
(92, 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
(93, 'Tỉnh Hậu Giang', 'Tỉnh'),
(94, 'Tỉnh Sóc Trăng', 'Tỉnh'),
(95, 'Tỉnh Bạc Liêu', 'Tỉnh'),
(96, 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Table structure for table `db_slider`
--

CREATE TABLE `db_slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_slider`
--

INSERT INTO `db_slider` (`id`, `name`, `link`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(3, 'trang chu 1', 'trang-chu', 'default.png', '2021-07-03 17:05:52', '1', '2022-03-01 20:25:21', '', 0, 1),
(9, 'slider__1', 'slider__1', 'banner_book1.png', '2022-03-01 20:34:47', '1', '2022-03-01 20:34:47', '1', 1, 1),
(10, 'slder__2', 'slder__2', 'banner_book2.png', '2022-03-01 20:35:17', '1', '2022-03-01 20:35:17', '1', 1, 1),
(11, 'slider__3', 'slider__3', 'banner_book3.png', '2022-03-01 20:35:25', '1', '2022-03-01 20:35:25', '1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `username` varchar(225) CHARACTER SET utf8 NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `gender` int(1) NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id`, `fullname`, `username`, `password`, `role`, `email`, `gender`, `phone`, `address`, `img`, `created`, `trash`, `status`) VALUES
(1, 'ADMIN', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'admin@gmail.com', 1, '0983103187', 'Hà Nội', 'user-group.png', '2021-04-23 09:16:16', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_usergroup`
--

CREATE TABLE `db_usergroup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_usergroup`
--

INSERT INTO `db_usergroup` (`id`, `name`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`) VALUES
(1, 'Admin', '2022-02-14 23:29:15', 1, '2021-05-14 23:29:15', 4, 1, 1, 1),
(2, 'User', '2022-02-14 23:29:21', 1, '2021-05-14 23:29:21', 4, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_content`
--
ALTER TABLE `db_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_customer`
--
ALTER TABLE `db_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_discount`
--
ALTER TABLE `db_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_district`
--
ALTER TABLE `db_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matp` (`provinceid`);

--
-- Indexes for table `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `province` (`province`),
  ADD KEY `district` (`district`),
  ADD KEY `province_2` (`province`),
  ADD KEY `district_2` (`district`),
  ADD KEY `province_3` (`province`),
  ADD KEY `district_3` (`district`);

--
-- Indexes for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`),
  ADD KEY `orderid` (`orderid`);

--
-- Indexes for table `db_producer`
--
ALTER TABLE `db_producer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer` (`producer`),
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `db_province`
--
ALTER TABLE `db_province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- Indexes for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `db_config`
--
ALTER TABLE `db_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `db_content`
--
ALTER TABLE `db_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `db_customer`
--
ALTER TABLE `db_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `db_discount`
--
ALTER TABLE `db_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `db_producer`
--
ALTER TABLE `db_producer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `db_district`
--
ALTER TABLE `db_district`
  ADD CONSTRAINT `db_district_ibfk_1` FOREIGN KEY (`provinceid`) REFERENCES `db_province` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_order`
--
ALTER TABLE `db_order`
  ADD CONSTRAINT `db_order_ibfk_2` FOREIGN KEY (`province`) REFERENCES `db_province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_order_ibfk_3` FOREIGN KEY (`district`) REFERENCES `db_district` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_order_ibfk_4` FOREIGN KEY (`customerid`) REFERENCES `db_customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD CONSTRAINT `db_orderdetail_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `db_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_orderdetail_ibfk_3` FOREIGN KEY (`orderid`) REFERENCES `db_order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_product`
--
ALTER TABLE `db_product`
  ADD CONSTRAINT `db_product_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `db_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_product_ibfk_2` FOREIGN KEY (`producer`) REFERENCES `db_producer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_user`
--
ALTER TABLE `db_user`
  ADD CONSTRAINT `db_user_ibfk_1` FOREIGN KEY (`role`) REFERENCES `db_usergroup` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
