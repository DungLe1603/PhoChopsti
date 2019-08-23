-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 18, 2019 lúc 05:50 AM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `goodmath`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_article`
--

CREATE TABLE `olala3w_article` (
  `article_id` int(11) NOT NULL,
  `article_menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `img_note` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `price` float NOT NULL DEFAULT '0',
  `block` int(11) NOT NULL DEFAULT '0',
  `flat` int(11) NOT NULL DEFAULT '0',
  `open_sale` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `upload_id` bigint(20) NOT NULL DEFAULT '0',
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL,
  `linhvuc` text NOT NULL,
  `tamnhin` text NOT NULL,
  `thanhtich` text NOT NULL,
  `doitac` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala3w_article`
--

INSERT INTO `olala3w_article` (`article_id`, `article_menu_id`, `name`, `slug`, `title`, `description`, `keywords`, `img`, `img_note`, `address`, `price`, `block`, `flat`, `open_sale`, `type`, `upload_id`, `comment`, `content`, `is_active`, `hot`, `views`, `created_time`, `modified_time`, `user_id`, `link`, `linhvuc`, `tamnhin`, `thanhtich`, `doitac`) VALUES
(1319, 650, 'Giáo viên mầm non', 'giao-vien-mam-non', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2525, '', '<p>• Trực tiếp tư vấn chương trình học cho phụ huynh; chăm sóc, giải quyết các vấn đề khiếu nại.</p>\r\n\r\n<p>• Thực hiện các chương trình, các hoạt động liên quan công tác tuyển sinh nhằm tăng số lượng học sinh • Thực hiện các chương trình, thủ tục chăm sóc học sinh.</p>\r\n\r\n<p>• Tốt nghiệp Cao đẳng/Đại học;</p>\r\n\r\n<p>• Ngoại hình sáng; Kỹ năng giao tiếp tốt;</p>\r\n\r\n<p>• Có tinh thần cầu tiến và trách nhiệm với công việc;</p>\r\n\r\n<p>• Địa điểm làm việc: Tại các trung tâm thuộc Hệ thống trung tâm Mathnasium Việt Nam.</p>\r\n\r\n<p>• Thời gian làm việc: Ca xoay, nghỉ 01 ngày/tuần. Sáng từ 9h-18h (nghỉ trưa 2h); Chiều 14h-21h.</p>\r\n', 1, 0, 1, 1563375720, 1563375777, 25, '', '', '', '', ''),
(1320, 650, 'Nhân viên tư vấn', 'nhan-vien-tu-van', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2526, '', '<p>• Trực tiếp tư vấn chương trình học cho phụ huynh; chăm sóc, giải quyết các vấn đề khiếu nại.</p>\r\n\r\n<p>• Thực hiện các chương trình, các hoạt động liên quan công tác tuyển sinh nhằm tăng số lượng học sinh • Thực hiện các chương trình, thủ tục chăm sóc học sinh.</p>\r\n\r\n<p>• Tốt nghiệp Cao đẳng/Đại học;</p>\r\n\r\n<p>• Ngoại hình sáng; Kỹ năng giao tiếp tốt;</p>\r\n\r\n<p>• Có tinh thần cầu tiến và trách nhiệm với công việc;</p>\r\n\r\n<p>• Địa điểm làm việc: Tại các trung tâm thuộc Hệ thống trung tâm Mathnasium Việt Nam.</p>\r\n\r\n<p>• Thời gian làm việc: Ca xoay, nghỉ 01 ngày/tuần. Sáng từ 9h-18h (nghỉ trưa 2h); Chiều 14h-21h.</p>\r\n', 1, 0, 1, 1563375780, 1563375791, 25, '', '', '', '', ''),
(1314, 649, 'Trung tâm A', 'trung-tam-a', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2520, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d3833.5113892598015!2d108.23348751438557!3d16.090825543133867!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1zNjktNzEgQsO5aSBExrDGoW5nIEzhu4tjaCwgUS4gU8ahbiBUcsOgLCBUUC4gxJDDoCBO4bq1bmc!5e0!3m2!1svi!2s!4v1563359252906!5m2!1svi!2s\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '<p>Trung tâm A</p>\r\n\r\n<p>Địa chỉ : 69-71 Bùi Dương Lịch, Q. Sơn Trà, TP. Đà Nẵng</p>\r\n\r\n<p>Mobile : 02367.109.808</p>\r\n\r\n<p>Email : sparta.edu.vn@gmail.com</p>\r\n', 1, 0, 1, 1563357660, 1563359525, 25, '', '', '', '', ''),
(1315, 649, 'Cơ sở 2', 'co-so-2', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2521, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.5113892598015!2d108.23348751438557!3d16.090825543133867!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142181e770518ff%3A0xf7906fb72f341855!2zNjkgQsO5aSBExrDGoW5nIEzhu4tjaCwgTuG6oWkgSGnDqm4gxJDDtG5nLCBTxqFuIFRyw6AsIMSQw6AgTuG6tW5nIDU1MDAwMCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1563375433375!5m2!1svi!2s\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '<p>Cơ sở 2</p>\r\n\r\n<p>Địa chỉ : 69-71 Bùi Dương Lịch, Q. Sơn Trà, TP. Đà Nẵng</p>\r\n\r\n<p>Mobile : 02367.109.808</p>\r\n\r\n<p>Email : sparta.edu.vn@gmail.com</p>\r\n', 1, 0, 1, 1563358980, 1563375459, 25, '', '', '', '', ''),
(1316, 649, 'Cơ sở 1', 'co-so-1', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2522, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d3833.5113892598015!2d108.23348751438557!3d16.090825543133867!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1zNjktNzEgQsO5aSBExrDGoW5nIEzhu4tjaCwgUS4gU8ahbiBUcsOgLCBUUC4gxJDDoCBO4bq1bmc!5e0!3m2!1svi!2s!4v1563359252906!5m2!1svi!2s\" width=\"100%\" height=\"300\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '<p>Cơ sở 1</p>\r\n\r\n<p>Địa chỉ : 69-71 Bùi Dương Lịch, Q. Sơn Trà, TP. Đà Nẵng</p>\r\n\r\n<p>Mobile : 02367.109.808</p>\r\n\r\n<p>Email : sparta.edu.vn@gmail.com</p>\r\n', 1, 0, 1, 1563359040, 1563359287, 25, '', '', '', '', ''),
(1317, 650, 'Quản lí trung tâm', 'quan-li-trung-tam', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2523, '', '<p>• Trực tiếp tư vấn chương trình học cho phụ huynh; chăm sóc, giải quyết các vấn đề khiếu nại.</p>\r\n\r\n<p>• Thực hiện các chương trình, các hoạt động liên quan công tác tuyển sinh nhằm tăng số lượng học sinh • Thực hiện các chương trình, thủ tục chăm sóc học sinh.</p>\r\n\r\n<p>• Tốt nghiệp Cao đẳng/Đại học;</p>\r\n\r\n<p>• Ngoại hình sáng; Kỹ năng giao tiếp tốt;</p>\r\n\r\n<p>• Có tinh thần cầu tiến và trách nhiệm với công việc;</p>\r\n\r\n<p>• Địa điểm làm việc: Tại các trung tâm thuộc Hệ thống trung tâm Mathnasium Việt Nam.</p>\r\n\r\n<p>• Thời gian làm việc: Ca xoay, nghỉ 01 ngày/tuần. Sáng từ 9h-18h (nghỉ trưa 2h); Chiều 14h-21h.</p>\r\n', 1, 0, 1, 1563375660, 1563375737, 25, '', '', '', '', ''),
(1318, 650, 'Giáo viên toán tiểu học - trung học', 'giao-vien-toan-tieu-hoc-trung-hoc', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2524, '', '<p>• Trực tiếp tư vấn chương trình học cho phụ huynh; chăm sóc, giải quyết các vấn đề khiếu nại.</p>\r\n\r\n<p>• Thực hiện các chương trình, các hoạt động liên quan công tác tuyển sinh nhằm tăng số lượng học sinh • Thực hiện các chương trình, thủ tục chăm sóc học sinh.</p>\r\n\r\n<p>• Tốt nghiệp Cao đẳng/Đại học;</p>\r\n\r\n<p>• Ngoại hình sáng; Kỹ năng giao tiếp tốt;</p>\r\n\r\n<p>• Có tinh thần cầu tiến và trách nhiệm với công việc;</p>\r\n\r\n<p>• Địa điểm làm việc: Tại các trung tâm thuộc Hệ thống trung tâm Mathnasium Việt Nam.</p>\r\n\r\n<p>• Thời gian làm việc: Ca xoay, nghỉ 01 ngày/tuần. Sáng từ 9h-18h (nghỉ trưa 2h); Chiều 14h-21h.</p>\r\n', 1, 0, 1, 1563375720, 1563375759, 25, '', '', '', '', ''),
(1313, 646, 'Chinh phục toán nâng cao 1', 'chinh-phuc-toan-nang-cao-1', '', '', '', 'chinh-phuc-toan-nang-cao-1-1563266807.png', '', '', 0, 0, 0, 0, 0, 2519, 'Phù hợp với những học sinh đã nắm được gần hết kiến thức Toán cơ bản', '<p><img src=\"../images/fv.png\" /></p>\r\n\r\n<h5>Chinh phục Toán cơ bản</h5>\r\n\r\n<h6>1. Giá trị của khoá học</h6>\r\n\r\n<p>Ở độ tuổi này, trẻ được bắt đầu làm quen với các con số, tuy nhiên để việc nắm bắt này không mang tính chất học vẹt, trẻ cần phải được hướng dẫn thấu hiểu và nắm bắt ý nghĩa các con số. Việc hiểu các con số sẽ làm tăng khả năng tư duy linh hoạt, nắm bắt vấn đề một cách sâu sắc. Muốn có khả năng hiểu các con số một cách chính xác, trẻ phải biết kết hợp những kiến thức học được từ giáo viên với những tình huống xảy ra ngoài cuộc sống thông qua rèn luyện thường xuyên.</p>\r\n\r\n<h6>2. Nội dung khoá học</h6>\r\n\r\n<p class=\"activang\">Ý nghĩa của con số</p>\r\n\r\n<p>Làm quen các con số - tạo bước đệm cho trẻ chưa biết về mặt số. Giúp trẻ ghi nhớ mặt số qua các trò chơi và tưởng tượng từ thực tế. Đa dạng các hoạt động bằng những hình ảnh độc đáo, vui nhộn.</p>\r\n\r\n<p class=\"activang\">Đếm số và viết số</p>\r\n\r\n<p>Học đếm các con số thật dễ dàng theo từng nhóm từ đơn giản đến phức tạp trong phạm vi 20. Viết số với những hình ảnh thú vị, vui vẻ giúp trẻ thích thú trong việc học số.</p>\r\n\r\n<p class=\"activang\">Đo lường và so sánh</p>\r\n\r\n<p>Giúp trẻ hiểu được khái niệm cơ bản như thế nào là độ dài, so sánh được độ dài – ngắn của một vật cụ thể. Giúp trẻ hiểu được khái niệm về trọng lượng, biết cách ước chừng trọng lượng của một vật nào đó, biết phân biệt vật nào nặng hơn, vật nào nhẹ hơn và ứng dụng linh động trong đời số</p>\r\n\r\n<p class=\"activang\">Hình học</p>\r\n\r\n<p>Hình học có thể là một từ ngữ khó hình dung đối với trẻ, tuy nhiên bằng cách tận dụng những đồ vật trực quan, hình ảnh thực tế và cách dạy khoa học, tên của những hình như: hình tam giác, hình chữ nhật… sẽ đi vào trí nhớ của trẻ một cách dễ dàng.</p>\r\n\r\n<p class=\"activang\">Tư duy logic</p>\r\n\r\n<p>Luyện tập cho trẻ khả năng tư duy logic, tìm ra những quy luật của hình ảnh nói riêng. Từ đó trẻ có thể vận dụng tìm ra quy luật trong cuộc sống nói chung để xử lý tình huống một cách thông minh và nhanh nhạy. Những bài toán về tư duy này còn giúp trí não của trẻ phát triển vượt trội.</p>\r\n', 1, 0, 6, 1563266760, 1563352868, 25, '', '', '', '', ''),
(1305, 645, 'Đối tác 4', 'doi-tac-4', '', '', '', 'doi-tac-4-1563263536.png', '', '', 0, 0, 0, 0, 0, 2511, '', '', 1, 0, 1, 1563263520, 1563263536, 25, '', '', '', '', ''),
(1306, 645, 'Đối tác 5', 'doi-tac-5', '', '', '', 'doi-tac-5-1563263547.png', '', '', 0, 0, 0, 0, 0, 2512, '', '', 1, 0, 1, 1563263520, 1563263547, 25, '', '', '', '', ''),
(1307, 645, 'Đối tác 6', 'doi-tac-6', '', '', '', 'doi-tac-6-1563263559.png', '', '', 0, 0, 0, 0, 0, 2513, '', '', 1, 0, 1, 1563263520, 1563263559, 25, '', '', '', '', ''),
(1308, 645, 'Đối tác 7', 'doi-tac-7', '', '', '', 'doi-tac-7-1563263690.png', '', '', 0, 0, 0, 0, 0, 2514, '', '', 1, 0, 1, 1563263640, 1563263690, 25, '', '', '', '', ''),
(1309, 645, 'Đối tác 8', 'doi-tac-8', '', '', '', 'doi-tac-8-1563263703.png', '', '', 0, 0, 0, 0, 0, 2515, '', '', 1, 0, 1, 1563263640, 1563263703, 25, '', '', '', '', ''),
(1310, 645, 'Đối tác 9', 'doi-tac-9', '', '', '', 'doi-tac-9-1563263715.png', '', '', 0, 0, 0, 0, 0, 2516, '', '', 1, 0, 1, 1563263700, 1563263715, 25, '', '', '', '', ''),
(1311, 645, 'Đối tác 10', 'doi-tac-10', '', '', '', 'doi-tac-10-1563263726.png', '', '', 0, 0, 0, 0, 0, 2517, '', '', 1, 0, 1, 1563263700, 1563263726, 25, '', '', '', '', ''),
(1312, 644, 'Chương trình học', 'chuong-trinh-hoc', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2518, '', '<p>Chúng tôi tâm niệm “học tập là hạt giống của kiến thức, kiến thức là hạt giống của hạnh phúc”, chính vì lẽ đó chúng tôi luôn đề cao và thấu hiểu vai trò của chủ trương “ học phải ứng dụng” đối với sự phát triển của mỗi cá nhân trong một môi trường giáo dục đang đổi thay từng ngày.</p>\r\n            <p>Mục tiêu hướng đến trong sự nghiệp trồng người của GoodMath chính là tạo cho trẻ một môi trường học tập hiện đại, thân thiện và hài hòa, trong đó tập trung vào sự phát triển toàn diện về trí tuệ, tình cảm, thẩm mỹ, sức khỏe và nhân cách của trẻ, tăng cường năng lực cá nhân trong một môi trường năng động và hội nhập quốc tế.</p>', 1, 0, 1, 1563264660, 1563264697, 25, '', '', '', '', ''),
(1292, 654, 'Học viên', 'hoc-vien', '', '', '', 'hoc-vien-1563259968.png', '', '', 0, 0, 0, 0, 0, 2498, '4000', '', 1, 0, 1, 1563259920, 1563259968, 25, '', '', '', '', ''),
(1293, 654, 'Kinh nghiệm', 'kinh-nghiem', '', '', '', 'kinh-nghiem-1563259986.png', '', '', 0, 0, 0, 0, 0, 2499, '5 năm', '', 1, 0, 1, 1563259920, 1563259986, 25, '', '', '', '', ''),
(1294, 643, 'Chu Thị Thanh Thảo', 'chu-thi-thanh-thao', '', '', '', 'chu-thi-thanh-thao-1563261325.png', '', '', 0, 0, 0, 0, 0, 2500, 'Giáo viên', '', 1, 0, 1, 1563261180, 1563261325, 25, '', '', '', '', ''),
(1295, 643, 'Nguyễn Bích Phượng', 'nguyen-bich-phuong', '', '', '', 'nguyen-bich-phuong-1563261340.png', '', '', 0, 0, 0, 0, 0, 2501, 'Giáo viên', '', 1, 0, 1, 1563261300, 1563261340, 25, '', '', '', '', ''),
(1296, 643, 'Phạm Thị Huyền', 'pham-thi-huyen', '', '', '', 'pham-thi-huyen-1563261359.png', '', '', 0, 0, 0, 0, 0, 2502, 'Giáo viên', '', 1, 0, 1, 1563261300, 1563261359, 25, '', '', '', '', ''),
(1297, 643, 'Hoàng Thị Kim Hoa', 'hoang-thi-kim-hoa', '', '', '', 'hoang-thi-kim-hoa-1563261379.png', '', '', 0, 0, 0, 0, 0, 2503, 'Giáo viên', '', 1, 0, 1, 1563261360, 1563261379, 25, '', '', '', '', ''),
(1298, 643, 'Nguyễn Thị Nhung', 'nguyen-thi-nhung', '', '', '', 'nguyen-thi-nhung-1563261399.png', '', '', 0, 0, 0, 0, 0, 2504, 'Giáo viên', '', 1, 0, 1, 1563261360, 1563261656, 25, '', '', '', '', ''),
(1299, 643, 'Nguyễn Thanh Hương', 'nguyen-thanh-huong', '', '', '', 'nguyen-thanh-huong-1563261413.png', '', '', 0, 0, 0, 0, 0, 2505, 'Giáo viên', '', 1, 0, 1, 1563261360, 1563261679, 25, '', '', '', '', ''),
(1300, 643, 'Trịnh Xuân Nghĩa', 'trinh-xuan-nghia', '', '', '', 'trinh-xuan-nghia-1563261429.png', '', '', 0, 0, 0, 0, 0, 2506, 'Giáo viên', '', 1, 0, 1, 1563261360, 1563261429, 25, '', '', '', '', ''),
(1301, 643, 'Dương Thị Nhẫn', 'duong-thi-nhan', '', '', '', 'duong-thi-nhan-1563261446.png', '', '', 0, 0, 0, 0, 0, 2507, 'Giáo viên', '', 1, 0, 1, 1563261420, 1563261446, 25, '', '', '', '', ''),
(1302, 645, 'Đối tác 1', 'doi-tac-1', '', '', '', 'doi-tac-1-1563263491.png', '', '', 0, 0, 0, 0, 0, 2508, '', '', 1, 0, 1, 1563263460, 1563263491, 25, '', '', '', '', ''),
(1303, 645, 'Đối tác 2', 'doi-tac-2', '', '', '', 'doi-tac-2-1563263512.png', '', '', 0, 0, 0, 0, 0, 2509, '', '', 1, 0, 1, 1563263460, 1563263512, 25, '', '', '', '', ''),
(1304, 645, 'Đối tác 3', 'doi-tac-3', '', '', '', 'doi-tac-3-1563264226.png', '', '', 0, 0, 0, 0, 0, 2510, '', '', 1, 0, 1, 1563263460, 1563264226, 25, '', '', '', '', ''),
(1291, 654, 'Tiết học', 'tiet-hoc', '', '', '', 'tiet-hoc-1563259947.png', '', '', 0, 0, 0, 0, 0, 2497, '12000', '', 1, 0, 1, 1563259920, 1563259947, 25, '', '', '', '', ''),
(1290, 654, 'Giáo viên', 'giao-vien', '', '', '', 'giao-vien-1563259924.png', '', '', 0, 0, 0, 0, 0, 2496, '120', '', 1, 0, 1, 1563259860, 1563259924, 25, '', '', '', '', ''),
(1289, 646, 'Lớp nền tảng', 'lop-nen-tang-vxcn6qzoc4', '', '', '', 'lop-nen-tang-1563266644.png', '', '', 0, 0, 0, 0, 0, 2495, 'Phù hợp với những học sinh đang mất gốc môn Toán', '<p><img src=\"../images/fv.png\" /></p>\r\n\r\n<h5>Chinh phục Toán cơ bản</h5>\r\n\r\n<h6>1. Giá trị của khoá học</h6>\r\n\r\n<p>Ở độ tuổi này, trẻ được bắt đầu làm quen với các con số, tuy nhiên để việc nắm bắt này không mang tính chất học vẹt, trẻ cần phải được hướng dẫn thấu hiểu và nắm bắt ý nghĩa các con số. Việc hiểu các con số sẽ làm tăng khả năng tư duy linh hoạt, nắm bắt vấn đề một cách sâu sắc. Muốn có khả năng hiểu các con số một cách chính xác, trẻ phải biết kết hợp những kiến thức học được từ giáo viên với những tình huống xảy ra ngoài cuộc sống thông qua rèn luyện thường xuyên.</p>\r\n\r\n<h6>2. Nội dung khoá học</h6>\r\n\r\n<p class=\"activang\">Ý nghĩa của con số</p>\r\n\r\n<p>Làm quen các con số - tạo bước đệm cho trẻ chưa biết về mặt số. Giúp trẻ ghi nhớ mặt số qua các trò chơi và tưởng tượng từ thực tế. Đa dạng các hoạt động bằng những hình ảnh độc đáo, vui nhộn.</p>\r\n\r\n<p class=\"activang\">Đếm số và viết số</p>\r\n\r\n<p>Học đếm các con số thật dễ dàng theo từng nhóm từ đơn giản đến phức tạp trong phạm vi 20. Viết số với những hình ảnh thú vị, vui vẻ giúp trẻ thích thú trong việc học số.</p>\r\n\r\n<p class=\"activang\">Đo lường và so sánh</p>\r\n\r\n<p>Giúp trẻ hiểu được khái niệm cơ bản như thế nào là độ dài, so sánh được độ dài – ngắn của một vật cụ thể. Giúp trẻ hiểu được khái niệm về trọng lượng, biết cách ước chừng trọng lượng của một vật nào đó, biết phân biệt vật nào nặng hơn, vật nào nhẹ hơn và ứng dụng linh động trong đời số</p>\r\n\r\n<p class=\"activang\">Hình học</p>\r\n\r\n<p>Hình học có thể là một từ ngữ khó hình dung đối với trẻ, tuy nhiên bằng cách tận dụng những đồ vật trực quan, hình ảnh thực tế và cách dạy khoa học, tên của những hình như: hình tam giác, hình chữ nhật… sẽ đi vào trí nhớ của trẻ một cách dễ dàng.</p>\r\n\r\n<p class=\"activang\">Tư duy logic</p>\r\n\r\n<p>Luyện tập cho trẻ khả năng tư duy logic, tìm ra những quy luật của hình ảnh nói riêng. Từ đó trẻ có thể vận dụng tìm ra quy luật trong cuộc sống nói chung để xử lý tình huống một cách thông minh và nhanh nhạy. Những bài toán về tư duy này còn giúp trí não của trẻ phát triển vượt trội.</p>\r\n', 1, 0, 7, 1563251340, 1563352769, 25, '', '', '', '', ''),
(1274, 646, 'Chinh phục toán cơ bản', 'chinh-phuc-toan-co-ban', '', '', '', 'chinh-phuc-toan-co-ban-1563266682.png', '', '', 0, 0, 0, 0, 0, 2479, 'Phù hợp với những học sinh đã nắm được kiến thức Toán nền tảng', '<img src=\"../images/fv.png\">\r\n        			<h5>Chinh phục Toán cơ bản</h5>\r\n        			<h6>1. 	Giá trị của khoá học</h6>\r\n        			<p>Ở độ tuổi này, trẻ được bắt đầu làm quen với các con số, tuy nhiên để việc nắm bắt này không mang tính chất học vẹt, trẻ cần phải được hướng dẫn thấu hiểu và nắm bắt ý nghĩa các con số. Việc hiểu các con số sẽ làm tăng khả năng tư duy linh hoạt, nắm bắt vấn đề một cách sâu sắc. Muốn có khả năng hiểu các con số một cách chính xác, trẻ phải biết kết hợp những kiến thức học được từ giáo viên với những tình huống xảy ra ngoài cuộc sống thông qua rèn luyện thường xuyên.</p>\r\n        			<h6>2. 	Nội dung khoá học</h6>\r\n        			<p class=\"activang\">Ý nghĩa của con số</p>\r\n        			<p>Làm quen các con số - tạo bước đệm cho trẻ chưa biết về mặt số. Giúp trẻ ghi nhớ mặt số qua các trò chơi và tưởng tượng từ thực tế. Đa dạng các hoạt động bằng những hình ảnh độc đáo, vui nhộn.</p>\r\n        			<p class=\"activang\">Đếm số và viết số</p>\r\n        			<p>Học đếm các con số thật dễ dàng theo từng nhóm từ đơn giản đến phức tạp trong phạm vi 20. Viết số với những hình ảnh thú vị, vui vẻ giúp trẻ thích thú trong việc học số.</p>\r\n        			<p class=\"activang\">Đo lường và so sánh</p>\r\n        			<p>Giúp trẻ hiểu được khái niệm cơ bản như thế nào là độ dài, so sánh được độ dài – ngắn của một vật cụ thể. Giúp trẻ hiểu được khái niệm về trọng lượng, biết cách ước chừng trọng lượng của một vật nào đó, biết phân biệt vật nào nặng hơn, vật nào nhẹ hơn và ứng dụng linh động trong đời số</p>\r\n        			<p class=\"activang\">Hình học</p>\r\n        			<p>Hình học có thể là một từ ngữ khó hình dung đối với trẻ, tuy nhiên bằng cách tận dụng những đồ vật trực quan, hình ảnh thực tế và cách dạy khoa học, tên của những hình như: hình tam giác, hình chữ nhật… sẽ đi vào trí nhớ của trẻ một cách dễ dàng.</p>\r\n        			<p class=\"activang\">Tư duy logic</p>\r\n        			<p>Luyện tập cho trẻ khả năng tư duy logic, tìm ra những quy luật của hình ảnh nói riêng. Từ đó trẻ có thể vận dụng tìm ra quy luật trong cuộc sống nói chung để xử lý tình huống một cách thông minh và nhanh nhạy. Những bài toán về tư duy này còn giúp trí não của trẻ phát triển vượt trội.</p>', 1, 0, 3, 1563205500, 1563352875, 25, '', '', '', '', ''),
(1275, 646, 'Chinh phục toán nâng cao', 'chinh-phuc-toan-nang-cao', '', '', '', 'chinh-phuc-toan-nang-cao-1563266768.png', '', '', 0, 0, 0, 0, 0, 2480, 'Phù hợp với những học sinh đã nắm được gần hết kiến thức Toán cơ bản', '<img src=\"../images/fv.png\">\r\n        			<h5>Chinh phục Toán cơ bản</h5>\r\n        			<h6>1. 	Giá trị của khoá học</h6>\r\n        			<p>Ở độ tuổi này, trẻ được bắt đầu làm quen với các con số, tuy nhiên để việc nắm bắt này không mang tính chất học vẹt, trẻ cần phải được hướng dẫn thấu hiểu và nắm bắt ý nghĩa các con số. Việc hiểu các con số sẽ làm tăng khả năng tư duy linh hoạt, nắm bắt vấn đề một cách sâu sắc. Muốn có khả năng hiểu các con số một cách chính xác, trẻ phải biết kết hợp những kiến thức học được từ giáo viên với những tình huống xảy ra ngoài cuộc sống thông qua rèn luyện thường xuyên.</p>\r\n        			<h6>2. 	Nội dung khoá học</h6>\r\n        			<p class=\"activang\">Ý nghĩa của con số</p>\r\n        			<p>Làm quen các con số - tạo bước đệm cho trẻ chưa biết về mặt số. Giúp trẻ ghi nhớ mặt số qua các trò chơi và tưởng tượng từ thực tế. Đa dạng các hoạt động bằng những hình ảnh độc đáo, vui nhộn.</p>\r\n        			<p class=\"activang\">Đếm số và viết số</p>\r\n        			<p>Học đếm các con số thật dễ dàng theo từng nhóm từ đơn giản đến phức tạp trong phạm vi 20. Viết số với những hình ảnh thú vị, vui vẻ giúp trẻ thích thú trong việc học số.</p>\r\n        			<p class=\"activang\">Đo lường và so sánh</p>\r\n        			<p>Giúp trẻ hiểu được khái niệm cơ bản như thế nào là độ dài, so sánh được độ dài – ngắn của một vật cụ thể. Giúp trẻ hiểu được khái niệm về trọng lượng, biết cách ước chừng trọng lượng của một vật nào đó, biết phân biệt vật nào nặng hơn, vật nào nhẹ hơn và ứng dụng linh động trong đời số</p>\r\n        			<p class=\"activang\">Hình học</p>\r\n        			<p>Hình học có thể là một từ ngữ khó hình dung đối với trẻ, tuy nhiên bằng cách tận dụng những đồ vật trực quan, hình ảnh thực tế và cách dạy khoa học, tên của những hình như: hình tam giác, hình chữ nhật… sẽ đi vào trí nhớ của trẻ một cách dễ dàng.</p>\r\n        			<p class=\"activang\">Tư duy logic</p>\r\n        			<p>Luyện tập cho trẻ khả năng tư duy logic, tìm ra những quy luật của hình ảnh nói riêng. Từ đó trẻ có thể vận dụng tìm ra quy luật trong cuộc sống nói chung để xử lý tình huống một cách thông minh và nhanh nhạy. Những bài toán về tư duy này còn giúp trí não của trẻ phát triển vượt trội.</p>', 1, 0, 1, 1563205500, 1563352881, 25, '', '', '', '', ''),
(1276, 652, 'Khoá hè Good Math 2019 – Cho con mùa hè đầy trải nghiệm', 'khoa-he-good-math-2019-cho-con-mua-he-day-trai-nghiem', '', '', '', 'khoa-he-good-math-2019-cho-con-mua-he-day-trai-nghiem-1563206795.png', '', '', 0, 0, 0, 0, 0, 2481, 'Hiểu được những suy nghĩ của con, Hè đến cũng là lúc ba mẹ lại sốt sắng đi tìm các khóa hè, trại hè hoặc các khóa năng khiếu để con có thể thoải mái vừa học vừa chơi mà không bị áp lực hay quá tải trong dịp hè.', '', 1, 0, 1, 1563206760, 1563348559, 25, '', '', '', '', ''),
(1277, 652, '3 BƯỚC ĐƠN GIẢN ĐỂ CẢI THIỆN MÔN TOÁN TRONG THỜI GIAN NGẮN', '3-buoc-don-gian-de-cai-thien-mon-toan-trong-thoi-gian-ngan', '', '', '', '3-buoc-don-gian-de-cai-thien-mon-toan-trong-thoi-gian-ngan-1563206812.png', '', '', 0, 0, 0, 0, 0, 2482, 'Hiểu được những suy nghĩ của con, Hè đến cũng là lúc ba mẹ lại sốt sắng đi tìm các khóa hè, trại hè hoặc các khóa năng khiếu để con có thể thoải mái vừa học vừa chơi mà không bị áp lực hay quá tải trong dịp hè.', '', 1, 0, 1, 1563206760, 1563348565, 25, '', '', '', '', ''),
(1278, 652, 'ĐÂU LÀ MÙA HÈ LÍ TƯỞNG TRONG MẮT TRẺ?', 'dau-la-mua-he-li-tuong-trong-mat-tre', '', '', '', 'dau-la-mua-he-li-tuong-trong-mat-tre-1563206828.png', '', '', 0, 0, 0, 0, 0, 2483, 'Hiểu được những suy nghĩ của con, Hè đến cũng là lúc ba mẹ lại sốt sắng đi tìm các khóa hè, trại hè hoặc các khóa năng khiếu để con có thể thoải mái vừa học vừa chơi mà không bị áp lực hay quá tải trong dịp hè.', '', 1, 0, 1, 1563206760, 1563348572, 25, '', '', '', '', ''),
(1279, 652, 'TƯ DUY SÁNG TẠO ĐẶC BIỆT QUAN TRỌNG VỚI SỰ PHÁT TRIỂN CỦA TRẺ', 'tu-duy-sang-tao-dac-biet-quan-trong-voi-su-phat-trien-cua-tre', '', '', '', 'tu-duy-sang-tao-dac-biet-quan-trong-voi-su-phat-trien-cua-tre-1563206842.png', '', '', 0, 0, 0, 0, 0, 2484, 'Hiểu được những suy nghĩ của con, Hè đến cũng là lúc ba mẹ lại sốt sắng đi tìm các khóa hè, trại hè hoặc các khóa năng khiếu để con có thể thoải mái vừa học vừa chơi mà không bị áp lực hay quá tải trong dịp hè.', '<p><img src=\"../images/fv.png\" width=\"100%\" /></p>\r\n\r\n<h5>Chinh phục Toán cơ bản</h5>\r\n\r\n<h6>1. Giá trị của khoá học</h6>\r\n\r\n<p>Ở độ tuổi này, trẻ được bắt đầu làm quen với các con số, tuy nhiên để việc nắm bắt này không mang tính chất học vẹt, trẻ cần phải được hướng dẫn thấu hiểu và nắm bắt ý nghĩa các con số. Việc hiểu các con số sẽ làm tăng khả năng tư duy linh hoạt, nắm bắt vấn đề một cách sâu sắc. Muốn có khả năng hiểu các con số một cách chính xác, trẻ phải biết kết hợp những kiến thức học được từ giáo viên với những tình huống xảy ra ngoài cuộc sống thông qua rèn luyện thường xuyên.</p>\r\n\r\n<h6>2. Nội dung khoá học</h6>\r\n\r\n<p class=\"activang\">Ý nghĩa của con số</p>\r\n\r\n<p>Làm quen các con số - tạo bước đệm cho trẻ chưa biết về mặt số. Giúp trẻ ghi nhớ mặt số qua các trò chơi và tưởng tượng từ thực tế. Đa dạng các hoạt động bằng những hình ảnh độc đáo, vui nhộn.</p>\r\n\r\n<p class=\"activang\">Đếm số và viết số</p>\r\n\r\n<p>Học đếm các con số thật dễ dàng theo từng nhóm từ đơn giản đến phức tạp trong phạm vi 20. Viết số với những hình ảnh thú vị, vui vẻ giúp trẻ thích thú trong việc học số.</p>\r\n\r\n<p class=\"activang\">Đo lường và so sánh</p>\r\n\r\n<p>Giúp trẻ hiểu được khái niệm cơ bản như thế nào là độ dài, so sánh được độ dài – ngắn của một vật cụ thể. Giúp trẻ hiểu được khái niệm về trọng lượng, biết cách ước chừng trọng lượng của một vật nào đó, biết phân biệt vật nào nặng hơn, vật nào nhẹ hơn và ứng dụng linh động trong đời số</p>\r\n\r\n<p class=\"activang\">Hình học</p>\r\n\r\n<p>Hình học có thể là một từ ngữ khó hình dung đối với trẻ, tuy nhiên bằng cách tận dụng những đồ vật trực quan, hình ảnh thực tế và cách dạy khoa học, tên của những hình như: hình tam giác, hình chữ nhật… sẽ đi vào trí nhớ của trẻ một cách dễ dàng.</p>\r\n\r\n<p class=\"activang\">Tư duy logic</p>\r\n\r\n<p>Luyện tập cho trẻ khả năng tư duy logic, tìm ra những quy luật của hình ảnh nói riêng. Từ đó trẻ có thể vận dụng tìm ra quy luật trong cuộc sống nói chung để xử lý tình huống một cách thông minh và nhanh nhạy. Những bài toán về tư duy này còn giúp trí não của trẻ phát triển vượt trội.</p>\r\n', 1, 0, 30, 1563206820, 1563354912, 25, '', '', '', '', ''),
(1280, 652, '5 BƯỚC QUAN TRỌNG GIÚP CON VƯỢT QUA CÁC KỲ THI', '5-buoc-quan-trong-giup-con-vuot-qua-cac-ky-thi', '', '', '', '5-buoc-quan-trong-giup-con-vuot-qua-cac-ky-thi-1563206856.png', '', '', 0, 0, 0, 0, 0, 2485, 'Hiểu được những suy nghĩ của con, Hè đến cũng là lúc ba mẹ lại sốt sắng đi tìm các khóa hè, trại hè hoặc các khóa năng khiếu để con có thể thoải mái vừa học vừa chơi mà không bị áp lực hay quá tải trong dịp hè.', '', 1, 0, 1, 1563206820, 1563348546, 25, '', '', '', '', ''),
(1281, 652, '3 BƯỚC ĐƠN GIẢN ĐỂ CẢI THIỆN MÔN TOÁN', '3-buoc-don-gian-de-cai-thien-mon-toan', '', '', '', '3-buoc-don-gian-de-cai-thien-mon-toan-1563206881.png', '', '', 0, 0, 0, 0, 0, 2486, 'Hiểu được những suy nghĩ của con, Hè đến cũng là lúc ba mẹ lại sốt sắng đi tìm các khóa hè, trại hè hoặc các khóa năng khiếu để con có thể thoải mái vừa học vừa chơi mà không bị áp lực hay quá tải trong dịp hè.', '', 1, 0, 1, 1563206820, 1563348553, 25, '', '', '', '', ''),
(1282, 653, 'Nguyễn Văn A', 'nguyen-van-a', '', '', '', 'nguyen-van-a-1563243790.png', '', '', 0, 0, 0, 0, 0, 2487, '', '<p>\"Tôi rất hài lòng về chất lượng giảng dạy của Trung tâm GoodMath. Con trai tôi đã có rất nhiều tiến bộ sau khi học ở đây. Hy vọng rằng con tôi sẽ chinh phục Toán thành công” A</p>\r\n', 1, 0, 1, 1563243720, 1563245471, 25, '', '', '', '', ''),
(1283, 653, 'Nguyễn Văn B', 'nguyen-van-b', '', '', '', 'nguyen-van-b-1563243807.png', '', '', 0, 0, 0, 0, 0, 2488, '', '<p>\"Tôi rất hài lòng về chất lượng giảng dạy của Trung tâm GoodMath. Con trai tôi đã có rất nhiều tiến bộ sau khi học ở đây. Hy vọng rằng con tôi sẽ chinh phục Toán thành công” B</p>\r\n', 1, 0, 1, 1563243780, 1563245451, 25, '', '', '', '', ''),
(1284, 653, 'Nguyễn Văn C', 'nguyen-van-c', '', '', '', 'nguyen-van-c-1563243834.png', '', '', 0, 0, 0, 0, 0, 2489, '', '<p>\"Tôi rất hài lòng về chất lượng giảng dạy của Trung tâm GoodMath. Con trai tôi đã có rất nhiều tiến bộ sau khi học ở đây. Hy vọng rằng con tôi sẽ chinh phục Toán thành công” C</p>\r\n', 1, 0, 1, 1563243780, 1563245458, 25, '', '', '', '', ''),
(1285, 653, 'Nguyễn Văn D', 'nguyen-van-d', '', '', '', 'nguyen-van-d-1563243851.png', '', '', 0, 0, 0, 0, 0, 2490, '', '<p>\"Tôi rất hài lòng về chất lượng giảng dạy của Trung tâm GoodMath. Con trai tôi đã có rất nhiều tiến bộ sau khi học ở đây. Hy vọng rằng con tôi sẽ chinh phục Toán thành công” D</p>\r\n', 1, 0, 1, 1563243780, 1563245465, 25, '', '', '', '', ''),
(1286, 653, 'Nguyễn Văn E', 'nguyen-van-e', '', '', '', 'nguyen-van-e-1563243867.png', '', '', 0, 0, 0, 0, 0, 2491, '', '<p>\"Tôi rất hài lòng về chất lượng giảng dạy của Trung tâm GoodMath. Con trai tôi đã có rất nhiều tiến bộ sau khi học ở đây. Hy vọng rằng con tôi sẽ chinh phục Toán thành công”E</p>\r\n', 1, 0, 1, 1563243840, 1563245443, 25, '', '', '', '', ''),
(1287, 653, 'Nguyễn  Văn F', 'nguyen-van-f', '', '', '', 'nguyen-van-f-1563246970.png', '', '', 0, 0, 0, 0, 0, 2492, '', '<p>\"Tôi rất hài lòng về chất lượng giảng dạy của Trung tâm GoodMath. Con trai tôi đã có rất nhiều tiến bộ sau khi học ở đây. Hy vọng rằng con tôi sẽ chinh phục Toán thành công”</p>\r\n', 1, 0, 1, 1563246900, 1563246970, 25, '', '', '', '', ''),
(1288, 642, 'Về Good Math', 've-good-math-2prnljaa4d', '', '', '', 'no', '', '', 0, 0, 0, 0, 0, 2494, '', '<div class=\"col-md-5 col-sm-5 col-xs-5 imgleftgt\">\r\n<div class=\"imggthieulf\"><img src=\"../images/vgm.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-md-7 col-sm-7 col-xs-7 ctrightgt\">\r\n<div class=\"trctrggthieu\">\r\n<h3>VỀ GOOD MATH</h3>\r\n\r\n<p>Trung tâm GoodMath được thành lập tháng 10/2008 với trụ sở chính tại Số 11, ngách 92, ngõ Văn Chương, Phường Văn Chương, Quận Đống Đa, TP Hà Nội. UCMAS Việt Nam là đại lý chính thống thuộc hệ thống UCMAS Quốc tế và là đại lý độc quyền của UCMAS Quốc tế tại Việt Nam. Th.s Thành Minh Hiền – Giám đốc Công ty Cổ phần phát triển Giáo dục (IECC), người tiên phong đưa chương trình bàn tính và số học trí tuệ UCMAS vào Việt Nam với phương châm “Đào tạo với sự khác biệt”.</p>\r\n\r\n<p>GoodMath muốn đem đến cho trẻ em - thế hệ tương lai của đất nước những suy nghĩ đúng đắn, phát huy được tính sáng tạo và khả năng tư duy lôgic. Thông qua công cụ tính toán là chiếc bàn tính, các con số và phép tính, giúp các em khơi dậy tiềm năng của bộ não và sử dụng chúng hiệu quả</p>\r\n</div>\r\n</div>\r\n', 1, 0, 1, 1563251220, 1563264477, 25, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_article_menu`
--

