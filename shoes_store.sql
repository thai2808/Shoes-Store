-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 01, 2023 lúc 04:33 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shoes_store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `Username` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`Username`, `Password`) VALUES
('tuan123', 'tuan123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `BraID` int(20) NOT NULL,
  `BraName` varchar(100) NOT NULL,
  `BraImage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`BraID`, `BraName`, `BraImage`) VALUES
(1, 'Nike', 'nike.png'),
(2, 'Adidas', 'adidas.png'),
(3, 'Lacoste', 'lacoste.jpg'),
(4, 'Puma', 'Puma.jpg'),
(5, 'Balance', 'balance.png'),
(6, 'Asics', 'asics.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `CateID` int(10) NOT NULL,
  `CateName` varchar(50) NOT NULL,
  `CateStatus` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`CateID`, `CateName`, `CateStatus`) VALUES
(1, 'Giày Nam', 1),
(2, 'Giày Nữ', 1),
(3, 'Dép', 1),
(4, 'Sale', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `ComID` int(20) NOT NULL,
  `CusID` int(20) NOT NULL,
  `ProID` int(20) NOT NULL,
  `ComDate` datetime NOT NULL DEFAULT current_timestamp(),
  `ComContent` text NOT NULL,
  `ComStatus` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `CusID` int(20) NOT NULL,
  `CusUser` varchar(30) NOT NULL,
  `CusPass` varchar(30) NOT NULL,
  `CusName` varchar(50) NOT NULL,
  `CusPhone` varchar(15) NOT NULL,
  `CusMail` varchar(30) NOT NULL,
  `CusAdr` varchar(200) NOT NULL,
  `CusStatus` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oders`
--

CREATE TABLE `oders` (
  `OrdID` int(20) NOT NULL,
  `PayID` int(20) NOT NULL,
  `CusID` int(20) NOT NULL,
  `OrdStatus` tinyint(1) NOT NULL DEFAULT 0,
  `OrdDate` datetime NOT NULL DEFAULT current_timestamp(),
  `OrdShipDate` datetime NOT NULL,
  `OrdCustomer` varchar(150) NOT NULL,
  `OrdAdr` int(200) NOT NULL,
  `OrdPhone` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `odersdetail`
--

CREATE TABLE `odersdetail` (
  `OrdID` int(20) NOT NULL,
  `ProID` int(20) NOT NULL,
  `OrdQuantity` int(12) NOT NULL DEFAULT 1,
  `OrdPrice` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `paymentmethod`
--

CREATE TABLE `paymentmethod` (
  `PayID` int(20) NOT NULL,
  `PayType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `paymentmethod`
--

INSERT INTO `paymentmethod` (`PayID`, `PayType`) VALUES
(1, 'Thanh toán khi nhận hàng'),
(2, 'Chuyên khoản ngân hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `ProID` int(10) NOT NULL,
  `ProName` varchar(50) NOT NULL,
  `CateID` int(10) NOT NULL,
  `ProPrice` int(20) NOT NULL,
  `ProDate` datetime NOT NULL,
  `ProStatus` tinyint(1) NOT NULL DEFAULT 1,
  `ProPicture` varchar(200) NOT NULL,
  `ProInfo` text NOT NULL,
  `ProNumber` int(10) NOT NULL,
  `BraID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`ProID`, `ProName`, `CateID`, `ProPrice`, `ProDate`, `ProStatus`, `ProPicture`, `ProInfo`, `ProNumber`, `BraID`) VALUES
(1, 'Giày Adidas Adizero Rc 4 Wide Nam - Đen Trắng', 1, 1890000, '2023-05-17 00:00:00', 1, 'adidas1.jpg', 'Giày adidas Adizero RC 4 là mẫu giày chạy bộ nhẹ, có thiết kế đẹp, thời trang. Đặc điểm cực kỳ nổi bật là hơn 50% sản phẩm được làm bằng vật liệu tái chế thân thiện và bảo vệ môi trường. Phần upper của giày làm bằng chất liệu rất nhẹ và thoáng, giúp bàn chân thoải mái khi di chuyển. Phần đế giữa với công nghệ Lightstrike và TORSIONRODS  đàn hồi tốt giúp đẩy nhanh tốc độ khi chạy. Đây là mẫu giày đi bộ, chạy bộ, rất đáng để bạn lựa chọn.', 8, 2),
(2, 'Giày Adidas Adizero Rc 5 Nam - Đen Trắng', 1, 2100000, '2023-05-17 00:00:00', 1, 'adidas2.jpg', 'Giày adidas Adizero RC 5 là mẫu giày chạy bộ siêu nhẹ, có thiết kế cực đẹp và thời trang phù hợp cho cả nam và nữ. Đặc điểm cực kỳ nổi bật là hơn 50% sản phẩm được làm bằng vật liệu tái chế thân thiện và bảo vệ môi trường. Phần upper của giày làm bằng chất liệu rất nhẹ và thoáng, giúp bàn chân thoải mái khi di chuyển. Phần đế giữa với công nghệ Lightstrike và TORSIONRODS đàn hồi tốt giúp đẩy nhanh tốc độ khi chạy. Đây là mẫu giày đi bộ, chạy bộ, rất đáng để bạn lựa chọn.', 80, 2),
(3, 'Giày Adidas Grand Court Base 2.0 Nam - Trắng Đen', 1, 1700000, '2023-05-17 00:00:00', 1, 'adidas3.jpg', 'Giày adidas Grand Court Base 2.0 phiên bản nâng cấp rất được ưu chuộng của dòng Grand Court Base .Với những cải tiến mới khiến cho mẫu giày này bền đẹp và năng động hơn khá nhiều. Giày adidas Grand Court Base 2.0 chắc chắn sẽ là một mẫu giày thời trang không thể nào bỏ qua được trong năm nay.', 10, 2),
(4, 'Giày Adidas Pureboost 22 Jet Nam - Đen Trắng', 1, 2600000, '2023-05-17 00:00:00', 1, 'adidas4.jpg', 'Giày adidas Pureboost 22 Jet là một trong những mẫu giày thể thao có thiết kế và công nghệ tốt nhất của adidas. Pureboost 22 giúp bạn vững bước trên mỗi chặng đường. Giày adidas Pureboost 22 có phần upper được làm từ chất liệu thoáng khí giúp thoát mồ hôi và cảm giác rất dễ chịu. Phần đế giữa công nghệ Full Boost trứ danh giúp hoàn trả năng lượng đáng kinh ngạc. Phần đế ngoài với chất liệu cao su Stretchweb bền đẹp.', 20, 2),
(5, 'Giày Adidas Pureboost 22 Jet Nam - Trắng', 1, 2600000, '2023-05-17 00:00:00', 1, 'adidas5.jpg', 'Giày adidas Pureboost 22 Jet là một trong những mẫu giày thể thao có thiết kế và công nghệ tốt nhất của adidas. Pureboost 22 giúp bạn vững bước trên mỗi chặng đường. Giày adidas Pureboost 22 có phần upper được làm từ chất liệu thoáng khí giúp thoát mồ hôi và cảm giác rất dễ chịu. Phần đế giữa công nghệ Full Boost trứ danh giúp hoàn trả năng lượng đáng kinh ngạc. Phần đế ngoài với chất liệu cao su Stretchweb bền đẹp.', 121, 2),
(6, 'Giày Adidas Pureboost 22 Nam - Trắng Xanh', 1, 2600000, '2023-05-17 00:00:00', 1, 'adidas6.jpg', 'Giày adidas Pureboost 22 Jet là một trong những mẫu giày thể thao có thiết kế và công nghệ tốt nhất của adidas. Pureboost 22 giúp bạn vững bước trên mỗi chặng đường. Giày adidas Pureboost 22 có phần upper được làm từ chất liệu thoáng khí giúp thoát mồ hôi và cảm giác rất dễ chịu. Phần đế giữa công nghệ Full Boost trứ danh giúp hoàn trả năng lượng đáng kinh ngạc. Phần đế ngoài với chất liệu cao su Stretchweb bền đẹp.', 92, 2),
(7, 'Giày Adidas Runfalcon 3.0 Nam - Trắng Đen', 1, 1590000, '2023-05-17 00:00:00', 1, 'adidas7.jpg', 'Giày Adidas RunFalcon 3.0 là mẫu giày thể thao mới nhất của adidas. Với thiết kế trẻ trung, khỏe khoắn, ôm sát bàn chân. Đế giày cloud siêu nhẹ và êm ái giúp bạn di chuyển cả ngày mà không mệt mỏi. Ngoài ra, Adidas RunFalcon 3.0 lại có mức giá rất hợp lý dành cho tất cả mọi người.', 140, 2),
(8, 'Giày Adidas Runfalcon 3.0 Wide Nam - Đen Full', 1, 1600000, '2023-05-17 00:00:00', 1, 'adidas8.jpg', 'Giày Adidas RunFalcon 3.0 là mẫu giày thể thao mới nhất của adidas. Với thiết kế trẻ trung, khỏe khoắn, ôm sát bàn chân. Đế giày cloud siêu nhẹ và êm ái giúp bạn di chuyển cả ngày mà không mệt mỏi. Ngoài ra, Adidas RunFalcon 3.0 lại có mức giá rất hợp lý dành cho tất cả mọi người.', 33, 2),
(9, 'Giày Adidas Solarglide 5 Nam - Đen Đen', 1, 2490000, '2023-05-17 00:00:00', 1, 'adidas9.jpg', 'Giày adidas Solarglide 5 là mẫu giày thể thao đa dụng thường ngày với khả năng hoàn trả năng lượng tuyệt vời. Thiết kế đẹp đầy năng động giúp cho adidas Solarglide 5 chiếm được cảm tình của bất cứ ai khi nhìn thấy nó. Giày adidas Solarglide 5 có phần upper được làm từ loại sợi hiệu năng cao có chứa tối thiểu 50% chất liệu Parley Ocean Plastic. Phần đế giữa công nghệ Boost trứ danh với nhiều cải tiến mới mang đến cho người sử dụng cảm giác êm ái đàn hồi hơn bao giờ hết. Phần đế ngoài với hệ thống adidas LEP 2.0 cho bạn sự cân bằng ổn định và thoải mái khi di chuyển. Đây chắc chắn là một mẫu giày thể thao hàng ngày tuyệt vời mà adidas muốn mang đến cho bạn trong năm nay.', 29, 2),
(10, 'Giày Adidas Solarglide 5 Nam - Vàng Cam', 1, 2490000, '2023-05-17 00:00:00', 1, 'adidas10.jpg', 'Giày adidas Solarglide 5 là mẫu giày thể thao đa dụng thường ngày với khả năng hoàn trả năng lượng tuyệt vời. Thiết kế đẹp đầy năng động giúp cho adidas Solarglide 5 chiếm được cảm tình của bất cứ ai khi nhìn thấy nó. Giày adidas Solarglide 5 có phần upper được làm từ loại sợi hiệu năng cao có chứa tối thiểu 50% chất liệu Parley Ocean Plastic. Phần đế giữa công nghệ Boost trứ danh với nhiều cải tiến mới mang đến cho người sử dụng cảm giác êm ái đàn hồi hơn bao giờ hết. Phần đế ngoài với hệ thống adidas LEP 2.0 cho bạn sự cân bằng ổn định và thoải mái khi di chuyển. Đây chắc chắn là một mẫu giày thể thao hàng ngày tuyệt vời mà adidas muốn mang đến cho bạn trong năm nay.', 150, 2),
(11, 'Giày Adidas Terrex Tracerocker 2 Gtx Nam - Navy', 1, 2790000, '2023-05-17 00:00:00', 1, 'adidas11.jpg', 'Giày adidas TERREX Tracerocker 2 GTX với khẩu hiệu \'\'LIVE WITHOUT LIMITS\'\' mà nhà sản xuất Adidas muốn gửi tới các tín đồ mê giày thể thao, đặc biệt là những người thích chinh phục những con đường đồi núi, cheo leo, hiểm trở. Bạn đang tìm kiếm cho mình một đôi giày để thỏa mãn chinh phục những chặng đường gồ ghề, khó khăn mà mực giá hợp lý thì Giày adidas TERREX Tracerocker 2 GTX chính là tri kỷ của bạn. Được thiết kế nhỏ gọn, thích hợp cho những chặng đường dài. Đây chắc chắn là một trong những mẫu giày trail, leo núi tốt nhất năm nay của Adidas.', 45, 2),
(12, 'Giày Adidas Terrex Unity Lea Low Nam - Đen', 1, 2190000, '2023-05-17 00:00:00', 1, 'adidas12.jpg', 'Giày adidas Terrex Unity Lea Low một mẫu giày dã ngoại danh cho những người thích chinh phục những con đường đồi núi, cheo leo, hiểm trở. Giày adidas Terrex Unity Lea Low với thiết kế đặc trưng của một đôi giày dã ngoại. Phần Upper chất liệu da và vải cao cấp, đế giày vô cùng bền chắn nhưng vẫn êm ái thoải mái, đế ngoài rãnh sâu bám đường cực tốt.', 110, 2),
(13, 'Giày Adidas Adizero Rc 5 Nam Nữ - Trắng Xanh', 2, 2090000, '2023-05-17 00:00:00', 1, 'adidas13.jpg', 'Giày adidas Adizero RC 5 là mẫu giày chạy bộ siêu nhẹ, có thiết kế cực đẹp và thời trang phù hợp cho cả nam và nữ. Đặc điểm cực kỳ nổi bật là hơn 50% sản phẩm được làm bằng vật liệu tái chế thân thiện và bảo vệ môi trường. Phần upper của giày làm bằng chất liệu rất nhẹ và thoáng, giúp bàn chân thoải mái khi di chuyển. Phần đế giữa với công nghệ Lightstrike và TORSIONRODS đàn hồi tốt giúp đẩy nhanh tốc độ khi chạy. Đây là mẫu giày đi bộ, chạy bộ, rất đáng để bạn lựa chọn.', 10, 2),
(14, 'Giày Adidas Advancourt Base Nam - Trắng Camo', 1, 1390000, '2023-05-17 00:00:00', 1, 'adidas14.jpg', 'Giày adidas Advancourt Base được thiết kế basic cho các tín đồ yêu thời trang. Với các kiểu thiết kế Original này bạn sẽ không bao giờ lo lắng chuyện đôi giày của bạn bị lỗi mốt theo năm tháng. Màu sắc trẻ trung, năng động dễ dàng chiều lòng được các Outfit khác nhau của bạn. Upper chất liệu da cao cấp, bền đẹp. Đế cao su, tạo cảm giác thoải mái khi di chuyển.', 30, 2),
(15, 'Giày Adidas Breaknet Nữ - Trắng Đen', 2, 1490000, '2023-05-17 00:00:00', 1, 'adidas15.jpg', 'Giày Adidas Breaknet  được thiết kế basic cho các tín đồ yêu thời trang. Với các kiểu thiết kế Original này bạn sẽ không bao giờ lo lắng chuyện đôi giày của bạn bị lỗi mốt theo năm tháng. Màu sắc trẻ trung, năng động dễ dàng chiều lòng được các Outfit khác nhau của bạn. Upper chất liệu da cao cấp, bền đẹp. Đế cao su, tạo cảm giác thoải mái khi di chuyển.', 14, 2),
(16, 'Giày Adidas Galaxy 6 Nữ - Đen Tím', 2, 1490000, '2023-05-17 00:00:00', 1, 'adidas16.jpg', 'Giày adidas Galaxy 6  có thiết kế thể thao đẹp mắt, đây là mẫu giày có thể sử dụng trong mọi hoạt động hàng ngày. adidas Galaxy 6 có nhiều cải tiến so với adidas Galaxy 5 giúp đôi giày ngày càng hoàn hảo. Công nghệ đế CloudFoam của Adidas chưa bao giờ làm Fan hâm mộ của họ thất vọng. Với cảm giác trải nghiệm giống như đi trên \'\'Mây\'\' đấy là những gì được người dùng chia sẻ lại. Form dáng thiết kế trẻ trung, khỏe khoắn nên đây sẽ là mẫu giày không thể thiếu cho những hoạt động vui chơi, thể thao. Ngoài ra, adidas Galaxy 6 sử dụng hơn 505 vật liệu tái chế thân thiện với môi trường.', 136, 2),
(17, 'Giày Asics Classic Ct Nam - Trắng Xanh Lá', 1, 1390000, '2023-05-17 00:00:00', 1, 'asics1.jpg', 'Giày Asics Classic CT được người yêu giày trên toàn thế giới nhắc đến như là một mẫu sneaker kinh điển mà bạn không thể bỏ qua. Asics Classic CT có thiết kế cổ điển với những đường nét tinh tế, chất liệu cao cấp và cực kỳ bền bỉ với thời gian.', 15, 6),
(18, 'Giày Asics Glideride 2 Nam - Xanh', 1, 2990000, '2023-05-17 00:00:00', 1, 'asics2.jpg', 'Giày Asics GlideRide 2 là siêu phẩm chạy bộ tốt của Asics, tập trung vào việc tiết kiệm năng lượng tối đa cho người sử dụng. Ngoài ra, Asics GlideRide 2 sử dụng những công nghệ tiên tiến nhất  và có thiết kế rất đẹp có thể sử dụng đi lại hàng ngày. Giày Asics GlideRide 2 có nhiều cải tiến so với phiên bản đầu tiên, trọng lượng nhẹ hơn và độ êm tốt hơn hẳn. Phần upper chất liệu mesh co giãn đa chiều cùng với công nghệ in 3D giúp bàn chân thoải mái khi di chuyển. Đế giữa với công nghệ GUIDESOLE và FLYTE FOAM tạo đàn hồi cực tốt, giúp di chuyển cực kỳ nhẹ nhàng êm ái tiết kiệm năng lượng. Đế ngoài với công nghệ AHARPLUS giúp cải thiện độ bền và giúp giày có tuổi thọ cao hơn. Đây thật sự là một mẫu giày chạy bộ không thể bỏ qua.', 76, 6),
(19, 'Giày Asics Tiger Runner Nam - Trắng Xanh', 1, 1590000, '2023-05-17 00:00:00', 1, 'asics3.jpg', 'Giày Asics GlideRide 2 là siêu phẩm chạy bộ tốt của Asics, tập trung vào việc tiết kiệm năng lượng tối đa cho người sử dụng. Ngoài ra, Asics GlideRide 2 sử dụng những công nghệ tiên tiến nhất  và có thiết kế rất đẹp có thể sử dụng đi lại hàng ngày. Giày Asics GlideRide 2 có nhiều cải tiến so với phiên bản đầu tiên, trọng lượng nhẹ hơn và độ êm tốt hơn hẳn. Phần upper chất liệu mesh co giãn đa chiều cùng với công nghệ in 3D giúp bàn chân thoải mái khi di chuyển. Đế giữa với công nghệ GUIDESOLE và FLYTE FOAM tạo đàn hồi cực tốt, giúp di chuyển cực kỳ nhẹ nhàng êm ái tiết kiệm năng lượng. Đế ngoài với công nghệ AHARPLUS giúp cải thiện độ bền và giúp giày có tuổi thọ cao hơn. Đây thật sự là một mẫu giày chạy bộ không thể bỏ qua.', 56, 6),
(20, 'Giày Asics Trail Scout 2 Nam - Đen', 1, 1590000, '2023-05-17 00:00:00', 1, 'asics4.jpg', 'Giày Asics Trail Scout 2 với thiết kế đẹp, khỏe khoắn năng động cùng với công nghệ đỉnh cao của Asics Nhật Bản mang đến cho người sử dụng một đôi giày trail tuyệt vời. Thiết kế ôm gọn bàn chân khiến người dùng thật dễ chịu khi di chuyển. Phần upper của giày được làm chất liệu mesh thoáng khí. Phần đế ngoài với cao su định hình cực kỳ bền và bám đường giúp bạn dễ dàng vượt qua những địa hình khó khăn nhất. Asics Trail Scout 2 mang đến một cảm giác tự do thoải mái khi vận động.', 24, 6),
(21, 'Giày Lacoste Bayliss 119 Nam - Xanh Navy', 1, 2490000, '2023-05-17 00:00:00', 1, 'lacoste1.jpg', 'Giày Lacoste Bayliss 119 được thiết kế với phong cách cổ điển sang trọng đặc trưng của thương hiệu Lacoste. Giày Lacoste Bayliss 119 được làm từ da cao cấp, mềm và có độ bền cao, không nhăn không thấm nước. Các đường chỉ khâu thẳng hàng rất tinh tế và chắc chắn. Phần đế giày được làm từ cao su lưu hóa được hãng Lacoste nghiên cứu và thử nghiệm mang lại độ bền và độ êm tuyệt đối cho đôi chân của bạn. Lacoste Bayliss 119 là lựa chọn tuyệt vời cho bạn phong cách quý ông lịch lãm mà không kém phần trẻ trung, cá tính.', 31, 3),
(22, 'Giày Lacoste Chaymon Bl 22 2 Nam - Đen', 1, 3290000, '2023-05-17 00:00:00', 1, 'lacoste2.jpg', 'Giày Lacoste Chaymon BL 22 2 được thiết kế với phong cách cổ điển sang trọng đặc trưng của thương hiệu đến từ nước Pháp. Lacoste Chaymon BL 22 2 được nâng cấp vợt trội so với phiên bản trước. Phần đế giày được làm từ cao su lưu hóa được hãng Lacoste nghiên cứu và thử nghiệm mang lại độ bền và độ êm tuyệt đối cho đôi chân của bạn. Lacoste Chaymon BL 22 2 là lựa chọn tuyệt vời cho bạn phong cách quý ông lịch lãm mà không kém phần trẻ trung, cá tính.', 125, 3),
(23, 'Giày Lacoste Jump Serve Canvas Slip On Nam - Đen', 1, 1790000, '2023-05-17 00:00:00', 1, 'lacoste3.jpg', 'Giày Lacoste Jump Serve Canvas Slip On một mẫu giày thời trang thiết kế đơn giản nhưng rất tiện dụng. Kiểu dáng Slip on không buộc dây giúp việc xỏ chân dễ dàng nhanh chóng. Lacoste Jump Serve Canvas Slip On với phần upper được là từ vải canvas bề đẹp, đế giày cao su rất êm giúp di chuyển thoải mái.', 75, 3),
(24, 'Giày Lacoste L005 222 Nam - Trắng Xanh', 1, 3290000, '2023-05-17 00:00:00', 1, 'lacoste4.jpg', 'Giày Lacoste L005 222 là một trong những mẫu giày mới nhất của Lacoste hiện nay. Lacoste L005 222 có thiết kế theo hướng hiện đại rất hấp dẫn. Đây là mẫu giày được rất nhiều tín đồ của Lacoste săn đón. Giày Lacoste L005 222 được làm từ chất liệu da cực kỳ cao cấp của Lacoste, phần đế giày chất liệu cao su bền đẹp với thời gian.', 73, 3),
(25, 'Giày New Balance 373 Nam - Vàng Nâu', 1, 1590000, '2023-05-17 00:00:00', 1, 'balance1.jpg', 'Giày New Balance 373 là mẫu giày thời trang được thiết kế với phong cách cổ điển đặc trưng của thương hiệu trứ danh đến từ Mỹ. Đây là một dòng sản phẩm không bao giờ lỗi mốt và luôn được các tín đồ thời trang săn đón. New Balance 373 có phần upper được làm từ chất liệu mesh kết hợp với da lộn cao cấp, phần đế giày với bộ đệm cực kỳ êm ái giúp bạn có thể di chuyển cả ngày dài mà không gặp bất cứ sự khó chịu nào cả. New Balance 373 có thể sử dụng trong mọi hoạt động hàng ngày.', 140, 5),
(26, 'Giày New Balance M Flash Nam - Đen Đỏ', 1, 1290000, '2023-05-17 00:00:00', 1, 'balance2.jpg', 'Giày New Balance M Flash mẫu giày thể thao được thiết kế rất đẹp, chất liệu cực nhẹ và êm giúp bạn vận động đi lại cả ngày mà không mỏi mệt. New Balance M Flash có phần upper được làm từ chất liệu vải mesh thoáng khí, đế giữa với công nghệ DYNASOFT độc quyền của New Blance cho độ êm và nhẹ tuyệt vời. Đây là mẫu giày không thể thiếu trong tủ giày của bạn.', 83, 5),
(27, 'Giày New Balance M Flash Nam - Đen Full', 1, 1290000, '2023-05-17 00:00:00', 1, 'balance3.jpg', 'Giày New Balance M Flash mẫu giày thể thao được thiết kế rất đẹp, chất liệu cực nhẹ và êm giúp bạn vận động đi lại cả ngày mà không mỏi mệt. New Balance M Flash có phần upper được làm từ chất liệu vải mesh thoáng khí, đế giữa với công nghệ DYNASOFT độc quyền của New Blance cho độ êm và nhẹ tuyệt vời. Đây là mẫu giày không thể thiếu trong tủ giày của bạn.', 53, 5),
(28, 'Giày New Balance M411 Nam - Đen Trắng', 1, 1290000, '2023-05-17 00:00:00', 1, 'balance4.jpg', 'Giày New Balance M411 mẫu giày thể thao được thiết kế đơn giản nhưng rất đẹp, chất liệu cực nhẹ và êm giúp bạn di chuyển cả ngày mà không mỏi mệt. Ngoài ra New Balance M411 có mức giá cực kỳ hợp lý rất đáng để bạn lựa chọn. Giày New Balance M411 có phần upper được làm từ chất liệu vải mesh thoáng khí, đế giữa với công nghệ độc quyền của New Blance cực êm và nhẹ, đây là mẫu giày có thể sử dụng mọi hoạt động hàng ngày.', 20, 5),
(29, 'Giày New Balance M411 Nam - Xanh Navy', 1, 1290000, '2023-05-17 00:00:00', 1, 'balance5.jpg', 'Giày New Balance M411 mẫu giày thể thao được thiết kế đơn giản nhưng rất đẹp, chất liệu cực nhẹ và êm giúp bạn di chuyển cả ngày mà không mỏi mệt. Ngoài ra New Balance M411 có mức giá cực kỳ hợp lý rất đáng để bạn lựa chọn. Giày New Balance M411 có phần upper được làm từ chất liệu vải mesh thoáng khí, đế giữa với công nghệ độc quyền của New Blance cực êm và nhẹ, đây là mẫu giày có thể sử dụng mọi hoạt động hàng ngày.', 113, 5),
(30, 'Giày New Balance Viaza Nam - Xanh Lam', 1, 1290000, '2023-05-17 00:00:00', 1, 'balance6.jpg', 'Giày New Balance Viaza mẫu giày thể thao được thiết kế rất đẹp, với công nghệ đế FRESH FOAM độc quyền của New Balance giúp cho đôi giày trở lên cực kỳ êm và nhẹ nhàng khi di chuyển. New Balance Viaza có phần upper được làm từ chất liệu vải mesh thoáng khí giúp bạn vận động cả ngày dài. Đây cũng là mẫu giày chạy bộ, tập gym, chơi thể thao rất tốt.', 139, 5),
(31, 'Giày Nike Air Winflo 10 Nam - Đen Trắng', 1, 2790000, '2023-05-17 00:00:00', 1, 'nike1.jpg', 'Giày Nike Air Winflo 10 là một trong những mẫu giày thể thao đáng chờ đợi nhất năm 2023 này và thật tuyệt vời hiện tại siêu phẩm Winflo 10 đã có mặt tại Myshoes.vn. Giày Nike Air Winflo 10 có nhiều sự cải tiến vượt trội so với mẫu Winflo 9 trước đó cả về kiểu dáng cũng như những công nghệ hỗ trợ đi kèm. Phần upper với chất liệu mesh cao cấp, mềm mại linh hoạt và rất thoáng khí. Phần đế giữa với bộ đệm full-length Air trứ danh giúp tăng cường độ êm và đàn hồi đồng đều trên toàn bộ bề mặt đế giày. Ngoài ra, phần mũi giày được cải tiến vừa vặn ngón chân khi sử dụng. Với thiết kế đẹp, công nghệ đỉnh cao, Nike Air Winflo 10 chắc chắn là mẫu giày thể thao không thể bỏ qua trong năm nay.', 60, 1),
(32, 'Giày Nike Air Winflo 10 Nam - Trắng Đỏ', 1, 2790000, '2023-05-17 00:00:00', 1, 'nike2.jpg', 'Giày Nike Air Winflo 10 là một trong những mẫu giày thể thao đáng chờ đợi nhất năm 2023 này và thật tuyệt vời hiện tại siêu phẩm Winflo 10 đã có mặt tại Myshoes.vn. Giày Nike Air Winflo 10 có nhiều sự cải tiến vượt trội so với mẫu Winflo 9 trước đó cả về kiểu dáng cũng như những công nghệ hỗ trợ đi kèm. Phần upper với chất liệu mesh cao cấp, mềm mại linh hoạt và rất thoáng khí. Phần đế giữa với bộ đệm full-length Air trứ danh giúp tăng cường độ êm và đàn hồi đồng đều trên toàn bộ bề mặt đế giày. Ngoài ra, phần mũi giày được cải tiến vừa vặn ngón chân khi sử dụng. Với thiết kế đẹp, công nghệ đỉnh cao, Nike Air Winflo 10 chắc chắn là mẫu giày thể thao không thể bỏ qua trong năm nay.', 31, 1),
(33, 'Giày Nike Air Zoom Pegasus 40 Nam - Đen Trắng', 1, 3820000, '2023-05-17 00:00:00', 1, 'nike3.jpg', 'Giày Nike Air Zoom Pegasus 40 là siêu phẩm giày thể thao được mong chờ nhất năm 2023 này. Đây là phiên bản thứ 40 của dòng giày huyền thoại Nike Pegasus và thật tuyệt vời, Nike Air Zoom Pegasus 40 đã có mặt sớm nhất tại Myshoes.vn rồi. Giày Nike Air Zoom Pegasus 40 chắc chắn sẽ làm thoả mãn những người yêu thương hiệu thương hiệu Nike trên toàn thế giới, với những cải tiến vượt trội so với phiên bản trước Pegasus 39, Nike Pegasus 40 xứng đáng được các fan ngày đêm săn đón.', 8, 1),
(34, 'Giày Nike E-Series 1.0 Nam - Nâu', 1, 2990000, '2023-05-17 00:00:00', 1, 'nike4.jpg', 'Giày Nike E-Series 1.0 mẫu giày thời trang được Nike vừa ra mắt. Với thiết kế đơn giản nhưng sang trọng và có tính ứng dụng rất cao trong mọi hoạt động hàng ngày. Đây là mẫu giày hứa hẹn sẽ làm mưa làm gió của Nike trong năm nay. Phần upper được làm từ chất liệu chất liệu đặc biệt có mềm êm thoáng khí, phần đế giữa chất liệ froam êm ái, đế ngoài chất liệu cao su bền chắc. Một mẫu giày hột tụ đủ các yếu tố cao cấp từ chất liệu, công nghệ và thiết kế.', 22, 1),
(35, 'Giày Nike E-Series 1.0 Nam - Trắng', 1, 2990000, '2023-05-17 00:00:00', 1, 'nike5.jpg', 'Giày Nike E-Series 1.0 mẫu giày thời trang được Nike vừa ra mắt. Với thiết kế đơn giản nhưng sang trọng và có tính ứng dụng rất cao trong mọi hoạt động hàng ngày. Đây là mẫu giày hứa hẹn sẽ làm mưa làm gió của Nike trong năm nay. Phần upper được làm từ chất liệu chất liệu đặc biệt có mềm êm thoáng khí, phần đế giữa chất liệ froam êm ái, đế ngoài chất liệu cao su bền chắc. Một mẫu giày hột tụ đủ các yếu tố cao cấp từ chất liệu, công nghệ và thiết kế.', 135, 1),
(36, 'Giày Nike Juniper Trail 2 Nam - Đen Trắng', 1, 2290000, '2023-05-17 00:00:00', 1, 'nike6.jpg', 'Giày Nike Juniper Trail 2 là một mẫu giày trail mới nhất của Nike với những cải tiến vuợt trội cả về kiểu dáng, chất liệu và công nghệ so với phiên bản trước Nike Juniper Trail. Nike Juniper Trail 2 có thiết kế đẹp, phần upper kết hợp giữa vải mesh thoáng khí và da cao cấp, phần đế giữa cực kỳ êm ái và phần đế ngoài bền chắc có độ bám đường cao, giúp di chuyển an toàn thoải mái.', 85, 1),
(37, 'Giày Nike Precision 6 Flyease Nam - Đen', 1, 1990000, '2023-05-17 00:00:00', 1, 'nike7.jpg', 'Giày Nike Precision 6 FlyEase một mẫu giày sneaker Nike với thiết thế cực chất, mang hơi hướng của tương lai, giày được làm bằng chất liệu cao cấp và công nghệ đỉnh cao sẽ là một lựa chọn tuyệt vời của các tín đồ sneaker. Ngoài ra, Nike Precision 6 FlyEase có dây giày được thiết kế độc đáo không cần xỏ khi sử dụng nên rất tiện lợi.', 124, 1),
(38, 'Giày Nike Air Winflo 10 Nữ - Trắng', 2, 2790000, '2023-05-17 00:00:00', 1, 'nike8.jpg', 'Giày Nike Air Winflo 10 là một trong những mẫu giày thể thao đáng chờ đợi nhất năm 2023 này và thật tuyệt vời hiện tại siêu phẩm Winflo 10 đã có mặt tại Myshoes.vn. Giày Nike Air Winflo 10 có nhiều sự cải tiến vượt trội so với mẫu Winflo 9 trước đó cả về kiểu dáng cũng như những công nghệ hỗ trợ đi kèm. Phần upper với chất liệu mesh cao cấp, mềm mại linh hoạt và rất thoáng khí. Phần đế giữa với bộ đệm full-length Air trứ danh giúp tăng cường độ êm và đàn hồi đồng đều trên toàn bộ bề mặt đế giày. Ngoài ra, phần mũi giày được cải tiến vừa vặn ngón chân khi sử dụng. Với thiết kế đẹp, công nghệ đỉnh cao, Nike Air Winflo 10 chắc chắn là mẫu giày thể thao không thể bỏ qua trong năm nay.', 58, 1),
(39, 'Giày Nike Air Zoom Structure 24 Nữ - Xanh Ngọc', 2, 2990000, '2023-05-17 00:00:00', 1, 'nike9.jpg', 'Giày Nike Air Zoom Structure 24 là mẫu giày với thiết kế vô cùng đẹp và thể thao cùng với công nghệ tiên tiến nhất của Nike đã tạo lên một trong những siêu phẩm tốt nhất trong năm nay. Ở phiên bản này được các chuyên gia đánh giá cao phần bởi sự ổn định nhưng vẫn có cảm giác êm chân trong suốt quá trình sử dụng. Bạn yêu thích thể thao và đang tìm kiếm cho mình một đôi giày để tập luyện thì Nike Air Zoom Structure 24 sẽ là một lựa chọn hoàn toàn chính xác. Bởi một đôi giày tốt sẽ là một người đồng hành quan trọng trong cả 1 quá trình.', 10, 1),
(40, 'Giày Nike Renew Run 4 Nữ - Đen Trắng', 2, 2390000, '2023-05-17 00:00:00', 1, 'nike10.jpg', 'Giày Nike Renew Run 4 một mẫu giày thể thao năng động mới được Nike cho ra mắt năm nay. Đế giày renew với nhiều cải tiến cho độ êm và đàn hồi cực cao. Ngoài ra với thiết kế đẹp khiến nó có thể sử dụng trong mọi hoạt động hàng ngày. Phần upper làm bằng vải mesh thoáng khí, chất liệu lưỡi gà mềm êm bảo vệ bàn chân rất tốt.', 83, 1),
(41, 'Giày Nike Zoom Fly 5 Nữ - Tím', 2, 2490000, '2023-05-17 00:00:00', 1, 'nike11.jpg', 'Giày Nike Zoom Fly 5 là một trong những mẫu giày thể thao tốt nhất năm 2023. Với thiết kế ưu việt và công nghệ ZoomX mới nhất Nike Zoom Fly 5 là đôi giày tuyệt với dành cho việc chạy bộ, tập thể thao và đi lại hàng ngày. Phần Upper được thiết kế với chất liệu flyknit đặc biệt siêu nhẹ và thoáng khí. Đế giữa với bộ đệm ZoomX trứ danh giúp nhẹ hơn và đàn hồi hơn phiên bản cũ khá nhiều. Cùng với sợi Carbon giúp cho đế giày cực kỳ êm và siêu bền. Bạn sẽ có cảm giác như bay khi di chuyển trên đôi giày này.', 94, 1),
(42, 'Giày Puma Smash Buck Nam - Nâu', 1, 3600000, '2023-05-17 00:00:00', 1, 'puma1.jpg', ' Giày Puma Smash Buck mẫu giày có thiết kế cổ điển mà tinh tế. Chất liệu da cao cấp và đế cao su bền bỉ chắc chắn sẽ làm hài lòng những khách hàng khó tính nhất. Bạn sẽ luôn yên tâm rằng nó không bao giờ bị lỗi mốt.', 52, 4),
(43, 'Giày Puma Smash Cat Perf Fs Sl Nữ - Trắng Gold', 2, 1090000, '2023-05-17 00:00:00', 1, 'puma2.jpg', ' Giày Puma Smash Cat Perf FS SL mẫu giày có thiết kế cổ điển mà tinh tế. Chất liệu da cao cấp và đế cao su bền bỉ chắc chắn sẽ làm hài lòng những khách hàng khó tính nhất. Bạn sẽ luôn yên tâm rằng nó không bao giờ bị lỗi mốt.', 142, 4),
(44, 'Giày Puma Smash Cat Perf Fs Sl Nữ - Trắng Xanh', 2, 1090000, '2023-05-17 00:00:00', 1, 'puma3.jpg', ' Giày Puma Smash Cat Perf FS SL mẫu giày có thiết kế cổ điển mà tinh tế. Chất liệu da cao cấp và đế cao su bền bỉ chắc chắn sẽ làm hài lòng những khách hàng khó tính nhất. Bạn sẽ luôn yên tâm rằng nó không bao giờ bị lỗi mốt.', 97, 4),
(45, 'Giày Puma Taper Nam - Trắng', 1, 1290000, '2023-05-17 00:00:00', 1, 'puma4.jpg', 'Giày Puma Taper có thiết kế rất đẹp cùng với những công nghệ cao cấp của Puma. Với trọng lượng rất nhẹ và bộ đế cực kỳ êm ái Puma Taper mang đến cho người đi cảm giác rất linh hoạt và năng động.', 111, 4),
(46, 'Giày Puma Carina Metallic Nữ Sliver', 2, 490000, '2023-05-17 00:00:00', 1, 'puma5.jpg', 'Puma Carina Metallic là một trong những mẫu giày Classic của Puma và sẽ không bao giờ bị lỗi mốt, nó liên tục được tái sản xuất từ năm này sang năm khác. Là một trong những kiểu dáng không thể thiếu trong tủ giày của bạn bởi nó có thể kết hợp được rất nhiều kiểu quần áo, váy khác nhau. Vì vậy, ngại gì mà không tậu ngay một đôi cho bản thân mình', 31, 4),
(47, 'Giày Puma Smash Cat L Nữ - Trắng Đỏ', 2, 1690000, '2023-05-17 00:00:00', 1, 'puma6.jpg', 'Giày Puma Smash Cat L mẫu giày có thiết kế đơn giản mà đẹp mắt. Logo hình con báo đặc trưng của Puma được thêu tỉ mỉ trên thân giày tạo nét nổi bật khó cưỡng lại. Chất liệu da cao cấp và đế cao su bền bỉ chắc chắn sẽ làm hài lòng những khách hàng khó tính nhất. Bạn sẽ luôn yên tâm rằng nó không bao giờ bị lỗi mốt.', 44, 4),
(48, 'Giày Puma Smash Cat L Nữ - Trắng Xanh', 2, 1690000, '2023-05-17 00:00:00', 1, 'puma7.jpg', 'Giày Puma Smash Cat L mẫu giày có thiết kế đơn giản mà đẹp mắt. Logo hình con báo đặc trưng của Puma được thêu tỉ mỉ trên thân giày tạo nét nổi bật khó cưỡng lại. Chất liệu da cao cấp và đế cao su bền bỉ chắc chắn sẽ làm hài lòng những khách hàng khó tính nhất. Bạn sẽ luôn yên tâm rằng nó không bao giờ bị lỗi mốt.', 17, 4),
(49, 'Giày Puma Smash Cat Perf Fs Sl Nữ - Trắng Gold', 2, 1090000, '2023-05-17 00:00:00', 1, 'puma8.jpg', 'Giày Puma Smash Cat L mẫu giày có thiết kế đơn giản mà đẹp mắt. Logo hình con báo đặc trưng của Puma được thêu tỉ mỉ trên thân giày tạo nét nổi bật khó cưỡng lại. Chất liệu da cao cấp và đế cao su bền bỉ chắc chắn sẽ làm hài lòng những khách hàng khó tính nhất. Bạn sẽ luôn yên tâm rằng nó không bao giờ bị lỗi mốt.', 77, 4),
(50, 'Giày Puma Smash Cat Perf Fs Sl Nữ - Trắng Navy', 2, 1090000, '2023-05-17 00:00:00', 1, 'puma9.jpg', 'Giày Puma Smash Cat L mẫu giày có thiết kế đơn giản mà đẹp mắt. Logo hình con báo đặc trưng của Puma được thêu tỉ mỉ trên thân giày tạo nét nổi bật khó cưỡng lại. Chất liệu da cao cấp và đế cao su bền bỉ chắc chắn sẽ làm hài lòng những khách hàng khó tính nhất. Bạn sẽ luôn yên tâm rằng nó không bao giờ bị lỗi mốt.', 103, 4),
(51, 'Giày Puma Smash Cat Perf Fs Sl Nữ - Trắng Xanh', 2, 1090000, '2023-05-17 00:00:00', 1, 'puma10.jpg', 'Giày Puma Smash Cat L mẫu giày có thiết kế đơn giản mà đẹp mắt. Logo hình con báo đặc trưng của Puma được thêu tỉ mỉ trên thân giày tạo nét nổi bật khó cưỡng lại. Chất liệu da cao cấp và đế cao su bền bỉ chắc chắn sẽ làm hài lòng những khách hàng khó tính nhất. Bạn sẽ luôn yên tâm rằng nó không bao giờ bị lỗi mốt.', 104, 4),
(52, 'Dép Lacoste Croco 2.0 Synthetic Slides Nam - Đen', 3, 990000, '2023-05-17 00:00:00', 1, 'dep1.jpg', 'Dép Lacoste Croco 2.0 Synthetic Slides có thiết kế đơn giản nhưng vô cùng thời trang tinh tế, chất liệu cao su cao cấp, đế đúc cực kỳ bền chắc. Các rãnh được thiết kế chống trơn trượt giúp an toàn cho người sử dụng.', 97, 3),
(53, 'Dép Lacoste Croco 2.0 Synthetic Slides Nam - Trắng', 3, 990000, '2023-05-17 00:00:00', 1, 'dep2.jpg', 'Dép Lacoste Croco 2.0 Synthetic Slides có thiết kế đơn giản nhưng vô cùng thời trang tinh tế, chất liệu cao su cao cấp, đế đúc cực kỳ bền chắc. Các rãnh được thiết kế chống trơn trượt giúp an toàn cho người sử dụng.', 8, 3),
(54, 'Dép Lacoste Croco 2.0 Synthetic Slides Nam - Xanh ', 3, 990000, '2023-05-17 00:00:00', 1, 'dep3.jpg', 'Dép Lacoste Croco 2.0 Synthetic Slides có thiết kế đơn giản nhưng vô cùng thời trang tinh tế, chất liệu cao su cao cấp, đế đúc cực kỳ bền chắc. Các rãnh được thiết kế chống trơn trượt giúp an toàn cho người sử dụng.', 32, 3),
(55, 'Dép Lacoste Croco Dualiste Synthetic Logo Strap Na', 3, 1090000, '2023-05-17 00:00:00', 1, 'dep4.jpg', 'Dép Lacoste Croco Dualiste Synthetic Logo Strap có thiết kế đẹp thời trang tinh tế, chất liệu cao cấp, phong cách đậm chất đẳng cấp của thương hiệu Pháp. Lacoste Croco Dualiste Synthetic Logo Strap có phần quai là bằng chất liệu PU chống nước, logo dập chìm cá sấu to bản và cực kỳ tỉ mỉ ở phía trước. Đế đúc bền chắc với những chi tiết xẻ rãnh chống trơn trượt giúp an toàn khi di chuyển.', 131, 3),
(56, 'Dép Lacoste Croco Synthetic Logo Strap Slides Nam ', 1, 990000, '2023-05-17 00:00:00', 1, 'dep5.jpg', 'Dép Lacoste Croco Synthetic Logo Strap Slides có thiết kế đẹp thời trang tinh tế, chất liệu cao cấp, phong cách đậm chất đẳng cấp của thương hiệu Pháp. Lacoste Croco Synthetic Logo Strap Slides có phần quai là bằng chất liệu PU chống nước, được thêu logo cá sấu to bản và cực kỳ tỉ mỉ ở phía trước. Đế đúc bền chắc với những chi tiết xẻ rãnh chống trơn trượt giúp an toàn khi di chuyển.', 13, 3),
(57, 'Dép Lacoste Croco Textile Logo Slides Nam - Trắng', 3, 990000, '2023-05-17 00:00:00', 1, 'dep6.jpg', 'Dép Lacoste Croco Textile Logo Slides có thiết kế đẹp thời trang tinh tế, chất liệu cao cấp, phong cách đậm chất đẳng cấp của thương hiệu Pháp. Lacoste Croco Textile Logo Slides có phần quai là bằng chất liệu PU chống nước. Đế đúc bền chắc với những chi tiết xẻ rãnh chống trơn trượt giúp an toàn khi di chuyển.', 7, 3),
(58, 'Dép Lacoste Croco Textile Logo Slides Nam - Xanh N', 3, 990000, '2023-05-17 00:00:00', 1, 'dep7.jpg', 'Dép Lacoste Croco Textile Logo Slides có thiết kế đẹp thời trang tinh tế, chất liệu cao cấp, phong cách đậm chất đẳng cấp của thương hiệu Pháp. Lacoste Croco Textile Logo Slides có phần quai là bằng chất liệu PU chống nước. Đế đúc bền chắc với những chi tiết xẻ rãnh chống trơn trượt giúp an toàn khi di chuyển.', 94, 3),
(59, 'Dép Lacoste Croco Water-Repellent Synthetic Slides', 3, 990000, '2023-05-17 00:00:00', 1, 'dep8.jpg', 'Dép Lacoste Croco Water-repellent Synthetic Slides có thiết kế đơn giản nhưng vô cùng thời trang tinh tế, chất liệu cao su cao cấp, đế đúc cực kỳ bền chắc. Các rãnh được thiết kế chống trơn trượt giúp an toàn cho người sử dụng.', 65, 3),
(60, 'Giày Asics Classic Ct Nam - Trắng', 1, 1490000, '2023-05-17 00:00:00', 1, 'asics5.jpg', 'Giày Asics Classic CT được người yêu giày trên toàn thế giới nhắc đến như là một mẫu sneaker kinh điển mà bạn không thể bỏ qua. Asics Classic CT có thiết kế cổ điển với những đường nét tinh tế, chất liệu cao cấp và cực kỳ bền bỉ với thời gian.', 71, 6),
(61, 'Giày Asics Sky Court Nam - Trắng Đỏ', 1, 1790000, '2023-05-17 00:00:00', 1, 'asics6.jpg', 'Giày Asics Sky Court được người yêu giày trên toàn thế giới nhắc đến như là một mẫu sneaker kinh điển mà bạn không thể bỏ qua. Asics Sky Court có thể sử dụng trong nhiều hoạt động hàng ngày và kết hợp được với rất nhiều loại quần áo khác nhau. Upper làm bằng da cao cấp và có đục nhiều lỗ thoáng khí, phần đế giày chất liệu cao su cực kỳ bền bỉ với thời gian.', 58, 6),
(62, 'Giày Asics Sky Court Nam - Đen Trắng', 1, 1790000, '2023-05-17 00:00:00', 1, 'asics7.jpg', 'Giày Asics Sky Court được người yêu giày trên toàn thế giới nhắc đến như là một mẫu sneaker kinh điển mà bạn không thể bỏ qua. Asics Sky Court có thể sử dụng trong nhiều hoạt động hàng ngày và kết hợp được với rất nhiều loại quần áo khác nhau. Upper làm bằng da cao cấp và có đục nhiều lỗ thoáng khí, phần đế giày chất liệu cao su cực kỳ bền bỉ với thời gian.', 19, 6),
(63, 'Giày Asics Sky Court Nam - Đen Xanh', 1, 1790000, '2023-05-17 00:00:00', 1, 'asics8.jpg', 'Giày Asics Sky Court được người yêu giày trên toàn thế giới nhắc đến như là một mẫu sneaker kinh điển mà bạn không thể bỏ qua. Asics Sky Court có thể sử dụng trong nhiều hoạt động hàng ngày và kết hợp được với rất nhiều loại quần áo khác nhau. Upper làm bằng da cao cấp và có đục nhiều lỗ thoáng khí, phần đế giày chất liệu cao su cực kỳ bền bỉ với thời gian.', 149, 6),
(64, 'Giày Asics Classic Ct Nam - Đen Nâu', 1, 1490000, '2023-05-17 00:00:00', 1, 'asics9.jpg', 'Giày Asics Classic CT được người yêu giày trên toàn thế giới nhắc đến như là một mẫu sneaker kinh điển mà bạn không thể bỏ qua. Asics Classic CT có thiết kế cổ điển với những đường nét tinh tế, chất liệu cao cấp và cực kỳ bền bỉ với thời gian.', 13, 6),
(65, 'Giày Asics Lyteracer 2 Nam - Trắng Vàng', 1, 1890000, '2023-05-17 00:00:00', 1, 'asics10.jpg', 'Giày Asics LyteRacer 2 là mẫu giày thể thao được thiết kế gọn gàng phù hợp cho những ai yêu thích chạy bộ, đi bộ hàng ngày, mang lại hiệu suất rất cao cho người sử dụng. Thiết kế ôm gọn bàn chân khiến người dùng thật dễ chịu khi di chuyển. Phần upper của giày được làm  kết hợp giữa chất liệu mesh thoáng khí và da lộn, phần đế giữa sử dụng công nghệ FlyteFoam® độc quyền của Asics giúp cho đôi giày tăng thêm 20% độ bật nảy và thật êm ái.', 79, 6),
(66, 'Giày Lacoste Court-Lisse 222 Leather Nam - Trắng X', 1, 2490000, '2023-05-17 00:00:00', 1, 'lacoste5.jpg', 'Giày Lacoste Court-Lisse 222 Leather có thiết kế thời trang cực kỳ tinh tế đúng với đẳng cấp của Lacoste. Phần upper được là từ da cao cấp bền đẹp. Đây là một trong những mẫu giày không thể bỏ qua với tín đồ yêu thương hiệu Pháp.', 88, 3),
(67, 'Giày Lacoste L001 222 Nam - Trắng Navy', 1, 2890000, '2023-05-17 00:00:00', 1, 'lacoste6.jpg', 'Giày Lacoste L001 222 là một trong những mẫu giày HOT nhất của Lacoste hiện nay. Lacoste L001 222 có thiết kế cổ điển truyền thống của Lacoste nhưng lại có hơi hướng hiện đại rất hấp dẫn. Giày Lacoste L001 222 được làm từ chất liệu da cực kỳ cao cấp của Lacoste, phần đế giày chất liệu cao su bền đẹp với thời gian.', 141, 3),
(68, 'Giày Lacoste L001 222 Nam - Xám Xanh', 1, 2890000, '2023-05-17 00:00:00', 1, 'lacoste7.jpg', 'Giày Lacoste L001 222 là một trong những mẫu giày HOT nhất của Lacoste hiện nay. Lacoste L001 222 có thiết kế cổ điển truyền thống của Lacoste nhưng lại có hơi hướng hiện đại rất hấp dẫn. Giày Lacoste L001 222 được làm từ chất liệu da cực kỳ cao cấp của Lacoste, phần đế giày chất liệu cao su bền đẹp với thời gian.', 117, 3),
(69, 'Giày Lacoste Chaymon 120 Nam - Xanh Navy', 1, 2890000, '2023-05-17 00:00:00', 1, 'lacoste8.jpg', 'Giày Lacoste Chaymon 120 được thiết kế với phong cách cổ điển sang trọng đặc trưng của thương hiệu Lacoste. Các đường chỉ khâu thẳng hàng rất tinh tế và chắc chắn. Phần đế giày được làm từ cao su lưu hóa được hãng Lacoste nghiên cứu và thử nghiệm mang lại độ bền và độ êm tuyệt đối cho đôi chân của bạn. Giày Lacoste Chaymon 120 là lựa chọn tuyệt vời cho bạn phong cách quý ông lịch lãm mà không kém phần trẻ trung, cá tính.', 52, 3),
(70, 'Giày Lacoste Misano Strap 120 Nam - Xanh Navy', 1, 2790000, '2023-05-17 00:00:00', 1, 'lacoste9.jpg', 'Giày Lacoste Misano Strap 120 được thiết kế với phong cách cổ điển sang trọng đặc trưng của thương hiệu Lacoste. Thay vì dây buộc thì Lacoste Misano Strap 120 sử dụng quai dán rất đẹp và độc đáo. Phần Upper của giày được làm từ da cao cấp, đường chỉ được khâu cực kỳ tỉ mỉ chắc chắn. Thiết kế đế mỏng khiến cho đôi giày càng trở lên sang trọng. Đây là lựa chọn tuyệt vời cho bạn với phong cách quý ông lịch lãm mà không kém phần trẻ trung, cá tính.', 134, 3),
(71, 'Giày Lacoste Court-Drive Trainers Nam - Trắng', 1, 2390000, '2023-05-17 00:00:00', 1, 'lacoste10.jpg', 'Giày Lacoste Court-Drive Trainers là mẫu giày thể thao thời trang đa dụng của Lacoste. Đây là mẫu giày tuyệt vời dành cho các hoạt động thể thao hàng ngày như: Tập Gym, chạy bộ, đi bộ, đi chơi, đi làm... Với công nghệ tiên tiến nhất của Lacoste hứa hẹn đây là mẫu giày không thể thiếu với các tín đồ của thương hiệu này.', 135, 3);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Username`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`BraID`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CateID`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`ComID`),
  ADD KEY `fk_comcus` (`CusID`),
  ADD KEY `fk_compro` (`ProID`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CusID`);

--
-- Chỉ mục cho bảng `oders`
--
ALTER TABLE `oders`
  ADD PRIMARY KEY (`OrdID`),
  ADD KEY `fk_pay` (`PayID`),
  ADD KEY `fk_cus` (`CusID`);

--
-- Chỉ mục cho bảng `odersdetail`
--
ALTER TABLE `odersdetail`
  ADD KEY `fk_ord` (`OrdID`),
  ADD KEY `fk_pro` (`ProID`);

--
-- Chỉ mục cho bảng `paymentmethod`
--
ALTER TABLE `paymentmethod`
  ADD PRIMARY KEY (`PayID`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProID`),
  ADD KEY `fk_cate` (`CateID`),
  ADD KEY `fk_brand` (`BraID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `BraID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `CateID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `ComID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `CusID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oders`
--
ALTER TABLE `oders`
  MODIFY `OrdID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `paymentmethod`
--
ALTER TABLE `paymentmethod`
  MODIFY `PayID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `ProID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_comcus` FOREIGN KEY (`CusID`) REFERENCES `customer` (`CusID`),
  ADD CONSTRAINT `fk_compro` FOREIGN KEY (`ProID`) REFERENCES `product` (`ProID`);

--
-- Các ràng buộc cho bảng `oders`
--
ALTER TABLE `oders`
  ADD CONSTRAINT `fk_cus` FOREIGN KEY (`CusID`) REFERENCES `customer` (`CusID`),
  ADD CONSTRAINT `fk_pay` FOREIGN KEY (`PayID`) REFERENCES `paymentmethod` (`PayID`);

--
-- Các ràng buộc cho bảng `odersdetail`
--
ALTER TABLE `odersdetail`
  ADD CONSTRAINT `fk_ord` FOREIGN KEY (`OrdID`) REFERENCES `oders` (`OrdID`),
  ADD CONSTRAINT `fk_pro` FOREIGN KEY (`ProID`) REFERENCES `product` (`ProID`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_brand` FOREIGN KEY (`BraID`) REFERENCES `brand` (`BraID`),
  ADD CONSTRAINT `fk_cate` FOREIGN KEY (`CateID`) REFERENCES `categories` (`CateID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
