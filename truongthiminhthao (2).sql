-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 22, 2024 lúc 08:20 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `truongthiminhthao`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `footer` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `about`
--

INSERT INTO `about` (`id`, `content`, `footer`, `created_at`, `updated_at`) VALUES
(1, '<div class=\"s-content__entry-header\" style=\"box-sizing: inherit; margin-top: var(--vspace-3); margin-right: 0px; margin-bottom: var(--vspace-3); margin-left: 0px; padding: 0px; color: rgb(40, 40, 40); font-family: Inter, sans-serif; font-size: 18px;\"><h1 class=\"s-content__title\" style=\"box-sizing: inherit; font-size: var(--text-display-1); margin-top: 0px; margin-bottom: var(--vspace-0_75); padding: 0px; font-variant-ligatures: common-ligatures; text-rendering: optimizelegibility; font-family: var(--font-2); line-height: calc(var(--vspace-1_75) + var(--vspace-0_125)); letter-spacing: -0.01em; text-align: center;\">Learn More About Story.</h1></div><div class=\"s-content__primary\" style=\"box-sizing: inherit; margin: 0px; padding: 0px; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: row; -webkit-box-align: start; align-items: flex-start; -webkit-box-pack: center; justify-content: center; color: rgb(40, 40, 40); font-family: Inter, sans-serif; font-size: 18px;\"><div class=\"s-content__page-content\" style=\"box-sizing: inherit; margin: 0px; padding: 0px; max-width: 900px;\"><p class=\"lead\" style=\"box-sizing: inherit; margin-bottom: var(--vspace-1); padding: 0px; font-size: var(--text-md); text-rendering: optimizelegibility; line-height: calc(1.125 * var(--space)); color: var(--color-text-dark);\">Duis ex ad cupidatat tempor Excepteur cillum cupidatat fugiat nostrud cupidatat dolor sunt sint sit nisi est eu exercitation incididunt adipisicing veniam velit id fugiat enim mollit amet anim veniam dolor dolor irure velit commodo cillum sit nulla ullamco magna amet magna cupidatat qui labore cillum sit in tempor veniam consequat non laborum adipisicing aliqua ea nisi sint ut quis proident ullamco ut dolore culpa occaecat ut laboris in sit minim cupidatat ut dolor voluptate enim veniam consequat occaecat fugiat in adipisicing in amet Ut nulla nisi non ut enim aliqua laborum mollit quis nostrud sed sed.</p><p style=\"box-sizing: inherit; margin-bottom: var(--vspace-1); padding: 0px; font-size: inherit; text-rendering: optimizelegibility;\">Lorem ipsum Nisi cillum reprehenderit minim sunt dolore dolor eiusmod eu aliquip ad ut sint dolore laborum voluptate ullamco dolore aliquip enim. Excepteur cillum cupidatat fugiat nostrud cupidatat dolor sunt sint sit nisi est eu exercitation incididunt adipisicing</p><p style=\"box-sizing: inherit; margin-bottom: var(--vspace-1); padding: 0px; font-size: inherit; text-rendering: optimizelegibility;\">Lorem ipsum Cillum sit sunt dolore non aute enim pariatur deserunt magna reprehenderit veniam officia ullamco eiusmod laborum commodo veniam elit proident enim sit cillum ex aliquip dolore labore sint ut deserunt officia veniam consectetur in in quis eu consectetur non sint Duis mollit Ut magna irure.</p><br style=\"box-sizing: inherit;\"><div class=\"row block-large-1-2 block-tab-full s-content__blocks\" style=\"box-sizing: inherit; margin-top: 0px; margin-right: calc(var(--gutter-lg) * -1); margin-bottom: 0px; margin-left: calc(var(--gutter-lg) * -1); padding: 0px; width: auto; max-width: var(--row-max-width); display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: wrap;\"><div class=\"column\" style=\"box-sizing: inherit; margin: 0px; padding: 0 var(--gutter-lg); -webkit-box-flex: 0; flex: 0 0 50%; max-width: 50%;\"><h4 style=\"box-sizing: inherit; margin-top: 0px; margin-right: 0px; margin-bottom: var(--vspace-0_5); margin-left: 0px; padding: 0px; font-variant-ligatures: common-ligatures; text-rendering: optimizelegibility; font-family: var(--font-2); font-size: var(--text-lg); line-height: var(--vspace-1);\">Who.</h4><p style=\"box-sizing: inherit; margin-bottom: var(--vspace-1); padding: 0px; font-size: inherit; text-rendering: optimizelegibility;\">Lorem ipsum Nisi amet fugiat eiusmod et aliqua ad qui ut nisi Ut aute anim mollit fugiat qui sit ex occaecat et eu mollit nisi pariatur fugiat deserunt dolor veniam reprehenderit aliquip magna nisi consequat aliqua veniam in aute ullamco Duis laborum ad non pariatur sit.</p></div><div class=\"column\" style=\"box-sizing: inherit; margin: 0px; padding: 0 var(--gutter-lg); -webkit-box-flex: 0; flex: 0 0 50%; max-width: 50%;\"><h4 style=\"box-sizing: inherit; margin-top: 0px; margin-right: 0px; margin-bottom: var(--vspace-0_5); margin-left: 0px; padding: 0px; font-variant-ligatures: common-ligatures; text-rendering: optimizelegibility; font-family: var(--font-2); font-size: var(--text-lg); line-height: var(--vspace-1);\">When.</h4><p style=\"box-sizing: inherit; margin-bottom: var(--vspace-1); padding: 0px; font-size: inherit; text-rendering: optimizelegibility;\">Lorem ipsum Nisi amet fugiat eiusmod et aliqua ad qui ut nisi Ut aute anim mollit fugiat qui sit ex occaecat et eu mollit nisi pariatur fugiat deserunt dolor veniam reprehenderit aliquip magna nisi consequat aliqua veniam in aute ullamco Duis laborum ad non pariatur sit.</p></div><div class=\"column\" style=\"box-sizing: inherit; margin: 0px; padding: 0 var(--gutter-lg); -webkit-box-flex: 0; flex: 0 0 50%; max-width: 50%;\"><h4 style=\"box-sizing: inherit; margin-top: 0px; margin-right: 0px; margin-bottom: var(--vspace-0_5); margin-left: 0px; padding: 0px; font-variant-ligatures: common-ligatures; text-rendering: optimizelegibility; font-family: var(--font-2); font-size: var(--text-lg); line-height: var(--vspace-1);\">What.</h4><p style=\"box-sizing: inherit; margin-bottom: var(--vspace-1); padding: 0px; font-size: inherit; text-rendering: optimizelegibility;\">Lorem ipsum Nisi amet fugiat eiusmod et aliqua ad qui ut nisi Ut aute anim mollit fugiat qui sit ex occaecat et eu mollit nisi pariatur fugiat deserunt dolor veniam reprehenderit aliquip magna nisi consequat aliqua veniam in aute ullamco Duis laborum ad non pariatur sit.</p></div><div class=\"column\" style=\"box-sizing: inherit; margin: 0px; padding: 0 var(--gutter-lg); -webkit-box-flex: 0; flex: 0 0 50%; max-width: 50%;\"><h4 style=\"box-sizing: inherit; margin-top: 0px; margin-right: 0px; margin-bottom: var(--vspace-0_5); margin-left: 0px; padding: 0px; font-variant-ligatures: common-ligatures; text-rendering: optimizelegibility; font-family: var(--font-2); font-size: var(--text-lg); line-height: var(--vspace-1);\">How.</h4><p style=\"box-sizing: inherit; margin-bottom: var(--vspace-1); padding: 0px; font-size: inherit; text-rendering: optimizelegibility;\">Lorem ipsum Nisi amet fugiat eiusmod et aliqua ad qui ut nisi Ut aute anim mollit fugiat qui sit ex occaecat et eu mollit nisi pariatur fugiat deserunt dolor veniam reprehenderit aliquip magna nisi consequat aliqua veniam in aute ullamco Duis laborum ad non pariatur sit.</p></div></div></div></div>', '<span style=\"color: rgb(79, 79, 79); font-family: \" swiss=\"\" condensed-regular\";=\"\" font-size:=\"\" 18px;\"=\"\">Trường Cao đẳng Kinh tế Thành phố Hồ Chí Minh đã trải qua nhiều giai đoạn chuyển đổi lịch sử và có khởi nguyên từ 4 trường Trung học chuyên nghiệp. Trong suốt chặng đường hơn 30 năm hình thành và phát triển, Trường không ngừng nâng cao chất lượng về đào tạo, hợp tác phát triển và các dịch vụ khác.</span>', '2024-04-28 10:05:52', '2024-05-06 09:09:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogcategories`
--

CREATE TABLE `blogcategories` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `blogcategories`
--

INSERT INTO `blogcategories` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(12, 'Chuyến đi ', 1, '2024-06-22 12:14:42', '2024-06-22 12:14:42'),
(13, 'Trải Nghiệm', 1, '2024-06-22 12:14:56', '2024-06-22 12:14:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` int(1) NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `image`, `status`, `id_category`, `id_user`, `created_at`, `updated_at`) VALUES
(29, 'Trải nghiệm chuyến đi tại Newzealand có gì hot ?', '                Khi tôi đặt chân đến New Zealand, một thế giới hoàn toàn mới mở ra trước mắt. Đất nước này không chỉ nổi tiếng với cảnh đẹp thiên nhiên hùng vĩ mà còn là nơi giao thoa của nhiều nền văn hóa đa dạng. Từ những ngọn núi Alps đầy tuyết trắng ở Nam đến những thảo nguyên xanh mượt ở Bắc, New Zealand mang đến cho tôi một trải nghiệm khám phá không ngừng. Điều đầu tiên khiến tôi ấn tượng là sự thanh bình và trong lành của không gian xung quanh. Những người dân tại đây sống chậm rãi, không vội vã nhưng luôn rất năng động và thân thiện. Tôi đã có cơ hội gặp gỡ với những người địa phương, họ rất hào hứng khi chia sẻ về đất nước của họ và luôn sẵn sàng giúp đỡ du khách. Không chỉ có thiên nhiên và con người, New Zealand còn là một thiên đường cho những ai yêu thích các hoạt động ngoài trời. ', 'media_6675bf5ad5d4c.jpg', 0, 12, 1, '2024-06-22 12:58:50', '2024-06-22 12:58:50'),
(32, 'DU LỊCH THUỴ SĨ', 'Thụy Sĩ đẹp quanh năm, vì vậy bạn có thể đi du lịch Thụy Sĩ vào bất kỳ tháng nào. Các mùa ở Thụy Sĩ sẽ có là mùa đông (giữa tháng 12 đến giữa tháng 3), mùa xuân (giữa tháng 3 đến giữa tháng 6), mùa hè (giữa tháng 6 đến giữa tháng 9) và mùa thu (giữa tháng 9 đến giữa tháng 12). Thời tiết thay đổi rất nhiều theo khu vực và độ cao đó nha.    ', 'media_667669588c6b2.jpg', 0, 13, 1, '2024-06-22 01:04:08', '2024-06-22 01:04:08'),
(33, 'Du Lịch Phần Lan ', '          Phần Lan tự tạo nên danh tiếng đặc biệt cho riêng mình là đất nước của băng và tuyết. Tuy nhiên mùa hè ở đây vẫn khá ấm áp với nhiều nắng và nhiệt độ lên cao. Mùa xuân và mùa thu đôi khi thời tiết khá ẩm ướt.\r\n\r\nVào giữa những tháng mùa hè (tháng 6 và tháng 7) thì hầu như mặt trời không bao giờ lặn, và vào thời gian này có thể nói là tuyệt vời cho các môn thể thao cùng những tiệc tùng và ăn chơi. Đây là thời điểm lý tưởng nhất khi du lịch Phần Lan.\r\nBộ mặt của Phần Lan hiện rõ nhất là về những tháng ngày mùa đông, bắt đầu từ tháng 11 đến tháng 3, khi mà nhiệt độ có thể xuống tới -20 độ C hoặc còn thấp hơn nữa.Thời gian ngày rất ngắn và đôi khi mặt trời chỉ chiếm vùng rất nhỏ ở phía chân trời. Dù thời tiết rất lạnh nhưng đây là mùa cao điểm du lịch ở Lapland – Vùng đất được mệnh danh là quê hương của ông già Noel với nhiều hoạt động rất thú vị đón chào mùa giáng sinh.      ', 'media_667669e5b2df2.jpg', 0, 12, 1, '2024-06-22 01:06:29', '2024-06-22 01:06:29'),
(34, 'Du lịch Anh Quốc', '                Vương quốc Anh và London nói riêng, là một trong những điểm đến du lịch lớn nhất thế giới. Du khách đổ về từ khắp nơi trên thế giới để chiêm ngưỡng các điểm tham quan quanh năm và thậm chí thị trấn đại học như Cambridge cũng liên tục đầy khách du lịch Anh. Các điểm thu hút chính đối với hầu hết những người đến thăm Vương quốc Anh là những tòa nhà mang tính biểu tượng, kiến ​​trúc, lịch sử và thậm chí cả thức ăn.', 'media_66766a859042e.jpg', 0, 12, 1, '2024-06-22 01:09:09', '2024-06-22 01:09:09'),
(35, 'Du Lịch New Zealand', '              Ngày đầu tiên trong cuộc hành trình du lịch New Zealand kéo dài 3 tuần, bác Glen – host của chúng tôi ở Auckland đã giới thiệu về đất nước này tóm tắt trong một câu: “Cả đất nước New Zealand có 4 triệu dân, nhưng có tới 5 triệu con bò và 40 triệu con cừu!” Điều đó cho thấy đây là một đất nước của thiên nhiên và của nông nghiệp (chăn nuôi, sữa bò và lông cừu), và tất cả những gì đẹp nhất của tự nhiên đều được bảo tồn một cách tối đa để khai thác tiềm năng du lịch bền vững.\r\n\r\nThật vây, suốt 3 tuần ở đất nước có số cừu đông gấp 10 lần số người này, chúng tôi gặp nhiều bò nhiều cừu hơn con người. Chúng tôi được tham quan trang trại bò sữa, được nhìn công nghệ nuôi bò và vắt sữa của nông dân New Zealand, được tham quan trang trại cừu và xem cách người ta cắt lông cừu và chế ngự những con cừu to hàng trăm ký. Chúng tôi chết lặng trong những cảnh đẹp thiên nhiên hùng vĩ, mà lần đầu tiên trong đời được nhìn thấy. Chúng tôi được đi qua những cánh đồng hoa cải ngút ngàn và được chụp hình với những hàng cây hoa anh đào nở rực rỡ trên đường. Nói một cách thật lòng, New Zealand là đất nước đẹp nhất tôi từng đặt chân đến, trong một cuộc hành trình du lịch road trip dài nhất mà tôi từng được tham gia.  ', 'media_66766af0966f8.jpg', 0, 13, 1, '2024-06-22 01:10:56', '2024-06-22 01:10:56'),
(37, 'Du lịch Úc', '     Khi bước chân đến Úc, tôi như được đắm mình trong một thế giới hoàn toàn mới, nơi mà màu sắc và âm thanh của thiên nhiên hòa quyện vào nhau một cách tuyệt vời. Đầu tiên là Sydney, nơi tôi được chứng kiến ánh đèn lung linh phản chiếu trên vùng nước xanh biển Cảnh cả từ Cầu Cảng Sydney và nổi tiếng Nhà hát Opera Sydney. Tôi không sao có được đặc biệt  Th Can Th have Vis want know more message           ', 'media_66766befb2b47.jpg', 0, 13, 1, '2024-06-22 01:15:11', '2024-06-22 01:15:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `id_parent_comment` int(11) NOT NULL,
  `comment` text NOT NULL,
  `id_blog` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `id_parent_comment`, `comment`, `id_blog`, `name`, `email`, `created_at`, `updated_at`) VALUES
(2, 6, 'Test comment 1', 6, 'vinhs', 'vinhs@gmail.com', '2024-05-05 11:12:44', '2024-05-05 11:12:44'),
(3, 2, 'Reply comment 1 - 2', 6, 'nguyen', 'nguyen@gmail.com', '2024-05-05 05:12:46', '2024-05-05 05:12:46'),
(4, 6, 'Test comment level 1', 6, 'son', 'son@gmail.com', '2024-05-05 05:13:16', '2024-05-05 05:13:16'),
(5, 6, 'Test comment level 1', 6, 'Vi', 'vi@gmail.com', '2024-05-05 05:13:33', '2024-05-05 05:13:33'),
(8, 7, 'Test comment level 1', 7, 'vinhs', 'vinhs@gmail.com', '2024-05-05 05:16:01', '2024-05-05 05:16:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, '<div class=\"s-content__entry-header\" style=\"box-sizing: inherit; margin-top: var(--vspace-3); margin-right: 0px; margin-bottom: var(--vspace-3); margin-left: 0px; padding: 0px; color: rgb(40, 40, 40); font-family: Inter, sans-serif; font-size: 18px;\"><h1 class=\"s-content__title\" style=\"box-sizing: inherit; font-size: var(--text-display-1); margin-top: 0px; margin-bottom: var(--vspace-0_75); padding: 0px; font-variant-ligatures: common-ligatures; text-rendering: optimizelegibility; font-family: var(--font-2); line-height: calc(var(--vspace-1_75) + var(--vspace-0_125)); letter-spacing: -0.01em; text-align: center;\">Get In Touch With Us.</h1></div><div class=\"s-content__primary\" style=\"box-sizing: inherit; margin: 0px; padding: 0px; display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: row; -webkit-box-align: start; align-items: flex-start; -webkit-box-pack: center; justify-content: center; color: rgb(40, 40, 40); font-family: Inter, sans-serif; font-size: 18px;\"><div class=\"s-content__page-content\" style=\"box-sizing: inherit; margin: 0px; padding: 0px; max-width: 900px;\"><p class=\"lead\" style=\"box-sizing: inherit; margin-bottom: var(--vspace-1); padding: 0px; font-size: var(--text-md); text-rendering: optimizelegibility; line-height: calc(1.125 * var(--space)); color: var(--color-text-dark);\">Lorem ipsum Deserunt est dolore Ut Excepteur nulla occaecat magna occaecat Excepteur nisi esse veniam dolor consectetur minim qui nisi esse deserunt commodo ea enim ullamco non voluptate consectetur minim aliquip Ut incididunt amet ut cupidatat.</p><p style=\"box-sizing: inherit; margin-bottom: var(--vspace-1); padding: 0px; font-size: inherit; text-rendering: optimizelegibility;\">Duis ex ad cupidatat tempor Excepteur cillum cupidatat fugiat nostrud cupidatat dolor sunt sint sit nisi est eu exercitation incididunt adipisicing veniam velit id fugiat enim mollit amet anim veniam dolor dolor irure velit commodo cillum sit nulla ullamco magna amet magna cupidatat qui labore cillum sit in tempor veniam consequat non laborum adipisicing aliqua ea nisi sint ut quis proident ullamco ut dolore culpa occaecat ut laboris in sit minim cupidatat ut dolor voluptate enim veniam consequat occaecat fugiat in adipisicing in amet Ut nulla nisi non ut enim aliqua laborum mollit quis nostrud sed sed.</p><br style=\"box-sizing: inherit;\"><div class=\"row block-large-1-2 block-tab-full s-content__blocks\" style=\"box-sizing: inherit; margin-top: 0px; margin-right: calc(var(--gutter-lg) * -1); margin-bottom: 0px; margin-left: calc(var(--gutter-lg) * -1); padding: 0px; width: auto; max-width: var(--row-max-width); display: flex; -webkit-box-orient: horizontal; -webkit-box-direction: normal; flex-flow: wrap;\"><div class=\"column\" style=\"box-sizing: inherit; margin: 0px; padding: 0 var(--gutter-lg); -webkit-box-flex: 0; flex: 0 0 50%; max-width: 50%;\"><h4 style=\"box-sizing: inherit; margin-top: 0px; margin-right: 0px; margin-bottom: var(--vspace-0_5); margin-left: 0px; padding: 0px; font-variant-ligatures: common-ligatures; text-rendering: optimizelegibility; font-family: var(--font-2); font-size: var(--text-lg); line-height: var(--vspace-1);\">Where to Find Us</h4><p style=\"box-sizing: inherit; margin-bottom: var(--vspace-1); padding: 0px; font-size: inherit; text-rendering: optimizelegibility;\">1600 Amphitheatre Parkway<br style=\"box-sizing: inherit;\">Mountain View, CA<br style=\"box-sizing: inherit;\">94043 US</p></div><div class=\"column\" style=\"box-sizing: inherit; margin: 0px; padding: 0 var(--gutter-lg); -webkit-box-flex: 0; flex: 0 0 50%; max-width: 50%;\"><h4 style=\"box-sizing: inherit; margin-top: 0px; margin-right: 0px; margin-bottom: var(--vspace-0_5); margin-left: 0px; padding: 0px; font-variant-ligatures: common-ligatures; text-rendering: optimizelegibility; font-family: var(--font-2); font-size: var(--text-lg); line-height: var(--vspace-1);\">Contact Info</h4><p style=\"box-sizing: inherit; margin-bottom: var(--vspace-1); padding: 0px; font-size: inherit; text-rendering: optimizelegibility;\">someone@yourdomain.com<br style=\"box-sizing: inherit;\">info@yourdomain.com<br style=\"box-sizing: inherit;\">Phone: (+63) 555 1212</p></div></div></div></div>', '2024-04-28 11:47:52', '2024-05-04 09:34:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `links`
--

INSERT INTO `links` (`id`, `title`, `url`, `created_at`, `updated_at`) VALUES
(2, 'Home', 'index.php', '2024-05-04 08:23:13', '2024-05-04 08:23:13'),
(3, 'About', 'about.php', '2024-05-04 08:23:25', '2024-05-04 08:23:25'),
(4, 'Terms', 'terms.php', '2024-05-04 08:23:40', '2024-05-04 08:23:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mailsettings`
--

CREATE TABLE `mailsettings` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mail_server` varchar(100) NOT NULL,
  `mail_username` varchar(100) NOT NULL,
  `mail_password` varchar(100) NOT NULL,
  `mail_port` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `mailsettings`
--

INSERT INTO `mailsettings` (`id`, `email`, `mail_server`, `mail_username`, `mail_password`, `mail_port`, `created_at`, `updated_at`) VALUES
(3, 'support@gmail.com', 'sandbox.smtp.mailtrap.io', '1f0f11ec525888', '0d2332e8714722', '2525', '2024-06-22 12:13:14', '2024-06-22 12:13:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `site_name` varchar(100) NOT NULL,
  `site_logo` varchar(100) NOT NULL,
  `site_favicon` varchar(100) NOT NULL,
  `site_map` text NOT NULL,
  `site_timezone` varchar(100) NOT NULL,
  `site_footer` varchar(100) NOT NULL,
  `contact_phone` varchar(100) NOT NULL,
  `contact_address` varchar(100) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `site_logo`, `site_favicon`, `site_map`, `site_timezone`, `site_footer`, `contact_phone`, `contact_address`, `contact_email`, `created_at`, `updated_at`) VALUES
(1, 'Blogs Site', 'media_66325422327be.png', 'media_6632542232dcb.png', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.6055314132323!2d106.67074501099633!3d10.76485388933896!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752ee10a9f249b%3A0x54af0b8f63e60391!2zMzMgxJAuIFbEqW5oIFZp4buFbiwgUGjGsOG7nW5nIDIsIFF14bqtbiAxMCwgVGjDoG5oIHBo4buRIEjhu5MgQ2jDrSBNaW5oLCBWaWV0bmFt!5e0!3m2!1sen!2s!4v1714299849880!5m2!1sen!2s\" width=\"800\" height=\"600\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Asia/Ho_Chi_Minh', 'copyright &copy; 2024', '0938081668', '33 Vĩnh Viễn, Phường 2, Quận 10, TP.HCM', 'vinhs@kthcm.edu.vn', '2024-05-01 09:39:30', '2024-05-01 09:39:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(14, 'Rivers', 'media_66766ccc32a36.jpg', '2024-06-22 01:18:52', '2024-06-22 01:18:52'),
(15, 'Snow', 'media_66766ce41b237.jpg', '2024-06-22 01:19:16', '2024-06-22 01:19:16'),
(16, 'Mountain', 'media_66766d0890202.jpg', '2024-06-22 01:19:52', '2024-06-22 01:19:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `socials`
--

CREATE TABLE `socials` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `socials`
--

INSERT INTO `socials` (`id`, `title`, `url`, `icon`, `created_at`, `updated_at`) VALUES
(2, 'Facebook', 'www.facebook.com', '<i class=\"fab fa-facebook\"></i>', '2024-05-03 09:48:38', '2024-05-03 09:48:38'),
(3, 'Youtube', 'https://www.youtube.com', '<i class=\"fab fa-youtube\"></i>', '2024-05-03 09:49:08', '2024-05-03 09:49:08'),
(4, 'Instagram', 'www.instagram.com', '<i class=\"fab fa-instagram\"></i>', '2024-05-03 09:49:45', '2024-05-03 09:49:45'),
(5, 'Twitter', 'http://www.twitter.com', '<i class=\"fab fa-twitter\"></i>', '2024-05-03 09:50:31', '2024-05-03 09:50:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `verified_token` varchar(100) NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `verified_token`, `status`, `created_at`, `updated_at`) VALUES
(2, 'admin@gmail.com', 'verified', 1, '2024-05-04 07:22:21', '2024-05-04 07:22:40'),
(3, 'sonvi2002@gmail.com', 'verify_66363945e3876', 1, '2024-05-04 03:33:57', '2024-05-04 03:33:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `terms`
--

CREATE TABLE `terms` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `terms`
--

INSERT INTO `terms` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Đây là trang cập nhật các điều khoản.', '2024-04-28 12:37:20', '2024-06-18 11:46:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `role` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `email_verified` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `image`, `phone`, `role`, `status`, `email_verified`, `created_at`, `updated_at`) VALUES
(6, 'Thao', 'thao', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'thao@gmail.com', 'guest.jpg', '123456', 2, 1, 'verified', '2024-06-18 11:38:51', '2024-06-18 11:38:51');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blogcategories`
--
ALTER TABLE `blogcategories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mailsettings`
--
ALTER TABLE `mailsettings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `blogcategories`
--
ALTER TABLE `blogcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `mailsettings`
--
ALTER TABLE `mailsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