CREATE TABLE `olala3w_article_menu` (
  `article_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `icon` text NOT NULL,
  `plus` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `img1` varchar(255) NOT NULL DEFAULT 'no'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala3w_article_menu`
--

INSERT INTO `olala3w_article_menu` (`article_menu_id`, `category_id`, `name`, `slug`, `title`, `description`, `keywords`, `parent`, `sort`, `comment`, `icon`, `plus`, `is_active`, `hot`, `img`, `created_time`, `modified_time`, `user_id`, `img1`) VALUES
(654, 1, 'Số liệu', 'so-lieu', '', '', '', 0, 5, '', '', '								', 1, 0, 'no', 1563259820, 1563259820, 25, 'no'),
(642, 1, 'Về Good Math', 've-good-math', '', '', '', 0, 1, '', '', '																																', 1, 1, 've-good-math-1563203976.png', 1563000228, 1563203976, 25, 'no'),
(643, 1, 'Đội ngũ giảng dạy', 'doi-ngu-giang-day', '', '', '', 0, 2, '', '', '																																', 1, 1, 'doi-ngu-giang-day-1563203984.png', 1563000259, 1563203984, 25, 'no'),
(644, 1, 'Chương trình học - đối tác', 'chuong-trinh-hoc-doi-tac', '', '', '', 0, 3, '', '', '																																								', 1, 1, 'chuong-trinh-hoc-doi-tac-1563203991.png', 1563000305, 1563203991, 25, 'no'),
(645, 1, 'Đối tác', 'doi-tac', '', '', '', 0, 4, '', '', '								', 1, 0, 'no', 1563000314, 1563000314, 25, 'no'),
(646, 2, 'Lớp nền tảng', 'lop-nen-tang', '', '', '', 0, 1, '', '', '								', 1, 0, 'no', 1563183291, 1563183291, 25, 'no'),
(647, 2, 'Toán cơ bản', 'toan-co-ban', '', '', '', 0, 2, '', '', '								', 1, 0, 'no', 1563183305, 1563183305, 25, 'no'),
(648, 2, 'Toán nâng cao', 'toan-nang-cao', '', '', '', 0, 3, '', '', '								', 1, 0, 'no', 1563183315, 1563183315, 25, 'no'),
(649, 4, 'Hệ thống đối tác', 'he-thong-doi-tac', '', '', '', 0, 1, '', '', '								', 1, 0, 'no', 1563183442, 1563183442, 25, 'no'),
(650, 4, 'Cơ hội nghề nghiệp', 'co-hoi-nghe-nghiep', '', '', '', 0, 2, '', '', '								', 1, 0, 'no', 1563183454, 1563183454, 25, 'no'),
(651, 4, 'Liên hệ dành cho phụ huynh', 'lien-he-danh-cho-phu-huynh', '', '', '', 0, 3, '', '', '								', 1, 0, 'no', 1563183464, 1563183464, 25, 'no'),
(652, 3, 'Tin tức - sự kiện Good Math', 'tin-tuc-su-kien-good-math', '', '', '', 0, 1, '', '', '								', 1, 0, 'no', 1563206671, 1563206671, 25, 'no'),
(653, 6, 'ý kiến khách hàng', 'y-kien-khach-hang-gsgpvitqfx', '', '', '', 0, 1, '', '', '								', 1, 0, 'no', 1563243531, 1563243531, 25, 'no');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_calendar`
--

CREATE TABLE `olala3w_calendar` (
  `calendar_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_event` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `created_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_car`
--

CREATE TABLE `olala3w_car` (
  `car_id` int(11) NOT NULL,
  `car_menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `img_note` varchar(255) NOT NULL,
  `upload_id` bigint(20) NOT NULL,
  `model` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `seat` varchar(255) NOT NULL,
  `seat_sort` int(11) NOT NULL DEFAULT '0',
  `color` varchar(255) NOT NULL,
  `price` bigint(15) NOT NULL,
  `sale` int(3) NOT NULL DEFAULT '0',
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_car_menu`
--

CREATE TABLE `olala3w_car_menu` (
  `car_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `icon` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_category`
--

CREATE TABLE `olala3w_category` (
  `category_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(30) NOT NULL,
  `plus` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `menu_main` int(1) NOT NULL DEFAULT '0',
  `sort_hide` int(11) NOT NULL DEFAULT '1',
  `menu_sm` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `icon` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala3w_category`
--

INSERT INTO `olala3w_category` (`category_id`, `type_id`, `name`, `slug`, `plus`, `title`, `description`, `keywords`, `comment`, `is_active`, `hot`, `sort`, `menu_main`, `sort_hide`, `menu_sm`, `img`, `icon`, `created_time`, `modified_time`, `user_id`) VALUES
(2, 1, 'Khóa học', 'khoa-hoc', '', '', '', '', '', 1, 0, 2, 1, 2, 1, 'no', '', 0, 1563183277, 25),
(6, 1, 'Ý kiến khách hàng', 'y-kien-khach-hang', '', '', '', '', '', 1, 0, 6, 0, 6, 0, 'no', '', 0, 1563243518, 25),
(1, 1, 'Giới thiệu', 'gioi-thieu', '', '', '', '', '', 1, 0, 1, 1, 1, 1, 'no', '', 0, 1563000171, 25),
(5, 2, 'Slider', 'slider', '', '', '', '', '', 1, 0, 5, 0, 5, 0, 'no', '', 0, 1499746747, 25),
(4, 1, 'Liên hệ', 'lien-he', '', '', '', '', '', 1, 0, 4, 1, 4, 1, 'no', '', 0, 1563000185, 25),
(3, 1, 'Tin tức - sự kiện', 'tin-tuc-su-kien', '', '', '', '', '', 1, 0, 3, 0, 3, 0, 'no', '', 0, 1563000181, 25);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_category_type`
--

CREATE TABLE `olala3w_category_type` (
  `type_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(30) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala3w_category_type`
--

INSERT INTO `olala3w_category_type` (`type_id`, `name`, `slug`, `sort`, `is_active`) VALUES
(1, 'Bài viết', 'article_manager', 1, 1),
(2, 'Hình ảnh', 'gallery_manager', 2, 1),
(7, 'Đăng ký email', 'register_email', 9, 0),
(6, 'Sản phẩm', 'product_manager', 3, 0),
(8, 'Đăng ký', 'order_list', 7, 1),
(9, 'Tour du lịch', 'tour_manager', 5, 0),
(10, 'Đồ lưu niệm', 'gift_manager', 0, 0),
(11, 'Thuê xe', 'car_manager', 6, 0),
(12, 'Vị trí địa lý', 'location_manager', 0, 0),
(13, 'Dữ liệu đường phố', 'street_manager', 0, 0),
(14, 'Dữ liệu phương hướng', 'direction_manager', 0, 0),
(15, 'Dữ liệu khác', 'others_manager', 4, 0),
(16, 'Chiều rộng đường', 'road_manager', 0, 0),
(17, 'Dự án', 'project_manager', 0, 0),
(18, 'BĐS kinh doanh', 'bds_business_manager', 0, 0),
(19, 'Dữ liệu tên dự án', 'prjname_manager', 0, 0),
(20, 'Thư liên hệ', 'contact_list', 8, 1),
(21, 'Văn bản / Tài liệu', 'document_manager', 3, 0),
(22, 'Hỏi đáp', 'question_list', 12, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_constant`
--

CREATE TABLE `olala3w_constant` (
  `constant_id` int(11) NOT NULL,
  `constant` varchar(50) NOT NULL,
  `value` text CHARACTER SET utf8mb4 NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` int(2) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala3w_constant`
--

INSERT INTO `olala3w_constant` (`constant_id`, `constant`, `value`, `name`, `type`, `sort`) VALUES
(1, 'date', 'd/m/Y', 'Kiểu hiển thị ngày tháng năm', 3, 1),
(2, 'time', 'H:i', 'Kiểu hiển thị giờ phút', 3, 2),
(3, 'timezone', 'Asia/Bangkok', 'Múi giờ', 3, 4),
(4, 'title', 'GOODMATH', 'Title (trang chủ)', 0, 1),
(5, 'description', 'GOODMATH', 'Description (trang chủ)', 0, 2),
(6, 'keywords', '', 'Keywords (trang chủ)', 0, 3),
(74, 'script_body', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \"//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.5\";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>\r\n', 'Script sau body', 4, 6),
(76, 'link_linkedin', 'https://www.linkedin.com', 'LinkedIn', 5, 5),
(7, 'email_contact', 'cskh@unix.edu.vn', 'Email', 0, 8),
(8, 'tell_contact', '0936 021 828', 'Điện thoại', 0, 9),
(9, 'fulldate', 'D, d/m/Y', 'Kiểu hiển ngày đầy đủ', 3, 3),
(10, 'SMTP_username', 'mail.danaweb@gmail.com', 'Tài khoản email', 1, 0),
(11, 'SMTP_password', '123456987abc', 'Mật khẩu email', 1, 0),
(12, 'error_page', '', 'Thông báo ngừng hoạt động', 0, 19),
(13, 'file_logo', '/uploads/files/logo.png', 'Logo front-end', 0, 4),
(14, 'SMTP_secure', 'ssl', 'Sử dụng xác thực', 1, 0),
(15, 'SMTP_host', 'smtp.gmail.com', 'Máy chủ (SMTP) Thư gửi đi', 1, 0),
(16, 'SMTP_port', '465', 'Cổng gửi mail', 1, 0),
(17, 'backup_auto', '', 'Tự động sao lưu', 2, 0),
(18, 'backup_filetype', 'sql.gz', 'Định dạng lưu file CSDL', 2, 0),
(19, 'backup_filecount', '5', 'Số file CSDL lưu lại', 2, 0),
(20, 'backup_email', 'olala.3w@gmail.com', 'Email nhận thông báo và file', 2, 0),
(21, 'SMTP_mailname', 'GOODMATH', 'Tên tài khoản email', 1, 0),
(22, 'link_facebook', 'https://www.facebook.com', 'Facebook', 5, 1),
(23, 'link_googleplus', 'https://plus.google.com', 'Google+', 5, 2),
(24, 'link_twitter', 'https://twitter.com', 'Twitter', 5, 3),
(25, 'address_contact', 'Tầng 1, Tòa nhà CT1.1, Ngõ 183 Hoàng Văn Thái, Thanh Xuân, Hà Nội', 'Địa chỉ', 0, 11),
(73, 'script_bottom', '<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?\'http\':\'https\';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+\'://platform.twitter.com/widgets.js\';fjs.parentNode.insertBefore(js,fjs);}}(document, \'script\', \'twitter-wjs\');</script>\r\n<script src=\"https://apis.google.com/js/platform.js\" async defer>\r\n  {lang: \'vi\'}\r\n</script>\r\n', 'Script cuối trang', 4, 7),
(26, 'content_registertry', '', 'Email đăng ký học thử', 13, 17),
(27, 'author_google', '', 'ID profile Google+', 4, 1),
(28, 'google_analytics', '', 'Google analytics', 4, 4),
(29, 'chat_online', '', 'Script Chat Online', 4, 5),
(30, 'english_test', '', 'Kiểm tra tiếng Anh của bạn', 13, 18),
(31, 'google_calendar', '', 'Google Calendar (Account)', 4, 3),
(32, 'help_address', 'killlllme@gmail.com,0974.779.085,huy.to.bsn,mr.killlllme', 'Tư vấn - Địa chỉ', 13, 8),
(33, 'help_icon', 'fa-envelope-o,fa-phone,fa-skype,fa-facebook', 'Tư vấn - Icon', 13, 9),
(34, 'link_youtube', 'https://www.youtube.com', 'Youtube', 5, 4),
(35, 'search_destination', 'Hà Nội,Đà Nẵng,Hồ Chí Minh,Phú Quốc,Nha Trang,Hạ Long,Đà Lạt,Phong Nha Kẻ Bàng,Côn đảo Vũng Tàu,Thái Lan,Singapore,Malaysia,Campuchia,Trung Quốc,Nhật Bản,Hàn Quốc,Hà Lan,Myanmar,Úc,Hong Kong,Philippines,Indonesia,Đài Loan,Châu Á,Châu Âu,Châu Mỹ,Châu Phi,Châu Úc', 'Điểm đến (Tìm kiếm tour)', 13, 8),
(36, 'search_day', '1 Ngày,1 Ngày 1 Đêm,2 Ngày,2 Ngày 1 Đêm,3 Ngày,3 Ngày 2 Đêm,4 Ngày,4 Ngày 3 Đêm,5 Ngày,5 Ngày 4 Đêm,6 Ngày,6 Ngày 5 Đêm,7 Ngày,7 Ngày 6 Đêm,8 Ngày,8 Ngày 7 Đêm,9 Ngày,9 Ngày 8 Đêm,10 Ngày,10 Ngày 9 Đêm,11 Ngày,11 Ngày 10 Đêm,12 Ngày,12 Ngày 11 Đêm,1 Tuần,2 Tuần,3 Tuần,1 Tháng,2 Tháng,3 Tháng', 'Thời gian (Tìm kiếm tour)', 13, 9),
(75, 'fb_app_id', '', 'Facebook App ID', 4, 2),
(77, 'upload_img_max_w', '1900', 'Kích thước ảnh tối đa', 6, 1),
(78, 'upload_max_size', '52428800', 'Dung lượng tối đa', 6, 2),
(79, 'upload_checking_mode', 'mild', 'Kiểu kiểm tra file tải lên', 6, 3),
(80, 'upload_type', '1,4,5,6,7,8,9,10,11', 'Loại files cho phép', 6, 4),
(81, 'upload_ext', '', 'Phần mở rộng bị cấm', 6, 5),
(82, 'upload_mime', '', 'Loại mime bị cấm', 6, 6),
(83, 'upload_img_max_h', '594', 'Kích thước ảnh tối đa', 6, 1),
(84, 'upload_auto_resize', '1', 'Tự động resize ảnh', 6, 1),
(85, 'article_author', '', 'Property = article:author', 4, 2),
(86, 'meta_author', 'GOODMATH', 'Meta author', 0, 4),
(88, 'meta_site_name', 'GOODMATH', 'Meta site name', 0, 5),
(89, 'meta_copyright', '© GoodMarth 2019 . All Rights Reserved', 'Meta copyright', 0, 6),
(90, 'image_thumbnailUrl', '/uploads/files/logo.png', 'Image : thumbnailUrl', 0, 7),
(91, 'skype_contact', '', 'Skype', 0, 10),
(92, 'link_instagram', 'https://www.instagram.com', 'Instagram', 5, 6),
(93, 'link_zalo', 'https://zalo.me/pc', 'Zalo', 5, 10),
(94, 'link_viber', 'https://www.viber.com/vi/download/', 'Viber', 5, 11),
(95, 'link_skype', 'https://www.skype.com/en/', 'Skype', 5, 14),
(96, 'link_pin', 'https://www.pinterest.com/?autologin=true', 'Pinterest', 5, 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_contact`
--

CREATE TABLE `olala3w_contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `ip` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL DEFAULT 'fa-send-o',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala3w_contact`
--

INSERT INTO `olala3w_contact` (`contact_id`, `name`, `address`, `email`, `phone`, `content`, `is_active`, `ip`, `icon`, `created_time`, `modified_time`) VALUES
(10, 'test', 'đà nẵng', 'hoa.vo@danaweb.vn', '0123456789', '<div marginwidth=\"0\" marginheight=\"0\" style=\"font-family:Arial,serif;\"><table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" style=\"table-layout:fixed;\"><tbody><tr><td width=\"100%\" valign=\"top\" bgcolor=\"#f5f5f5\" style=\"border-top:3px solid #579902;padding:0;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" style=\"margin:0 auto;width:100%;\"><tbody><tr><td bgcolor=\"white\" style=\"padding:10px 0; text-align: center;\"><a href=\"http://goodmath:8080\" target=\"_blank\"><img src=\"http://goodmath:8080/uploads/files/logo.png\" style=\"max-height:70px;max-width:80%;\" alt=\"GOODMATH\" border=\"0\"></a></td></tr></tbody></table><div style=\"min-height:35px\">&nbsp;</div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" style=\"min-width:290px;margin:0 auto;font-size:13px;color:#666666;font-weight:normal;text-align:left;font-family:Arial,serif;line-height:18px;\" width=\"620\"><tbody><tr><td style=\"border-left:6px solid #fb651b;font-size:13px;color:#666666;font-weight:normal;text-align:left;font-family:Arial,serif;line-height:18px;vertical-align:top;padding:15px 8px 25px 20px;\" bgcolor=\"#fdfdfd\"><p style=\"margin: 10px 0\">Chào <b> test</b>,</p><p style=\"margin: 10px 0\">Xin chân thành cảm ơn Quý khách đã quan tâm và sử dụng dịch vụ của chúng tôi!\nYêu cầu của Quý khách đã gửi thành công. Chúng tôi sẽ phản hồi lại trong vòng 24h tới.</p><p style=\"margin: 10px 0\"><b style=\"text-decoration:underline;\">THÔNG TIN LIÊN HỆ CỦA QUÝ KHÁCH:</b><br/><label style=\"font-weight:600;padding-left:12px;\">Họ và tên: </label> test<br/><label style=\"font-weight:600;padding-left:12px;\">Email: </label> hoa.vo@danaweb.vn<br/><label style=\"font-weight:600;padding-left:12px;\">Địa chỉ: </label> đà nẵng<br/><label style=\"font-weight:600;padding-left:12px;\">Số điện thoại: </label> 0123456789<br/><label style=\"font-weight:600;padding-left:12px;\">Nội dung liên hệ: </label> sdsds<br/><label style=\"font-weight:600;padding-left:12px;\">IP: </label> 127.0.0.1<br/><label style=\"font-weight:600;padding-left:12px;\">Ngày gửi liên hệ: </label> 17/07/2019 22:52<br/></p><p style=\"margin: 10px 0\">Đây là hộp thư tự động. Sau thời gian trên nếu quý khách chưa nhân được phản hồi từ nhân viên của chúng tôi, rất có thể đã gặp sự cố nhỏ nào đó vì vậy Quý khách có thể liên hệ trực tiếp chúng tôi để nhận được những thông tin nhanh nhất.</p><p style=\"margin: 10px 0\">Chân thành cảm ơn!</p></td></tr></tbody></table><div style=\"min-height:35px\">&nbsp;</div><table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\"><tbody><tr><td bgcolor=\"#e1e1e1\" style=\"padding:15px 10px 25px\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" style=\"margin:0 auto;min-width:290px;\" width=\"620\"><tbody><tr><td><table width=\"80%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"left\"><tbody><tr><td valign=\"top\" style=\"font-size:12px;color:#5e5e5e;font-family:Arial,serif;line-height:15px;\">GOODMATH</td></tr></tbody></table><table width=\"20%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tbody><tr><td style=\"font-size:13px;color:#5e5e5e;font-family:Arial,serif;line-height:1;vertical-align:top;text-align:right;font-style:italic;\"><span>Follow us on</span><br><a href=\"https://www.facebook.com\" target=\"_blank\"><img src=\"https://ci5.googleusercontent.com/proxy/PMSfAkbhhMLEe-tDCLFilReG-hlq_DWsTblTQ2qp8Dsq9KFW1UyFcKTr_uwU3EqyR8AhiFIooeExoAw9Oe3G5c6hvIEoOnU=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/fb.png\" width=\"27\" height=\"27\" alt=\"Facebook logo\" title=\"Facebook\" border=\"0\" style=\"padding:3px;\"></a>&nbsp;<a href=\"https://twitter.com\" target=\"_blank\"><img src=\"https://ci3.googleusercontent.com/proxy/GNHxgrYKL99Apyic0XnGYk6IqVZAc-wFuhgCDxzBYMr80NGggmI1nRORIBVRIkPkJHbQHGGMrTFtbzTDoxk5dc0i_H0HOc0=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/tw.png\" width=\"27\" height=\"27\" alt=\"Twitter logo\" title=\"Twitter\" border=\"0\" style=\"padding:3px;\"></a></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></div>', 0, '127.0.0.1', 'fa-car', 1563378737, 1563378751);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_core_privilege`
--

CREATE TABLE `olala3w_core_privilege` (
  `privilege_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL,
  `privilege_slug` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala3w_core_privilege`
--

INSERT INTO `olala3w_core_privilege` (`privilege_id`, `role_id`, `type`, `privilege_slug`) VALUES
(2250, 1, 'direction', 'direction_del'),
(2249, 1, 'direction', 'direction_edit'),
(2248, 1, 'direction', 'direction_add'),
(2255, 1, 'pages', 'plugin_page_edit'),
(1071, 1, 'backup', 'backup_config'),
(1545, 1, 'config', 'config_search'),
(1531, 1, 'tool', 'tool_ipdie'),
(1530, 1, 'tool', 'tool_keywords'),
(2656, 1, 'bds_business', 'bds_business_del;50'),
(2103, 2, 'product', 'product_menu_add;37'),
(2102, 2, 'product', 'category_edit;37'),
(2101, 2, 'article', 'article_del;13'),
(2100, 2, 'article', 'article_edit;13'),
(2099, 2, 'article', 'article_add;13'),
(2098, 2, 'article', 'article_list;13'),
(2097, 2, 'article', 'article_menu_del;13'),
(2096, 2, 'article', 'article_menu_edit;13'),
(2095, 2, 'article', 'article_menu_add;13'),
(2094, 2, 'article', 'category_edit;13'),
(2093, 2, 'article', 'article_del;9'),
(2092, 2, 'article', 'article_edit;9'),
(2091, 2, 'article', 'article_add;9'),
(2090, 2, 'article', 'article_list;9'),
(2089, 2, 'article', 'article_menu_del;9'),
(2088, 2, 'article', 'article_menu_edit;9'),
(2087, 2, 'article', 'article_menu_add;9'),
(2086, 2, 'article', 'category_edit;9'),
(273, 2, 'gallery', 'gallery_menu_add;6'),
(274, 2, 'gallery', 'gallery_menu_edit;6'),
(275, 2, 'gallery', 'gallery_menu_del;6'),
(276, 2, 'gallery', 'gallery_add;6'),
(277, 2, 'gallery', 'gallery_edit;6'),
(278, 2, 'gallery', 'gallery_del;6'),
(279, 2, 'pages', 'pages_add'),
(280, 2, 'pages', 'pages_edit'),
(281, 2, 'pages', 'pages_del'),
(287, 2, 'backup', 'backup_data'),
(288, 2, 'backup', 'backup_config'),
(289, 2, 'config', 'config_general'),
(290, 2, 'config', 'config_search'),
(291, 2, 'config', 'config_ipdie'),
(292, 2, 'config', 'config_upload'),
(293, 2, 'tool', 'tool_delete'),
(294, 2, 'tool', 'tool_site'),
(295, 2, 'tool', 'tool_keywords'),
(296, 2, 'tool', 'tool_update'),
(330, 2, 'core', 'core_mail'),
(2655, 1, 'bds_business', 'bds_business_edit;50'),
(2654, 1, 'bds_business', 'bds_business_add;50'),
(1070, 1, 'backup', 'backup_data'),
(1544, 1, 'config', 'config_socialnetwork'),
(1529, 1, 'tool', 'tool_site'),
(1528, 1, 'tool', 'tool_delete'),
(3333, 1, 'core', 'core_dashboard'),
(2653, 1, 'bds_business', 'bds_business_list;50'),
(3331, 1, 'core', 'core_role'),
(1543, 1, 'config', 'config_plugins'),
(3332, 1, 'core', 'core_user'),
(2254, 1, 'pages', 'plugin_page_add'),
(2252, 1, 'street', 'street_edit'),
(2251, 1, 'street', 'street_add'),
(2208, 1, 'location', 'location_del;40'),
(2207, 1, 'location', 'location_edit;40'),
(2206, 1, 'location', 'location_add;40'),
(2205, 1, 'location', 'location_list;40'),
(2204, 1, 'location', 'location_menu_del;40'),
(2203, 1, 'location', 'location_menu_edit;40'),
(2202, 1, 'location', 'location_menu_add;40'),
(2201, 1, 'location', 'category_edit;40'),
(1532, 1, 'tool', 'tool_update'),
(1542, 1, 'config', 'config_datetime'),
(1541, 1, 'config', 'config_smtp'),
(1540, 1, 'config', 'config_general'),
(1546, 1, 'config', 'config_upload'),
(2200, 1, 'location', 'location_del;39'),
(2198, 1, 'location', 'location_add;39'),
(2199, 1, 'location', 'location_edit;39'),
(2197, 1, 'location', 'location_list;39'),
(2195, 1, 'location', 'location_menu_edit;39'),
(2196, 1, 'location', 'location_menu_del;39'),
(2194, 1, 'location', 'location_menu_add;39'),
(3983, 1, 'tour', 'tour_del;70'),
(3982, 1, 'tour', 'tour_edit;70'),
(3981, 1, 'tour', 'tour_add;70'),
(3980, 1, 'tour', 'tour_list;70'),
(3979, 1, 'tour', 'tour_menu_del;70'),
(3978, 1, 'tour', 'tour_menu_edit;70'),
(3977, 1, 'tour', 'tour_menu_add;70'),
(3976, 1, 'tour', 'category_edit;70'),
(1712, 1, 'gift', 'gift_add;22'),
(1711, 1, 'gift', 'gift_list;22'),
(1710, 1, 'gift', 'gift_menu_del;22'),
(1709, 1, 'gift', 'gift_menu_edit;22'),
(1708, 1, 'gift', 'gift_menu_add;22'),
(1707, 1, 'gift', 'category_edit;22'),
(3838, 1, 'car', 'car_list;67'),
(3837, 1, 'car', 'car_menu_del;67'),
(3836, 1, 'car', 'car_menu_edit;67'),
(3835, 1, 'car', 'car_menu_add;67'),
(3834, 1, 'car', 'category_edit;67'),
(1713, 1, 'gift', 'gift_edit;22'),
(1714, 1, 'gift', 'gift_del;22'),
(2193, 1, 'location', 'category_edit;39'),
(3328, 1, 'info', 'sys_info_expansion'),
(3327, 1, 'info', 'sys_info_site'),
(2085, 2, 'category', 'article_manager'),
(2253, 1, 'street', 'street_del'),
(2256, 1, 'pages', 'plugin_page_del'),
(2290, 1, 'road', 'road_add'),
(2291, 1, 'road', 'road_edit'),
(2292, 1, 'road', 'road_del'),
(2780, 1, 'project', 'project_list;13'),
(2779, 1, 'project', 'project_menu_del;13'),
(2778, 1, 'project', 'project_menu_edit;13'),
(2777, 1, 'project', 'project_menu_add;13'),
(2776, 1, 'project', 'category_edit;13'),
(3841, 1, 'car', 'car_del;67'),
(3840, 1, 'car', 'car_edit;67'),
(3839, 1, 'car', 'car_add;67'),
(5222, 1, 'document', 'document_edit;109'),
(2652, 1, 'bds_business', 'bds_business_menu_del;50'),
(2651, 1, 'bds_business', 'bds_business_menu_edit;50'),
(2650, 1, 'bds_business', 'bds_business_menu_add;50'),
(2649, 1, 'bds_business', 'category_edit;50'),
(2781, 1, 'project', 'project_add;13'),
(2782, 1, 'project', 'project_edit;13'),
(2783, 1, 'project', 'project_del;13'),
(2784, 1, 'project', 'category_edit;53'),
(2785, 1, 'project', 'project_menu_add;53'),
(2786, 1, 'project', 'project_menu_edit;53'),
(2787, 1, 'project', 'project_menu_del;53'),
(2788, 1, 'project', 'project_list;53'),
(2789, 1, 'project', 'project_add;53'),
(2790, 1, 'project', 'project_edit;53'),
(2791, 1, 'project', 'project_del;53'),
(2792, 9, 'category', 'product_manager'),
(2793, 9, 'product', 'product_list;37'),
(2794, 9, 'product', 'product_add;37'),
(2795, 9, 'product', 'product_edit;37'),
(2796, 9, 'product', 'product_del;37'),
(2797, 11, 'category', 'article_manager'),
(2798, 11, 'category', 'gallery_manager'),
(2799, 11, 'category', 'project_manager'),
(2800, 11, 'category', 'product_manager'),
(2801, 11, 'category', 'location_manager'),
(2802, 11, 'category', 'street_manager'),
(2803, 11, 'category', 'road_manager'),
(2804, 11, 'category', 'direction_manager'),
(2805, 11, 'category', 'others_manager'),
(2806, 11, 'category', 'plugin_page'),
(3031, 11, 'article', 'article_menu_add;9'),
(3030, 11, 'article', 'category_edit;9'),
(2809, 11, 'config', 'config_socialnetwork'),
(2815, 11, 'pages', 'plugin_page_del'),
(2814, 11, 'pages', 'plugin_page_edit'),
(2813, 11, 'pages', 'plugin_page_add'),
(2816, 1, 'prjname', 'prjname_add'),
(2817, 1, 'prjname', 'prjname_edit'),
(2818, 1, 'prjname', 'prjname_del'),
(2830, 12, 'category', 'article_manager'),
(2831, 12, 'category', 'gallery_manager'),
(2832, 12, 'category', 'project_manager'),
(2833, 12, 'category', 'product_manager'),
(2834, 12, 'category', 'location_manager'),
(2835, 12, 'category', 'road_manager'),
(2836, 12, 'category', 'street_manager'),
(2837, 12, 'category', 'direction_manager'),
(2838, 12, 'category', 'prjname_manager'),
(2839, 12, 'category', 'others_manager'),
(2840, 12, 'category', 'plugin_page'),
(2841, 12, 'pages', 'plugin_page_add'),
(2842, 12, 'pages', 'plugin_page_edit'),
(2843, 12, 'pages', 'plugin_page_del'),
(2908, 12, 'article', 'category_edit;9'),
(2909, 12, 'article', 'article_menu_add;9'),
(2910, 12, 'article', 'article_menu_edit;9'),
(2911, 12, 'article', 'article_menu_del;9'),
(2912, 12, 'article', 'article_list;9'),
(2913, 12, 'article', 'article_add;9'),
(2914, 12, 'article', 'article_edit;9'),
(2915, 12, 'article', 'article_del;9'),
(2916, 12, 'article', 'category_edit;51'),
(2917, 12, 'article', 'article_menu_add;51'),
(2918, 12, 'article', 'article_menu_edit;51'),
(2919, 12, 'article', 'article_menu_del;51'),
(2920, 12, 'article', 'article_list;51'),
(2921, 12, 'article', 'article_add;51'),
(2922, 12, 'article', 'article_edit;51'),
(2923, 12, 'article', 'article_del;51'),
(2924, 12, 'article', 'category_edit;7'),
(2925, 12, 'article', 'article_menu_add;7'),
(2926, 12, 'article', 'article_menu_edit;7'),
(2927, 12, 'article', 'article_menu_del;7'),
(2928, 12, 'article', 'article_list;7'),
(2929, 12, 'article', 'article_add;7'),
(2930, 12, 'article', 'article_edit;7'),
(2931, 12, 'article', 'article_del;7'),
(2932, 12, 'project', 'category_edit;13'),
(2933, 12, 'project', 'project_menu_add;13'),
(2934, 12, 'project', 'project_menu_edit;13'),
(2935, 12, 'project', 'project_menu_del;13'),
(2936, 12, 'project', 'project_list;13'),
(2937, 12, 'project', 'project_add;13'),
(2938, 12, 'project', 'project_edit;13'),
(2939, 12, 'project', 'project_del;13'),
(2940, 12, 'project', 'category_edit;53'),
(2941, 12, 'project', 'project_menu_add;53'),
(2942, 12, 'project', 'project_menu_edit;53'),
(2943, 12, 'project', 'project_menu_del;53'),
(2944, 12, 'project', 'project_list;53'),
(2945, 12, 'project', 'project_add;53'),
(2946, 12, 'project', 'project_edit;53'),
(2947, 12, 'project', 'project_del;53'),
(2948, 12, 'gallery', 'category_edit;4'),
(2949, 12, 'gallery', 'gallery_menu_add;4'),
(2950, 12, 'gallery', 'gallery_menu_edit;4'),
(2951, 12, 'gallery', 'gallery_menu_del;4'),
(2952, 12, 'gallery', 'gallery_list;4'),
(2953, 12, 'gallery', 'gallery_add;4'),
(2954, 12, 'gallery', 'gallery_edit;4'),
(2955, 12, 'gallery', 'gallery_del;4'),
(2956, 12, 'gallery', 'category_edit;52'),
(2957, 12, 'gallery', 'gallery_menu_add;52'),
(2958, 12, 'gallery', 'gallery_menu_edit;52'),
(2959, 12, 'gallery', 'gallery_menu_del;52'),
(2960, 12, 'gallery', 'gallery_list;52'),
(2961, 12, 'gallery', 'gallery_add;52'),
(2962, 12, 'gallery', 'gallery_edit;52'),
(2963, 12, 'gallery', 'gallery_del;52'),
(2964, 12, 'product', 'category_edit;37'),
(2965, 12, 'product', 'product_menu_add;37'),
(2966, 12, 'product', 'product_menu_edit;37'),
(2967, 12, 'product', 'product_menu_del;37'),
(2968, 12, 'product', 'product_list;37'),
(2969, 12, 'product', 'product_add;37'),
(2970, 12, 'product', 'product_edit;37'),
(2971, 12, 'product', 'product_del;37'),
(2985, 12, 'location', 'location_add;39'),
(2984, 12, 'location', 'location_list;39'),
(2983, 12, 'location', 'location_menu_del;39'),
(2982, 12, 'location', 'location_menu_edit;39'),
(2981, 12, 'location', 'location_menu_add;39'),
(2980, 12, 'location', 'category_edit;39'),
(2986, 12, 'location', 'location_edit;39'),
(2987, 12, 'location', 'location_del;39'),
(2988, 12, 'location', 'category_edit;40'),
(2989, 12, 'location', 'location_menu_add;40'),
(2990, 12, 'location', 'location_menu_edit;40'),
(2991, 12, 'location', 'location_menu_del;40'),
(2992, 12, 'location', 'location_list;40'),
(2993, 12, 'location', 'location_add;40'),
(2994, 12, 'location', 'location_edit;40'),
(2995, 12, 'location', 'location_del;40'),
(2996, 12, 'road', 'road_add'),
(2997, 12, 'road', 'road_edit'),
(2998, 12, 'road', 'road_del'),
(2999, 12, 'street', 'street_add'),
(3000, 12, 'street', 'street_edit'),
(3001, 12, 'street', 'street_del'),
(3002, 12, 'direction', 'direction_add'),
(3003, 12, 'direction', 'direction_edit'),
(3004, 12, 'direction', 'direction_del'),
(3005, 12, 'prjname', 'prjname_add'),
(3006, 12, 'prjname', 'prjname_edit'),
(3007, 12, 'prjname', 'prjname_del'),
(3008, 12, 'backup', 'backup_data'),
(3009, 12, 'backup', 'backup_config'),
(3010, 12, 'config', 'config_general'),
(3011, 12, 'config', 'config_smtp'),
(3012, 12, 'config', 'config_datetime'),
(3013, 12, 'config', 'config_plugins'),
(3014, 12, 'config', 'config_socialnetwork'),
(3015, 12, 'config', 'config_search'),
(3016, 12, 'config', 'config_upload'),
(3017, 12, 'tool', 'tool_delete'),
(3018, 12, 'tool', 'tool_site'),
(3019, 12, 'tool', 'tool_keywords'),
(3020, 12, 'tool', 'tool_ipdie'),
(3021, 12, 'tool', 'tool_update'),
(3022, 12, 'core', 'core_role'),
(3023, 12, 'core', 'core_user'),
(3024, 12, 'core', 'core_dashboard'),
(3025, 12, 'core', 'core_mail'),
(3026, 12, 'info', 'Info_diary'),
(3027, 12, 'info', 'Info_php'),
(3028, 12, 'info', 'Info_site'),
(3029, 12, 'info', 'Info_expansion'),
(3032, 11, 'article', 'article_menu_edit;9'),
(3033, 11, 'article', 'article_menu_del;9'),
(3034, 11, 'article', 'article_list;9'),
(3035, 11, 'article', 'article_add;9'),
(3036, 11, 'article', 'article_edit;9'),
(3037, 11, 'article', 'article_del;9'),
(3038, 11, 'article', 'category_edit;51'),
(3039, 11, 'article', 'article_menu_add;51'),
(3040, 11, 'article', 'article_menu_edit;51'),
(3041, 11, 'article', 'article_menu_del;51'),
(3042, 11, 'article', 'article_list;51'),
(3043, 11, 'article', 'article_add;51'),
(3044, 11, 'article', 'article_edit;51'),
(3045, 11, 'article', 'article_del;51'),
(3046, 11, 'article', 'category_edit;7'),
(3047, 11, 'article', 'article_menu_add;7'),
(3048, 11, 'article', 'article_menu_edit;7'),
(3049, 11, 'article', 'article_menu_del;7'),
(3050, 11, 'article', 'article_list;7'),
(3051, 11, 'article', 'article_add;7'),
(3052, 11, 'article', 'article_edit;7'),
(3053, 11, 'article', 'article_del;7'),
(3054, 11, 'gallery', 'category_edit;4'),
(3055, 11, 'gallery', 'gallery_menu_add;4'),
(3056, 11, 'gallery', 'gallery_menu_edit;4'),
(3057, 11, 'gallery', 'gallery_menu_del;4'),
(3058, 11, 'gallery', 'gallery_list;4'),
(3059, 11, 'gallery', 'gallery_add;4'),
(3060, 11, 'gallery', 'gallery_edit;4'),
(3061, 11, 'gallery', 'gallery_del;4'),
(3062, 11, 'gallery', 'category_edit;52'),
(3063, 11, 'gallery', 'gallery_menu_add;52'),
(3064, 11, 'gallery', 'gallery_menu_edit;52'),
(3065, 11, 'gallery', 'gallery_menu_del;52'),
(3066, 11, 'gallery', 'gallery_list;52'),
(3067, 11, 'gallery', 'gallery_add;52'),
(3068, 11, 'gallery', 'gallery_edit;52'),
(3069, 11, 'gallery', 'gallery_del;52'),
(3070, 11, 'project', 'category_edit;13'),
(3071, 11, 'project', 'project_menu_add;13'),
(3072, 11, 'project', 'project_menu_edit;13'),
(3073, 11, 'project', 'project_menu_del;13'),
(3074, 11, 'project', 'project_list;13'),
(3075, 11, 'project', 'project_add;13'),
(3076, 11, 'project', 'project_edit;13'),
(3077, 11, 'project', 'project_del;13'),
(3078, 11, 'project', 'category_edit;53'),
(3079, 11, 'project', 'project_menu_add;53'),
(3080, 11, 'project', 'project_menu_edit;53'),
(3081, 11, 'project', 'project_menu_del;53'),
(3082, 11, 'project', 'project_list;53'),
(3083, 11, 'project', 'project_add;53'),
(3084, 11, 'project', 'project_edit;53'),
(3085, 11, 'project', 'project_del;53'),
(3137, 11, 'product', 'owner_real;37'),
(3136, 11, 'product', 'product_del;37'),
(3135, 11, 'product', 'product_edit;37'),
(3134, 11, 'product', 'product_add;37'),
(3133, 11, 'product', 'product_list;37'),
(3138, 11, 'product', 'owner_cus;37'),
(3326, 1, 'info', 'sys_info_php'),
(3325, 1, 'info', 'sys_info_diary'),
(3334, 1, 'core', 'core_mail'),
(6043, 1, 'article', 'article_del;6'),
(5221, 1, 'document', 'document_add;109'),
(5220, 1, 'document', 'document_list;109'),
(5219, 1, 'document', 'document_menu_del;109'),
(5218, 1, 'document', 'document_menu_edit;109'),
(5217, 1, 'document', 'document_menu_add;109'),
(5216, 1, 'document', 'category_edit;109'),
(5782, 1, 'others', 'others_del;134'),
(5781, 1, 'others', 'others_edit;134'),
(6042, 1, 'article', 'article_edit;6'),
(6040, 1, 'article', 'article_list;6'),
(6041, 1, 'article', 'article_add;6'),
(6039, 1, 'article', 'article_menu_del;6'),
(6038, 1, 'article', 'article_menu_edit;6'),
(5622, 1, 'product', 'product_del;130'),
(5621, 1, 'product', 'product_edit;130'),
(5620, 1, 'product', 'product_add;130'),
(5619, 1, 'product', 'product_list;130'),
(5618, 1, 'product', 'product_menu_del;130'),
(5617, 1, 'product', 'product_menu_edit;130'),
(5616, 1, 'product', 'product_menu_add;130'),
(5615, 1, 'product', 'category_edit;130'),
(5914, 1, 'category', 'register_email'),
(5913, 1, 'category', 'contact_list'),
(4925, 1, 'question', 'question_add'),
(4926, 1, 'question', 'question_edit'),
(4927, 1, 'question', 'question_del'),
(6037, 1, 'article', 'article_menu_add;6'),
(6036, 1, 'article', 'category_edit;6'),
(6003, 1, 'gallery', 'gallery_del;5'),
(6002, 1, 'gallery', 'gallery_edit;5'),
(6001, 1, 'gallery', 'gallery_add;5'),
(6000, 1, 'gallery', 'gallery_list;5'),
(5999, 1, 'gallery', 'gallery_menu_del;5'),
(5998, 1, 'gallery', 'gallery_menu_edit;5'),
(5997, 1, 'gallery', 'gallery_menu_add;5'),
(5996, 1, 'gallery', 'category_edit;5'),
(5912, 1, 'category', 'order_list'),
(5911, 1, 'category', 'others_manager'),
(5910, 1, 'category', 'gallery_manager'),
(5909, 1, 'category', 'article_manager'),
(5223, 1, 'document', 'document_del;109'),
(5780, 1, 'others', 'others_add;134'),
(5779, 1, 'others', 'others_list;134'),
(5778, 1, 'others', 'others_menu_del;134'),
(5777, 1, 'others', 'others_menu_edit;134'),
(5776, 1, 'others', 'others_menu_add;134'),
(5775, 1, 'others', 'category_edit;134'),
(6035, 1, 'article', 'article_del;4'),
(6034, 1, 'article', 'article_edit;4'),
(6033, 1, 'article', 'article_add;4'),
(6032, 1, 'article', 'article_list;4'),
(6031, 1, 'article', 'article_menu_del;4'),
(6030, 1, 'article', 'article_menu_edit;4'),
(6029, 1, 'article', 'article_menu_add;4'),
(6028, 1, 'article', 'category_edit;4'),
(6027, 1, 'article', 'article_del;3'),
(6026, 1, 'article', 'article_edit;3'),
(6025, 1, 'article', 'article_add;3'),
(6024, 1, 'article', 'article_list;3'),
(6023, 1, 'article', 'article_menu_del;3'),
(6022, 1, 'article', 'article_menu_edit;3'),
(6021, 1, 'article', 'article_menu_add;3'),
(6020, 1, 'article', 'category_edit;3'),
(6019, 1, 'article', 'article_del;2'),
(6018, 1, 'article', 'article_edit;2'),
(6017, 1, 'article', 'article_add;2'),
(6016, 1, 'article', 'article_list;2'),
(6015, 1, 'article', 'article_menu_del;2'),
(6013, 1, 'article', 'article_menu_add;2'),
(5915, 1, 'category', 'plugin_page'),
(6014, 1, 'article', 'article_menu_edit;2'),
(6012, 1, 'article', 'category_edit;2'),
(6011, 1, 'article', 'article_del;1'),
(6010, 1, 'article', 'article_edit;1'),
(6009, 1, 'article', 'article_add;1'),
(6008, 1, 'article', 'article_list;1'),
(6007, 1, 'article', 'article_menu_del;1'),
(6006, 1, 'article', 'article_menu_edit;1'),
(6005, 1, 'article', 'article_menu_add;1'),
(6004, 1, 'article', 'category_edit;1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_core_role`
--

CREATE TABLE `olala3w_core_role` (
  `role_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala3w_core_role`
--

INSERT INTO `olala3w_core_role` (`role_id`, `name`, `comment`, `is_active`, `modified_time`, `user_id`) VALUES
(1, 'Administrator', 'Nhóm quản trị tối cao', 1, 1441786254, 1),
(2, 'Tester', 'Nhóm kiểm thử', 1, 1441851198, 1),
(9, 'Broker', 'Nhân viên môi giới. Chỉ nhập và quản lý thông tin BĐS.', 1, 1439055844, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_core_user`
--

CREATE TABLE `olala3w_core_user` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_name` varchar(16) NOT NULL,
  `password` varchar(50) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `gender` int(1) NOT NULL DEFAULT '0',
  `birthday` int(11) NOT NULL DEFAULT '0',
  `apply` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `is_show` int(1) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `vote` bigint(20) NOT NULL DEFAULT '1',
  `click_vote` bigint(20) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id_edit` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala3w_core_user`
--

INSERT INTO `olala3w_core_user` (`user_id`, `role_id`, `user_name`, `password`, `full_name`, `gender`, `birthday`, `apply`, `email`, `phone`, `address`, `comment`, `is_show`, `sort`, `img`, `is_active`, `vote`, `click_vote`, `created_time`, `modified_time`, `user_id_edit`) VALUES
(1, 1, 'admin', 'd6fd49b37aa5f4dc3084e976eda1b7f3', 'Administrator', 1, 694198800, 'Quản trị website', 'huyto.qng@gmail.com', '0974779085', 'Thanh Khê - Đà Nẵng', '', 1, 1, 'u_1488926690_2c2fdf897700774ab341f6f703fc1514.png', 1, 1, 1, 1408159832, 1488926690, 1),
(25, 1, 'dev', 'b694cbf604398043f37b96a38452b7d7', 'Danaweb', 1, -25200, '', 'info@danaweb.vn', '0194049099', '', '', 1, 1, 'u_logo_danaweb_fc.jpg', 1, 1, 1, 0, 1452217860, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_direction`
--

CREATE TABLE `olala3w_direction` (
  `direction_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_document`
--

CREATE TABLE `olala3w_document` (
  `document_id` int(11) NOT NULL,
  `document_menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `release_date` int(11) NOT NULL DEFAULT '0',
  `effective_date` int(11) NOT NULL DEFAULT '0',
  `file` varchar(255) NOT NULL DEFAULT 'no',
  `type` varchar(5) NOT NULL DEFAULT 'unk',
  `size` int(11) NOT NULL DEFAULT '0',
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `content` text CHARACTER SET utf8mb4 NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_document_menu`
--

CREATE TABLE `olala3w_document_menu` (
  `document_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL DEFAULT 'not-found',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `parent` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_gallery`
--

CREATE TABLE `olala3w_gallery` (
  `gallery_id` int(11) NOT NULL,
  `gallery_menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `upload_id` bigint(20) NOT NULL DEFAULT '0',
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `content` text CHARACTER SET utf8mb4 NOT NULL,
  `link` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala3w_gallery`
--

INSERT INTO `olala3w_gallery` (`gallery_id`, `gallery_menu_id`, `name`, `slug`, `title`, `description`, `keywords`, `img`, `upload_id`, `comment`, `content`, `link`, `is_active`, `hot`, `views`, `created_time`, `modified_time`, `user_id`) VALUES
(767, 112, 'Good math', 'good-math', '', '', '', 'good-math-1563203299.png', 2388, '', '', '', 1, 0, 1, 1563184800, 1563203299, 25),
(777, 114, 'IMG_01', 'img-01', '', '', '', 'img-01-1563249717.png', 2493, '', '', '', 1, 0, 1, 1563249660, 1563249717, 25),
(768, 112, 'Goodmath', 'goodmath', '', '', '', 'goodmath-1563203305.png', 2390, '', '', '', 0, 0, 1, 1563184800, 1563203305, 25);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_gallery_menu`
--

CREATE TABLE `olala3w_gallery_menu` (
  `gallery_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `parent` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala3w_gallery_menu`
--

INSERT INTO `olala3w_gallery_menu` (`gallery_menu_id`, `category_id`, `name`, `slug`, `title`, `description`, `keywords`, `parent`, `sort`, `comment`, `is_active`, `hot`, `img`, `created_time`, `modified_time`, `user_id`) VALUES
(114, 5, 'IMG trang con', 'img-trang-con', '', '', '', 0, 2, '', 1, 0, 'no', 1547001681, 1547001681, 25),
(112, 5, 'IMG slider trang chủ', 'img-slider-trang-chu', '', '', '', 0, 2, '', 1, 0, 'no', 1543906662, 1547001661, 25);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_gift`
--

CREATE TABLE `olala3w_gift` (
  `gift_id` int(11) NOT NULL,
  `gift_menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `img_note` varchar(255) NOT NULL,
  `price` bigint(15) NOT NULL DEFAULT '0',
  `made` varchar(255) NOT NULL,
  `material` varchar(255) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_gift_menu`
--

CREATE TABLE `olala3w_gift_menu` (
  `gift_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_link`
--

CREATE TABLE `olala3w_link` (
  `link_id` bigint(20) NOT NULL,
  `link` varchar(255) NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `menu` int(11) NOT NULL DEFAULT '0',
  `post` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala3w_link`
--

INSERT INTO `olala3w_link` (`link_id`, `link`, `category`, `menu`, `post`, `modified_time`) VALUES
(409, 'danaweb', 0, 0, 0, 0),
(433, 'home', 0, 0, 0, 0),
(880, 'search', 0, 0, 0, 0),
(921, 'gioi-thieu', 1, 0, 0, 1563000171),
(922, 'khoa-hoc', 2, 0, 0, 1563183277),
(923, 'tin-tuc-su-kien', 3, 0, 0, 1563000181),
(924, 'lien-he', 4, 0, 0, 1563000185),
(925, 've-good-math', 1, 642, 0, 1563203976),
(926, 'doi-ngu-giang-day', 1, 643, 0, 1563203984),
(927, 'chuong-trinh-hoc-doi-tac', 1, 644, 0, 1563203991),
(928, 'doi-tac', 1, 645, 0, 1563000314),
(929, 'goodmath', 5, 112, 768, 1563203305),
(930, 'good-math', 5, 112, 767, 1563203299),
(931, 'lop-nen-tang', 2, 646, 0, 1563183291),
(932, 'toan-co-ban', 2, 647, 0, 1563183305),
(933, 'toan-nang-cao', 2, 648, 0, 1563183315),
(934, 'he-thong-doi-tac', 4, 649, 0, 1563183442),
(935, 'co-hoi-nghe-nghiep', 4, 650, 0, 1563183454),
(936, 'lien-he-danh-cho-phu-huynh', 4, 651, 0, 1563183464),
(937, 'lop-nen-tang-56sqba6d07', 2, 646, 1273, 1563205522),
(938, 'chinh-phuc-toan-co-ban', 2, 646, 1274, 1563352875),
(939, 'chinh-phuc-toan-nang-cao', 2, 646, 1275, 1563352881),
(940, 'tin-tuc-su-kien-good-math', 3, 652, 0, 1563206671),
(941, 'khoa-he-good-math-2019-cho-con-mua-he-day-trai-nghiem', 3, 652, 1276, 1563348559),
(942, '3-buoc-don-gian-de-cai-thien-mon-toan-trong-thoi-gian-ngan', 3, 652, 1277, 1563348565),
(943, 'dau-la-mua-he-li-tuong-trong-mat-tre', 3, 652, 1278, 1563348572),
(944, 'tu-duy-sang-tao-dac-biet-quan-trong-voi-su-phat-trien-cua-tre', 3, 652, 1279, 1563354912),
(945, '5-buoc-quan-trong-giup-con-vuot-qua-cac-ky-thi', 3, 652, 1280, 1563348546),
(946, '3-buoc-don-gian-de-cai-thien-mon-toan', 3, 652, 1281, 1563348553),
(947, 'y-kien-khach-hang', 6, 0, 0, 1563243518),
(948, 'y-kien-khach-hang-gsgpvitqfx', 6, 653, 0, 1563243531),
(949, 'nguyen-van-a', 6, 653, 1282, 1563245471),
(950, 'nguyen-van-b', 6, 653, 1283, 1563245451),
(951, 'nguyen-van-c', 6, 653, 1284, 1563245458),
(952, 'nguyen-van-d', 6, 653, 1285, 1563245465),
(953, 'nguyen-van-e', 6, 653, 1286, 1563245443),
(954, 'nguyen-van-f', 6, 653, 1287, 1563246970),
(955, 'img-01', 5, 114, 777, 1563249717),
(956, 've-good-math-2prnljaa4d', 1, 642, 1288, 1563264477),
(957, 'lop-nen-tang-vxcn6qzoc4', 2, 646, 1289, 1563352769),
(958, 'so-lieu', 1, 654, 0, 1563259820),
(959, 'giao-vien', 1, 654, 1290, 1563259924),
(960, 'tiet-hoc', 1, 654, 1291, 1563259947),
(961, 'hoc-vien', 1, 654, 1292, 1563259968),
(962, 'kinh-nghiem', 1, 654, 1293, 1563259986),
(963, 'chu-thi-thanh-thao', 1, 643, 1294, 1563261325),
(964, 'nguyen-bich-phuong', 1, 643, 1295, 1563261340),
(965, 'pham-thi-huyen', 1, 643, 1296, 1563261359),
(966, 'hoang-thi-kim-hoa', 1, 643, 1297, 1563261379),
(967, 'nguyen-thi-nhung', 1, 643, 1298, 1563261656),
(968, 'nguyen-thanh-huong', 1, 643, 1299, 1563261679),
(969, 'trinh-xuan-nghia', 1, 643, 1300, 1563261429),
(970, 'duong-thi-nhan', 1, 643, 1301, 1563261446),
(971, 'doi-tac-1', 1, 645, 1302, 1563263491),
(972, 'doi-tac-2', 1, 645, 1303, 1563263512),
(973, 'doi-tac-3', 1, 645, 1304, 1563264226),
(974, 'doi-tac-4', 1, 645, 1305, 1563263536),
(975, 'doi-tac-5', 1, 645, 1306, 1563263547),
(976, 'doi-tac-6', 1, 645, 1307, 1563263559),
(977, 'doi-tac-7', 1, 645, 1308, 1563263690),
(978, 'doi-tac-8', 1, 645, 1309, 1563263703),
(979, 'doi-tac-9', 1, 645, 1310, 1563263715),
(980, 'doi-tac-10', 1, 645, 1311, 1563263726),
(981, 'chuong-trinh-hoc', 1, 644, 1312, 1563264697),
(982, 'chinh-phuc-toan-nang-cao-1', 2, 646, 1313, 1563352868),
(983, 'trung-tam-a', 4, 649, 1314, 1563359525),
(984, 'co-so-2', 4, 649, 1315, 1563375459),
(985, 'co-so-1', 4, 649, 1316, 1563359287),
(986, 'quan-li-trung-tam', 4, 650, 1317, 1563375737),
(987, 'giao-vien-toan-tieu-hoc-trung-hoc', 4, 650, 1318, 1563375759),
(988, 'giao-vien-mam-non', 4, 650, 1319, 1563375777),
(989, 'nhan-vien-tu-van', 4, 650, 1320, 1563375791);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_location`
--

CREATE TABLE `olala3w_location` (
  `location_id` int(11) NOT NULL,
  `location_menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_location_menu`
--

CREATE TABLE `olala3w_location_menu` (
  `location_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) DEFAULT 'no',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_online`
--

CREATE TABLE `olala3w_online` (
  `online_id` bigint(20) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0',
  `site` varchar(255) NOT NULL,
  `agent` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `olala3w_online`
--

INSERT INTO `olala3w_online` (`online_id`, `ip`, `created_time`, `site`, `agent`, `user_id`) VALUES
(264, '127.0.0.1', 1563421405, 'url=css/fonts/slick.ttf', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_online_daily`
--

CREATE TABLE `olala3w_online_daily` (
  `online_daily_id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala3w_online_daily`
--

INSERT INTO `olala3w_online_daily` (`online_daily_id`, `date`, `count`) VALUES
(794, '2018-11-27', 4),
(793, '2018-11-26', 2),
(792, '2018-11-22', 4),
(791, '2018-11-21', 4),
(790, '2018-11-20', 1),
(789, '2018-11-19', 6),
(788, '2018-11-15', 11),
(787, '2018-11-14', 4),
(786, '2018-11-13', 4),
(785, '2018-11-10', 10),
(795, '2018-11-29', 2),
(796, '2018-11-30', 3),
(797, '2018-12-02', 3),
(798, '2018-12-03', 15),
(799, '2018-12-04', 12),
(800, '2018-12-05', 4),
(801, '2018-12-06', 1),
(802, '2018-12-07', 3),
(803, '2018-12-08', 7),
(804, '2018-12-10', 13),
(805, '2018-12-11', 8),
(806, '2018-12-12', 4),
(807, '2018-12-13', 3),
(808, '2018-12-26', 3),
(809, '2018-12-27', 6),
(810, '2018-12-28', 1),
(811, '2019-01-07', 4),
(812, '2019-01-08', 10),
(813, '2019-01-09', 8),
(814, '2019-01-10', 7),
(815, '2019-01-13', 1),
(816, '2019-01-14', 1),
(817, '2019-01-17', 1),
(818, '2019-01-25', 1),
(819, '2019-02-18', 1),
(820, '2019-07-13', 10),
(821, '2019-07-15', 4),
(822, '2019-07-16', 6),
(823, '2019-07-17', 7),
(824, '2019-07-18', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_order`
--

CREATE TABLE `olala3w_order` (
  `order_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` text CHARACTER SET utf8mb4 NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `ip` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL DEFAULT 'fa-shopping-cart',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala3w_order`
--

INSERT INTO `olala3w_order` (`order_id`, `name`, `phone`, `email`, `content`, `is_active`, `ip`, `icon`, `created_time`, `modified_time`) VALUES
(19, 'Test', '0123456789', 'test@gmail.com', '<div marginwidth=\"0\" marginheight=\"0\" style=\"font-family:Arial,serif;\"><table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" style=\"table-layout:fixed;\"><tbody><tr><td width=\"100%\" valign=\"top\" bgcolor=\"#f5f5f5\" style=\"border-top:3px solid #ed3237;padding:0;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" style=\"margin:0 auto;width:100%;\"><tbody><tr><td bgcolor=\"white\" style=\"padding:10px 0; text-align: center;\"><a href=\"http://goodmath:8080\" target=\"_blank\"><img src=\"http://goodmath:8080/uploads/files/logo.png\" style=\"max-height:70px;max-width:80%;\" alt=\"GOODMATH\" border=\"0\"></a></td></tr></tbody></table><div style=\"min-height:35px\">&nbsp;</div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" style=\"min-width:290px;margin:0 auto;font-size:13px;color:#666666;font-weight:normal;text-align:left;font-family:Arial,serif;line-height:18px;\" width=\"620\"><tbody><tr><td style=\"border-left:6px solid #ed3237;font-size:13px;color:#666666;font-weight:normal;text-align:left;font-family:Arial,serif;line-height:18px;vertical-align:top;padding:15px 8px 25px 20px;\" bgcolor=\"#fdfdfd\"><p style=\"margin: 10px 0\">Chào <b> Test</b>,</p><p style=\"margin: 10px 0\">Xin chân thành cảm ơn Quý khách đã quan tâm và sử dụng dịch vụ của chúng tôi!\nYêu cầu của Quý khách đã gửi thành công. Chúng tôi sẽ phản hồi lại trong vòng 24h tới.\nChân thành cảm ơn!</p><p style=\"margin: 10px 0\"><b style=\"text-decoration:underline;\">THÔNG TIN LIÊN HỆ CỦA QUÝ KHÁCH:</b><br/><label style=\"font-weight:600;padding-left:12px;\">Họ và tên em bé: </label> Test<br/><label style=\"font-weight:600;padding-left:12px;\">Ngày tháng năm sinh: </label> 01/07/2019<br/><label style=\"font-weight:600;padding-left:12px;\">khu vực sinh sống: </label> Đà Nẵng<br/><label style=\"font-weight:600;padding-left:12px;\">Địa chỉ: </label> Đà Nẵng<br/><label style=\"font-weight:600;padding-left:12px;\">Số điện thoại phụ huynh: </label> 0123456789<br/><label style=\"font-weight:600;padding-left:12px;\">Email: </label> test@gmail.com<br/><label style=\"font-weight:600;padding-left:12px;\">IP: </label> 127.0.0.1<br/><label style=\"font-weight:600;padding-left:12px;\">Ngày gửi: </label> 17/07/2019 22:59<br/></p><p style=\"margin: 10px 0\">Đây là hộp thư tự động. Sau thời gian trên nếu quý khách chưa nhân được phản hồi từ nhân viên của chúng tôi, rất có thể đã gặp sự cố nhỏ nào đó vì vậy Quý khách có thể liên hệ trực tiếp chúng tôi để nhận được những thông tin nhanh nhất.</p><p style=\"margin: 10px 0\">Chân thành cảm ơn!</p></td></tr></tbody></table><div style=\"min-height:35px\">&nbsp;</div><table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\"><tbody><tr><td bgcolor=\"#e1e1e1\" style=\"padding:15px 10px 25px\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" style=\"margin:0 auto;min-width:290px;\" width=\"620\"><tbody><tr><td><table width=\"80%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"left\"><tbody><tr><td valign=\"top\" style=\"font-size:12px;color:#5e5e5e;font-family:Arial,serif;line-height:15px;\">GOODMATH</td></tr></tbody></table><table width=\"20%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tbody><tr><td style=\"font-size:13px;color:#5e5e5e;font-family:Arial,serif;line-height:1;vertical-align:top;text-align:right;font-style:italic;\"><span>Follow us on</span><br><a href=\"https://www.facebook.com\" target=\"_blank\"><img src=\"https://ci5.googleusercontent.com/proxy/PMSfAkbhhMLEe-tDCLFilReG-hlq_DWsTblTQ2qp8Dsq9KFW1UyFcKTr_uwU3EqyR8AhiFIooeExoAw9Oe3G5c6hvIEoOnU=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/fb.png\" width=\"27\" height=\"27\" alt=\"Facebook logo\" title=\"Facebook\" border=\"0\" style=\"padding:3px;\"></a>&nbsp;<a href=\"https://twitter.com\" target=\"_blank\"><img src=\"https://ci3.googleusercontent.com/proxy/GNHxgrYKL99Apyic0XnGYk6IqVZAc-wFuhgCDxzBYMr80NGggmI1nRORIBVRIkPkJHbQHGGMrTFtbzTDoxk5dc0i_H0HOc0=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/tw.png\" width=\"27\" height=\"27\" alt=\"Twitter logo\" title=\"Twitter\" border=\"0\" style=\"padding:3px;\"></a></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></div>', 0, '127.0.0.1', 'fa-shopping-cart', 1563379190, 1563379198),
(21, 'vv', '0147852369', 'hoa.vo@danaweb.vn', '<div marginwidth=\"0\" marginheight=\"0\" style=\"font-family:Arial,serif;\"><table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" style=\"table-layout:fixed;\"><tbody><tr><td width=\"100%\" valign=\"top\" bgcolor=\"#f5f5f5\" style=\"border-top:3px solid #ed3237;padding:0;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" style=\"margin:0 auto;width:100%;\"><tbody><tr><td bgcolor=\"white\" style=\"padding:10px 0; text-align: center;\"><a href=\"http://goodmath:8080\" target=\"_blank\"><img src=\"http://goodmath:8080/uploads/files/logo.png\" style=\"max-height:70px;max-width:80%;\" alt=\"GOODMATH\" border=\"0\"></a></td></tr></tbody></table><div style=\"min-height:35px\">&nbsp;</div><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" style=\"min-width:290px;margin:0 auto;font-size:13px;color:#666666;font-weight:normal;text-align:left;font-family:Arial,serif;line-height:18px;\" width=\"620\"><tbody><tr><td style=\"border-left:6px solid #ed3237;font-size:13px;color:#666666;font-weight:normal;text-align:left;font-family:Arial,serif;line-height:18px;vertical-align:top;padding:15px 8px 25px 20px;\" bgcolor=\"#fdfdfd\"><p style=\"margin: 10px 0\">Chào <b> vv</b>,</p><p style=\"margin: 10px 0\">Xin chân thành cảm ơn Quý khách đã quan tâm và sử dụng dịch vụ của chúng tôi!\nYêu cầu của Quý khách đã gửi thành công. Chúng tôi sẽ phản hồi lại trong vòng 24h tới.\nChân thành cảm ơn!</p><p style=\"margin: 10px 0\"><b style=\"text-decoration:underline;\">THÔNG TIN LIÊN HỆ CỦA QUÝ KHÁCH:</b><br/><label style=\"font-weight:600;padding-left:12px;\">Họ và tên em bé: </label> vv<br/><label style=\"font-weight:600;padding-left:12px;\">Ngày tháng năm sinh: </label> 18/07/2019<br/><label style=\"font-weight:600;padding-left:12px;\">khu vực sinh sống: </label> cc<br/><label style=\"font-weight:600;padding-left:12px;\">Địa chỉ: </label> xx<br/><label style=\"font-weight:600;padding-left:12px;\">Số điện thoại phụ huynh: </label> 0147852369<br/><label style=\"font-weight:600;padding-left:12px;\">Email: </label> hoa.vo@danaweb.vn<br/><label style=\"font-weight:600;padding-left:12px;\">IP: </label> 127.0.0.1<br/><label style=\"font-weight:600;padding-left:12px;\">Ngày gửi: </label> 17/07/2019 23:19<br/></p><p style=\"margin: 10px 0\">Đây là hộp thư tự động. Sau thời gian trên nếu quý khách chưa nhân được phản hồi từ nhân viên của chúng tôi, rất có thể đã gặp sự cố nhỏ nào đó vì vậy Quý khách có thể liên hệ trực tiếp chúng tôi để nhận được những thông tin nhanh nhất.</p><p style=\"margin: 10px 0\">Chân thành cảm ơn!</p></td></tr></tbody></table><div style=\"min-height:35px\">&nbsp;</div><table width=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\"><tbody><tr><td bgcolor=\"#e1e1e1\" style=\"padding:15px 10px 25px\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" align=\"center\" style=\"margin:0 auto;min-width:290px;\" width=\"620\"><tbody><tr><td><table width=\"80%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"left\"><tbody><tr><td valign=\"top\" style=\"font-size:12px;color:#5e5e5e;font-family:Arial,serif;line-height:15px;\">GOODMATH</td></tr></tbody></table><table width=\"20%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tbody><tr><td style=\"font-size:13px;color:#5e5e5e;font-family:Arial,serif;line-height:1;vertical-align:top;text-align:right;font-style:italic;\"><span>Follow us on</span><br><a href=\"https://www.facebook.com\" target=\"_blank\"><img src=\"https://ci5.googleusercontent.com/proxy/PMSfAkbhhMLEe-tDCLFilReG-hlq_DWsTblTQ2qp8Dsq9KFW1UyFcKTr_uwU3EqyR8AhiFIooeExoAw9Oe3G5c6hvIEoOnU=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/fb.png\" width=\"27\" height=\"27\" alt=\"Facebook logo\" title=\"Facebook\" border=\"0\" style=\"padding:3px;\"></a>&nbsp;<a href=\"https://twitter.com\" target=\"_blank\"><img src=\"https://ci3.googleusercontent.com/proxy/GNHxgrYKL99Apyic0XnGYk6IqVZAc-wFuhgCDxzBYMr80NGggmI1nRORIBVRIkPkJHbQHGGMrTFtbzTDoxk5dc0i_H0HOc0=s0-d-e1-ft#https://www.livecoding.tv/static/img/email/tw.png\" width=\"27\" height=\"27\" alt=\"Twitter logo\" title=\"Twitter\" border=\"0\" style=\"padding:3px;\"></a></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></div>', 0, '127.0.0.1', 'fa-shopping-cart', 1563380377, 1563380386);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_others`
--

CREATE TABLE `olala3w_others` (
  `others_id` int(11) NOT NULL,
  `others_menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `p_from` int(11) NOT NULL,
  `p_to` text NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_others_menu`
--

CREATE TABLE `olala3w_others_menu` (
  `others_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `plus` varchar(255) NOT NULL,
  `menu` int(1) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_page`
--

CREATE TABLE `olala3w_page` (
  `page_id` int(11) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_prjname`
--

CREATE TABLE `olala3w_prjname` (
  `prjname_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_product`
--

CREATE TABLE `olala3w_product` (
  `product_id` int(11) NOT NULL,
  `product_menu_id` int(11) NOT NULL,
  `owner` int(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `img_note` varchar(255) NOT NULL,
  `upload_id` bigint(20) NOT NULL DEFAULT '0',
  `sale` bigint(15) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `guarantee` varchar(255) NOT NULL,
  `product_keys` varchar(50) NOT NULL,
  `direction` varchar(255) NOT NULL,
  `promotion` text NOT NULL,
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `content` text CHARACTER SET utf8mb4 NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `pin` int(1) NOT NULL DEFAULT '0',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_product_menu`
--

CREATE TABLE `olala3w_product_menu` (
  `product_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `plus` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `parent` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_project`
--

CREATE TABLE `olala3w_project` (
  `project_id` int(11) NOT NULL,
  `project_menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 NOT NULL,
  `upload_id` bigint(20) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_project_menu`
--

CREATE TABLE `olala3w_project_menu` (
  `project_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `comment` text CHARACTER SET utf8mb4 NOT NULL,
  `project_type` int(11) NOT NULL DEFAULT '0',
  `price_max` bigint(20) NOT NULL DEFAULT '0',
  `price_min` bigint(20) NOT NULL DEFAULT '0',
  `legal` int(1) NOT NULL DEFAULT '0',
  `location` int(11) NOT NULL DEFAULT '0',
  `geo_radius` int(11) NOT NULL DEFAULT '0',
  `project_use` varchar(255) NOT NULL,
  `project_hot` varchar(255) NOT NULL,
  `project_involve` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_question`
--

CREATE TABLE `olala3w_question` (
  `question_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `ip` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL DEFAULT 'fa-question-circle',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `reply` text NOT NULL,
  `is_hide` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_register_email`
--

CREATE TABLE `olala3w_register_email` (
  `register_email_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala3w_register_email`
--

INSERT INTO `olala3w_register_email` (`register_email_id`, `email`, `ip`, `created_time`) VALUES
(4, 'hoa.vo@danaweb.vn', '127.0.0.1', 1546833384);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_register_try`
--

CREATE TABLE `olala3w_register_try` (
  `register_try_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL DEFAULT 'no-name',
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_road`
--

CREATE TABLE `olala3w_road` (
  `road_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_street`
--

CREATE TABLE `olala3w_street` (
  `street_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_tour`
--

CREATE TABLE `olala3w_tour` (
  `tour_id` int(11) NOT NULL,
  `tour_menu_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `img_note` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `tour_keys` varchar(255) NOT NULL,
  `price` bigint(15) NOT NULL DEFAULT '0',
  `date_schedule` varchar(255) NOT NULL,
  `date_departure` int(11) NOT NULL DEFAULT '0',
  `means` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `tour_type` varchar(255) NOT NULL,
  `destination` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `sale` int(3) NOT NULL DEFAULT '0',
  `schedule` text CHARACTER SET utf8mb4 NOT NULL,
  `price_list_service` text NOT NULL,
  `upload_id` bigint(20) NOT NULL,
  `maps` text CHARACTER SET utf8mb4 NOT NULL,
  `video` text CHARACTER SET utf8mb4 NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `pin` int(1) NOT NULL DEFAULT '0',
  `views` bigint(20) NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_tour_menu`
--

CREATE TABLE `olala3w_tour_menu` (
  `tour_menu_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` text NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '1',
  `is_active` int(1) NOT NULL DEFAULT '1',
  `hot` int(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL DEFAULT 'no',
  `created_time` int(11) NOT NULL DEFAULT '0',
  `modified_time` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_uploads_tmp`
--

CREATE TABLE `olala3w_uploads_tmp` (
  `upload_id` bigint(20) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `list_img` text NOT NULL,
  `created_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `olala3w_uploads_tmp`
--

INSERT INTO `olala3w_uploads_tmp` (`upload_id`, `status`, `list_img`, `created_time`) VALUES
(2401, 1, '', 1543932658),
(2255, 1, '', 1532053690),
(2359, 1, '', 1542104974),
(2360, 1, '', 1542105078),
(2361, 1, '', 1542105155),
(2362, 0, '', 1542105182),
(2387, 0, '', 1543808286),
(2388, 1, '', 1543906670),
(2389, 0, '', 1543906681),
(2390, 1, '', 1543906725),
(2391, 1, '', 1543932276),
(2392, 1, '', 1543932389),
(2393, 1, '', 1543932440),
(2333, 1, '', 1541644004),
(2332, 1, '', 1541643085),
(2394, 1, '', 1543932477),
(2395, 1, '', 1543932512),
(2396, 1, '', 1543932548),
(2397, 1, '', 1543932588),
(2398, 1, '', 1543932609),
(2358, 0, '', 1542099112),
(2357, 0, '', 1542099088),
(2356, 0, '', 1542098966),
(2355, 0, '', 1542096397),
(2354, 0, '', 1542096379),
(2353, 0, '', 1542095890),
(2352, 1, '', 1542072580),
(2351, 0, '', 1541836023),
(2349, 0, '', 1541835390),
(2348, 0, '', 1541835359),
(2347, 0, '', 1541835327),
(2346, 0, '', 1541834609),
(2345, 0, '', 1541834456),
(2344, 1, '', 1541669374),
(2343, 1, '', 1541669349),
(2342, 1, '', 1541664491),
(2341, 1, '', 1541664477),
(2340, 1, '', 1541664459),
(2339, 1, '', 1541664434),
(2334, 1, '', 1541650333),
(2335, 1, '', 1541650360),
(2336, 1, '1542101757_2336_28cfff02ed3fe5183a00b1445c906aa2.png;1542101758_2336_7a30c714a7423a06370cb436c7811ed0.png;1542101758_2336_6b6535f5244b242ac1bca2a68bc1ddb3.png;1542101765_2336_8e1f54c74ffa03d4776f71b0641f1da5.png;1542101765_2336_e5cad5d15e37c0f52b28c277ffdaa843.png;', 1541650380),
(2400, 1, '', 1543932641),
(2399, 1, '', 1543932626),
(2366, 1, '', 1543563043),
(2367, 1, '', 1543563196),
(2368, 1, '', 1543563214),
(2369, 1, '', 1543563231),
(2370, 1, '', 1543563246),
(2371, 1, '', 1543563746),
(2372, 1, '', 1543563773),
(2373, 1, '', 1543563806),
(2374, 1, '', 1543563828),
(2375, 1, '', 1543563860),
(2376, 1, '', 1543565739),
(2377, 1, '', 1543565781),
(2378, 1, '', 1543565808),
(2379, 1, '', 1543565832),
(2380, 1, '', 1543565852),
(2381, 1, '', 1543565872),
(2382, 1, '', 1543570932),
(2383, 1, '', 1543570954),
(2384, 1, '', 1543570971),
(2385, 1, '', 1543570983),
(2386, 1, '', 1543571000),
(2402, 1, '', 1543932672),
(2403, 1, '1543938600_2403_99de391b06c7d3fa2b77c22e50eb96ae.png;1543944276_2403_fcdb6b54028a12b6c386e154e001826f.png;', 1543938567),
(2404, 1, '1543938673_2404_05fee2d5e1389c0380951fed4807f454.png;1543944260_2404_9f12321e58594b770a6e5acdf83cff90.png;1544427637_2404_24cdf185a35164355cd659db9db86c19.png;1544427638_2404_78e6b7b409786e1dd61d08d2a0c025fd.png;', 1543938620),
(2405, 1, '1543941025_2405_5d917bca91390a3e95d3be1798f79cdc.png;1543941034_2405_5cce9b26cb991dfc2c7795243eb73b75.png;', 1543938893),
(2406, 1, '1543944361_2406_74083fd6d182686648a99b774b158c64.png;1543944366_2406_cdc9e16aea639c77f15cce0fb5dbc164.png;', 1543938975),
(2407, 1, '', 1543939033),
(2408, 0, '', 1543939048),
(2409, 1, '1543944379_2409_9f621a94061b86a18d46ddb43df94548.png;', 1543940443),
(2410, 0, '', 1543940468),
(2411, 1, '', 1543973726),
(2412, 1, '', 1543974925),
(2413, 1, '', 1543977265),
(2414, 1, '', 1543977318),
(2415, 0, '', 1543977354),
(2416, 0, '', 1543978590),
(2417, 1, '', 1543978679),
(2418, 0, '', 1543978703),
(2419, 1, '', 1543980130),
(2420, 1, '', 1543980160),
(2421, 1, '', 1543980204),
(2422, 1, '', 1543980231),
(2423, 1, '', 1543980258),
(2424, 1, '', 1543983164),
(2425, 0, '', 1543983231),
(2426, 1, '', 1543983313),
(2427, 1, '', 1543983336),
(2428, 1, '', 1543983353),
(2429, 1, '', 1543983375),
(2430, 1, '', 1543989236),
(2431, 0, '', 1543989268),
(2432, 1, '', 1543989292),
(2433, 1, '', 1543989331),
(2434, 1, '', 1544510428),
(2435, 1, '', 1545896869),
(2436, 1, '', 1545896892),
(2437, 1, '', 1545896903),
(2438, 1, '', 1545900582),
(2439, 1, '', 1545900611),
(2440, 1, '', 1545900626),
(2441, 1, '', 1546834859),
(2442, 0, '', 1546834861),
(2443, 1, '', 1546834931),
(2444, 1, '', 1546834981),
(2445, 1, '', 1546850901),
(2446, 1, '', 1546850966),
(2447, 1, '', 1546850989),
(2448, 1, '', 1546851007),
(2449, 0, '', 1546929285),
(2450, 0, '', 1546929491),
(2451, 0, '', 1546929534),
(2452, 0, '', 1546929570),
(2453, 0, '', 1546929570),
(2454, 0, '', 1546929571),
(2455, 0, '', 1546929653),
(2456, 0, '', 1546929661),
(2457, 0, '', 1546929711),
(2458, 0, '', 1546930193),
(2459, 0, '', 1546930219),
(2460, 0, '', 1546930239),
(2461, 0, '', 1546930255),
(2462, 0, '', 1546930288),
(2463, 0, '', 1546930331),
(2464, 0, '', 1546930342),
(2465, 0, '', 1546930370),
(2466, 0, '', 1546930428),
(2467, 1, '1546934149_2467_59a897ab52704af827f947438dd5674e.png;1546934149_2467_5788da0a99d4261fae19df4665c0eca5.png;1546934150_2467_29e512908b76f764722318fa2392789a.png;', 1546930446),
(2468, 1, '', 1546937646),
(2469, 0, '', 1546997496),
(2470, 0, '', 1546997613),
(2471, 0, '', 1546997628),
(2472, 1, '', 1546997634),
(2473, 1, '', 1546997943),
(2474, 0, '', 1546997995),
(2475, 1, '', 1546998027),
(2476, 1, '', 1547001688),
(2477, 1, '', 1547090478),
(2478, 1, '', 1563205509),
(2479, 1, '', 1563205537),
(2480, 1, '', 1563205556),
(2481, 1, '', 1563206775),
(2482, 1, '', 1563206798),
(2483, 1, '', 1563206819),
(2484, 1, '', 1563206833),
(2485, 1, '', 1563206848),
(2486, 1, '', 1563206862),
(2487, 1, '', 1563243759),
(2488, 1, '', 1563243793),
(2489, 1, '', 1563243810),
(2490, 1, '', 1563243837),
(2491, 1, '', 1563243853),
(2492, 1, '', 1563246951),
(2493, 1, '', 1563249699),
(2494, 1, '', 1563251227),
(2495, 1, '', 1563251374),
(2496, 1, '', 1563259898),
(2497, 1, '', 1563259926),
(2498, 1, '', 1563259952),
(2499, 1, '', 1563259971),
(2500, 1, '', 1563261209),
(2501, 1, '', 1563261328),
(2502, 1, '', 1563261346),
(2503, 1, '', 1563261362),
(2504, 1, '', 1563261383),
(2505, 1, '', 1563261405),
(2506, 1, '', 1563261419),
(2507, 1, '', 1563261435),
(2508, 1, '', 1563263473),
(2509, 1, '', 1563263495),
(2510, 1, '', 1563263515),
(2511, 1, '', 1563263526),
(2512, 1, '', 1563263538),
(2513, 1, '', 1563263549),
(2514, 1, '', 1563263680),
(2515, 1, '', 1563263693),
(2516, 1, '', 1563263706),
(2517, 1, '', 1563263718),
(2518, 1, '', 1563264677),
(2519, 1, '', 1563266780),
(2520, 1, '', 1563357705),
(2521, 1, '', 1563359022),
(2522, 1, '', 1563359046),
(2523, 1, '', 1563375665),
(2524, 1, '', 1563375742),
(2525, 1, '', 1563375762),
(2526, 1, '', 1563375780);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `olala3w_vote`
--

CREATE TABLE `olala3w_vote` (
  `vote_id` bigint(20) NOT NULL,
  `session` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `vote` int(1) NOT NULL DEFAULT '0',
  `created_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `olala3w_article`
--
ALTER TABLE `olala3w_article`
  ADD PRIMARY KEY (`article_id`);

--
-- Chỉ mục cho bảng `olala3w_article_menu`
--
ALTER TABLE `olala3w_article_menu`
  ADD PRIMARY KEY (`article_menu_id`);

--
-- Chỉ mục cho bảng `olala3w_car`
--
ALTER TABLE `olala3w_car`
  ADD PRIMARY KEY (`car_id`);

--
-- Chỉ mục cho bảng `olala3w_car_menu`
--
ALTER TABLE `olala3w_car_menu`
  ADD PRIMARY KEY (`car_menu_id`);

--
-- Chỉ mục cho bảng `olala3w_category`
--
ALTER TABLE `olala3w_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `olala3w_category_type`
--
ALTER TABLE `olala3w_category_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Chỉ mục cho bảng `olala3w_constant`
--
ALTER TABLE `olala3w_constant`
  ADD PRIMARY KEY (`constant_id`);

--
-- Chỉ mục cho bảng `olala3w_contact`
--
ALTER TABLE `olala3w_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Chỉ mục cho bảng `olala3w_core_privilege`
--
ALTER TABLE `olala3w_core_privilege`
  ADD PRIMARY KEY (`privilege_id`);

--
-- Chỉ mục cho bảng `olala3w_core_role`
--
ALTER TABLE `olala3w_core_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Chỉ mục cho bảng `olala3w_core_user`
--
ALTER TABLE `olala3w_core_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Chỉ mục cho bảng `olala3w_direction`
--
ALTER TABLE `olala3w_direction`
  ADD PRIMARY KEY (`direction_id`);

--
-- Chỉ mục cho bảng `olala3w_document`
--
ALTER TABLE `olala3w_document`
  ADD PRIMARY KEY (`document_id`);

--
-- Chỉ mục cho bảng `olala3w_document_menu`
--
ALTER TABLE `olala3w_document_menu`
  ADD PRIMARY KEY (`document_menu_id`);

--
-- Chỉ mục cho bảng `olala3w_gallery`
--
ALTER TABLE `olala3w_gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Chỉ mục cho bảng `olala3w_gallery_menu`
--
ALTER TABLE `olala3w_gallery_menu`
  ADD PRIMARY KEY (`gallery_menu_id`);

--
-- Chỉ mục cho bảng `olala3w_gift`
--
ALTER TABLE `olala3w_gift`
  ADD PRIMARY KEY (`gift_id`);

--
-- Chỉ mục cho bảng `olala3w_gift_menu`
--
ALTER TABLE `olala3w_gift_menu`
  ADD PRIMARY KEY (`gift_menu_id`);

--
-- Chỉ mục cho bảng `olala3w_link`
--
ALTER TABLE `olala3w_link`
  ADD PRIMARY KEY (`link_id`);

--
-- Chỉ mục cho bảng `olala3w_location`
--
ALTER TABLE `olala3w_location`
  ADD PRIMARY KEY (`location_id`);

--
-- Chỉ mục cho bảng `olala3w_location_menu`
--
ALTER TABLE `olala3w_location_menu`
  ADD PRIMARY KEY (`location_menu_id`);

--
-- Chỉ mục cho bảng `olala3w_online`
--
ALTER TABLE `olala3w_online`
  ADD PRIMARY KEY (`online_id`);

--
-- Chỉ mục cho bảng `olala3w_online_daily`
--
ALTER TABLE `olala3w_online_daily`
  ADD PRIMARY KEY (`online_daily_id`);

--
-- Chỉ mục cho bảng `olala3w_order`
--
ALTER TABLE `olala3w_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `olala3w_others`
--
ALTER TABLE `olala3w_others`
  ADD PRIMARY KEY (`others_id`);

--
-- Chỉ mục cho bảng `olala3w_others_menu`
--
ALTER TABLE `olala3w_others_menu`
  ADD PRIMARY KEY (`others_menu_id`);

--
-- Chỉ mục cho bảng `olala3w_page`
--
ALTER TABLE `olala3w_page`
  ADD PRIMARY KEY (`page_id`);

--
-- Chỉ mục cho bảng `olala3w_prjname`
--
ALTER TABLE `olala3w_prjname`
  ADD PRIMARY KEY (`prjname_id`);

--
-- Chỉ mục cho bảng `olala3w_product`
--
ALTER TABLE `olala3w_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `olala3w_product_menu`
--
ALTER TABLE `olala3w_product_menu`
  ADD PRIMARY KEY (`product_menu_id`);

--
-- Chỉ mục cho bảng `olala3w_project`
--
ALTER TABLE `olala3w_project`
  ADD PRIMARY KEY (`project_id`);

--
-- Chỉ mục cho bảng `olala3w_project_menu`
--
ALTER TABLE `olala3w_project_menu`
  ADD PRIMARY KEY (`project_menu_id`);

--
-- Chỉ mục cho bảng `olala3w_question`
--
ALTER TABLE `olala3w_question`
  ADD PRIMARY KEY (`question_id`);

--
-- Chỉ mục cho bảng `olala3w_register_email`
--
ALTER TABLE `olala3w_register_email`
  ADD PRIMARY KEY (`register_email_id`);

--
-- Chỉ mục cho bảng `olala3w_register_try`
--
ALTER TABLE `olala3w_register_try`
  ADD PRIMARY KEY (`register_try_id`);

--
-- Chỉ mục cho bảng `olala3w_road`
--
ALTER TABLE `olala3w_road`
  ADD PRIMARY KEY (`road_id`);

--
-- Chỉ mục cho bảng `olala3w_street`
--
ALTER TABLE `olala3w_street`
  ADD PRIMARY KEY (`street_id`);

--
-- Chỉ mục cho bảng `olala3w_tour`
--
ALTER TABLE `olala3w_tour`
  ADD PRIMARY KEY (`tour_id`);

--
-- Chỉ mục cho bảng `olala3w_tour_menu`
--
ALTER TABLE `olala3w_tour_menu`
  ADD PRIMARY KEY (`tour_menu_id`);

--
-- Chỉ mục cho bảng `olala3w_uploads_tmp`
--
ALTER TABLE `olala3w_uploads_tmp`
  ADD PRIMARY KEY (`upload_id`);

--
-- Chỉ mục cho bảng `olala3w_vote`
--
ALTER TABLE `olala3w_vote`
  ADD PRIMARY KEY (`vote_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `olala3w_article`
--
ALTER TABLE `olala3w_article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1321;

--
-- AUTO_INCREMENT cho bảng `olala3w_article_menu`
--
ALTER TABLE `olala3w_article_menu`
  MODIFY `article_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=655;

--
-- AUTO_INCREMENT cho bảng `olala3w_car`
--
ALTER TABLE `olala3w_car`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT cho bảng `olala3w_car_menu`
--
ALTER TABLE `olala3w_car_menu`
  MODIFY `car_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT cho bảng `olala3w_category`
--
ALTER TABLE `olala3w_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT cho bảng `olala3w_category_type`
--
ALTER TABLE `olala3w_category_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `olala3w_constant`
--
ALTER TABLE `olala3w_constant`
  MODIFY `constant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `olala3w_contact`
--
ALTER TABLE `olala3w_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `olala3w_core_privilege`
--
ALTER TABLE `olala3w_core_privilege`
  MODIFY `privilege_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6044;

--
-- AUTO_INCREMENT cho bảng `olala3w_core_role`
--
ALTER TABLE `olala3w_core_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `olala3w_core_user`
--
ALTER TABLE `olala3w_core_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `olala3w_direction`
--
ALTER TABLE `olala3w_direction`
  MODIFY `direction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `olala3w_document`
--
ALTER TABLE `olala3w_document`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `olala3w_document_menu`
--
ALTER TABLE `olala3w_document_menu`
  MODIFY `document_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `olala3w_gallery`
--
ALTER TABLE `olala3w_gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=778;

--
-- AUTO_INCREMENT cho bảng `olala3w_gallery_menu`
--
ALTER TABLE `olala3w_gallery_menu`
  MODIFY `gallery_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT cho bảng `olala3w_gift`
--
ALTER TABLE `olala3w_gift`
  MODIFY `gift_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT cho bảng `olala3w_gift_menu`
--
ALTER TABLE `olala3w_gift_menu`
  MODIFY `gift_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT cho bảng `olala3w_link`
--
ALTER TABLE `olala3w_link`
  MODIFY `link_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=990;

--
-- AUTO_INCREMENT cho bảng `olala3w_location`
--
ALTER TABLE `olala3w_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `olala3w_location_menu`
--
ALTER TABLE `olala3w_location_menu`
  MODIFY `location_menu_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `olala3w_online`
--
ALTER TABLE `olala3w_online`
  MODIFY `online_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT cho bảng `olala3w_online_daily`
--
ALTER TABLE `olala3w_online_daily`
  MODIFY `online_daily_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=825;

--
-- AUTO_INCREMENT cho bảng `olala3w_order`
--
ALTER TABLE `olala3w_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `olala3w_others`
--
ALTER TABLE `olala3w_others`
  MODIFY `others_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `olala3w_others_menu`
--
ALTER TABLE `olala3w_others_menu`
  MODIFY `others_menu_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `olala3w_page`
--
ALTER TABLE `olala3w_page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT cho bảng `olala3w_prjname`
--
ALTER TABLE `olala3w_prjname`
  MODIFY `prjname_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `olala3w_product`
--
ALTER TABLE `olala3w_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=663;

--
-- AUTO_INCREMENT cho bảng `olala3w_product_menu`
--
ALTER TABLE `olala3w_product_menu`
  MODIFY `product_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT cho bảng `olala3w_project`
--
ALTER TABLE `olala3w_project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT cho bảng `olala3w_project_menu`
--
ALTER TABLE `olala3w_project_menu`
  MODIFY `project_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT cho bảng `olala3w_question`
--
ALTER TABLE `olala3w_question`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `olala3w_register_email`
--
ALTER TABLE `olala3w_register_email`
  MODIFY `register_email_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `olala3w_register_try`
--
ALTER TABLE `olala3w_register_try`
  MODIFY `register_try_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `olala3w_road`
--
ALTER TABLE `olala3w_road`
  MODIFY `road_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `olala3w_street`
--
ALTER TABLE `olala3w_street`
  MODIFY `street_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `olala3w_tour`
--
ALTER TABLE `olala3w_tour`
  MODIFY `tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `olala3w_tour_menu`
--
ALTER TABLE `olala3w_tour_menu`
  MODIFY `tour_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT cho bảng `olala3w_uploads_tmp`
--
ALTER TABLE `olala3w_uploads_tmp`
  MODIFY `upload_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2527;

--
-- AUTO_INCREMENT cho bảng `olala3w_vote`
--
ALTER TABLE `olala3w_vote`
  MODIFY `vote_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
