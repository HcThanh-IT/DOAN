-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 18, 2024 lúc 06:55 PM
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
(1, 'thaO', 1, '2024-06-18 10:59:21', '2024-06-18 10:59:21'),
(11, 'THẢO', 1, '2024-06-18 11:00:15', '2024-06-18 11:00:15');

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
(2, 'tryetr', '       hghfghy         ', 'media_6671a983b50dd.jpg', 0, 1, 1, '2024-06-18 10:36:35', '2024-06-18 10:36:35');

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
(1, 'support@gmail.com', 'sandbox.smtp.mailtrap.io', '923779d8f86333', '640b78ebc99439', '2525', '2024-04-28 10:00:25', '2024-04-29 11:03:49');

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
(1, 'vinhs2002@gmail.com', 'verified', 1, '2024-05-04 07:19:58', '2024-05-04 07:20:24'),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
