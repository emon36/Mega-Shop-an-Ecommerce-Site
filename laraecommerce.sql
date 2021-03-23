-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2021 at 04:47 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laraecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `created_at`, `updated_at`) VALUES
(7, 'Admin', 'admin@admin.com', '$2y$10$NTePzc.sP2mftpViJsUNX.p3l63JpYrVtxZQwk/QEjUXcH7vk0GPS', '01977451259', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_logo`, `created_at`, `updated_at`) VALUES
(1, 'Custom', NULL, '2021-02-16 08:19:52', '2021-02-16 08:19:52'),
(2, 'Fastrack', NULL, '2021-02-16 08:20:08', '2021-02-16 08:20:08');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Men\'s  Fashion', '2021-02-16 08:13:50', '2021-02-16 08:13:50'),
(2, 'Women\'s  Fashion', '2021-02-16 08:14:01', '2021-02-16 08:14:01'),
(3, 'Kids', '2021-03-20 08:49:43', '2021-03-20 08:49:43');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `discount`, `created_at`, `updated_at`) VALUES
(1, 'Ramdan2021', '5', '2021-03-23 09:39:29', '2021-03-23 09:39:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_29_130713_create_admins_table', 1),
(5, '2020_12_30_054501_create_categories_table', 1),
(6, '2020_12_30_091041_create_sub_categories_table', 1),
(7, '2020_12_30_092238_create_brands_table', 1),
(8, '2021_01_01_182115_create_coupons_table', 1),
(9, '2021_01_02_082334_create_newsletters_table', 1),
(10, '2021_01_02_135947_create_products_table', 1),
(11, '2021_01_07_111457_create_wishlists_table', 1),
(13, '2021_01_21_093027_create_orders_table', 1),
(14, '2021_01_21_093246_create_orders_details_table', 1),
(15, '2021_01_21_093341_create_shipping_table', 1),
(16, '2021_01_14_053403_create_settings_table', 2),
(17, '2021_03_21_112952_add_address_to_users_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paying_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blnc_transection` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `status_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment_id`, `paying_amount`, `payment_type`, `blnc_transection`, `stripe_order_id`, `subtotal`, `shipping`, `vat`, `total`, `status`, `status_code`, `month`, `date`, `year`, `created_at`, `updated_at`) VALUES
(1, '1', 'card_1IMEboBLSPHrpQhK33Y5jobv', '1700', 'stripe', 'txn_1IMEbrBLSPHrpQhKapfdMUP5', '602e8a556c4f9', '10.00', '2', '5', '17', '3', '982938', 'February', '18-02-21', '2021', NULL, NULL),
(2, '1', 'card_1IMVEaBLSPHrpQhKXBhci60N', '2000', 'stripe', 'txn_1IMVEeBLSPHrpQhKwVZ5bHmT', '602f83fb48079', '13.00', '2', '5', '20', '1', '722782', 'February', '19-02-21', '2021', NULL, NULL),
(3, '2', 'card_1IUEbvBLSPHrpQhK7v65AGIv', '1700', 'stripe', 'txn_1IUEbyBLSPHrpQhKZLYbB2Ks', '604ba221998ed', '10.00', '2', '5', '17', '1', '302418', 'March', '12-03-21', '2021', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE `orders_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `singleprice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalprice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`id`, `order_id`, `product_id`, `product_name`, `color`, `size`, `quantity`, `singleprice`, `totalprice`, `created_at`, `updated_at`) VALUES
(1, 1, '2', 'Check Shirt For Men', 'Multicolor', 'S', '1', '10', '10', NULL, NULL),
(2, 2, '3', 'Fila Long Sleeve T-shirt For Men', 'Dark Grey', 'S', '1', '5', '5', NULL, NULL),
(3, 2, '4', 'Men\'s Premium T Shirts', 'Black', 'S', '1', '8', '8', NULL, NULL),
(4, 3, '2', 'Check Shirt For Men', 'Multicolor', 'S', '1', '10', '10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_slider` int(11) DEFAULT NULL,
  `hot_deal` int(11) DEFAULT NULL,
  `best_rated` int(11) DEFAULT NULL,
  `mid_slider` int(11) DEFAULT NULL,
  `hot_new` int(11) DEFAULT NULL,
  `trend` int(11) DEFAULT NULL,
  `image_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `brand_id`, `product_name`, `product_code`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `trend`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 'Black & White Check Shirt', 'SMTS1', '30', '<div class=\"html-content pdp-product-highlights\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.298b2801lzhiRR\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.298b2801lzhiRR\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Main Material:Cot</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Gender: Men</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color: Multi-color</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Sleeve: Long Sleeve</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Checks: Madras Checks</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Wash &amp; Care: Machine Wash</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Fit: Slim -fit</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">size: M L XL</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">M= chest 36\" long 28\"</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">L= chest 38\" long 28.5\"</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">XL= chest 40\" long 29\"</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><p data-spm-anchor-id=\"a2a0e.pdp.product_detail.i2.298b2801lzhiRR\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 14px;\">Believe it Bangladesh around with the trendy check shirts, be it in the office, classes or with friends. This 100% cotton twill shirt has been tailored to provide fashion and comfort together. Rock the attire with contrasting chinos to complete the look. And be the best version of yourself.</p></div>', 'Multicolor', 'S,M,L', '7', '5', NULL, 1, 1, 1, NULL, 1, 1, 'media/product/1691863375074141.jpg', 'media/product/1691863375919000.jpg', 'media/product/1691863376068115.jpg', 1, NULL, NULL),
(2, 1, 1, 1, 'Check Shirt For Men', '105012', '19', '<div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Main Material: Cotton</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Gender: Men</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color: Multi-color</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Sleeve: Long Sleeve</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Checks: Madras Checks</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Wash &amp; Care: Machine Wash</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Fit: Slim -fit</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">size: M L XL</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">M= chest 36\" long 28\"</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">L= chest 38\" long 28.5\"</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">XL= chest 40\" long 29\"</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">XXL= chest 42\'\' long 30\'\'</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 14px;\">Believe it Bangladesh around with the trendy check shirts, be it in the office, classes or with friends. This 100% cotton twill shirt has been tailored to provide fashion and comfort together. Rock the attire with contrasting chinos to complete the look. And be the best version of yourself.</p></div>', 'Multicolor', 'S,M,L', '10', NULL, NULL, NULL, 1, 1, NULL, 1, 1, 'media/product/1691866261646511.jpg', 'media/product/1691866262073113.jpg', 'media/product/1691866262256050.jpg', 1, NULL, NULL),
(4, 1, 2, 1, 'Men\'s Premium T Shirts', 'MPTS', '20', '<div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i3.9d3c156bogQBKj\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Product Type: T-shirt</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Main Material: Organic Cotton</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Gender: Men</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Stylish and Fashionable</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Comfortable to wear</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">High quality stich and fabric</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">GSM:155-160</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Quality : Full Export</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Fabrics : 100% Cotton</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Fit type : Regular</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Sleeve : Half sleeve</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Measurement : Asian</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Size Description :</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">M - ( Chest-38, Long-27 )</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">L - ( Chest-40, Long-28 )</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">XL - ( chest-42, Long-29 )</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Place Of Origin: Bangladesh</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><span style=\"margin: 0px; padding: 0px; font-family: none; font-size: 14px; white-space: pre-wrap;\">Shopping fair always give you the best products at the lowest price.the t shirt is made with the best fabric.it is very comportable to wear.there have variation in colour.everybody can use it very easily.     </span><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; font-family: none; white-space: pre-wrap;\"><span style=\"margin: 0px; padding: 0px;\"><br class=\"Apple-interchange-newline\" style=\"margin: 0px; padding: 0px;\"></span></p><p data-spm-anchor-id=\"a2a0e.pdp.product_detail.i2.9d3c156bogQBKj\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; font-family: none; white-space: pre-wrap;\"><span style=\"margin: 0px; padding: 0px;\"> A T-shirt is a style of men fabric shirt, named after the T shape of the body and sleeves. It is normally associated with short sleeves, a round neckline, known as a crew neck, with no collar. T-shirts are generally made of a light, inexpensive fabric, and are easy to clean.</span></p></div>', 'Black', 'S,M,L', '10', '8', NULL, NULL, 1, 1, NULL, NULL, 1, 'media/product/1691867599992754.jpg', 'media/product/1691867600570020.jpg', 'media/product/1691867600642043.jpg', 1, NULL, NULL),
(5, 2, 6, 1, 'Ladies T-shirt 3 Quarter', 'LTS3Q', '3', '<div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.57527d84lkLpxb\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Product Type: Ladies T-shirt 3Quarter</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color: Red</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Main Material: Cotton</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Stylish and fashionable</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Gender: Women</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><span style=\"margin: 0px; padding: 0px;\">Size Guide</span><span style=\"margin: 0px; padding: 0px;\">Size</span><span style=\"margin: 0px; padding: 0px;\">Chest</span><span style=\"margin: 0px; padding: 0px;\">Length</span><span style=\"margin: 0px; padding: 0px;\">M</span><span style=\"margin: 0px; padding: 0px;\">34’’</span><span style=\"margin: 0px; padding: 0px;\">30\"\"&nbsp;</span><span style=\"margin: 0px; padding: 0px;\">L</span><span style=\"margin: 0px; padding: 0px;\">36’’</span><span style=\"margin: 0px; padding: 0px;\">31’’</span><span style=\"margin: 0px; padding: 0px;\">XL</span><span style=\"margin: 0px; padding: 0px;\">38\"\"</span><span style=\"margin: 0px; padding: 0px;\">32\"\"</span><span style=\"margin: 0px; padding: 0px;\">XXL</span><span style=\"margin: 0px; padding: 0px;\">40\"\"</span><span style=\"margin: 0px; padding: 0px;\">33\"\"</span></div>', 'Red', 'M,L,Xl,XXl', '20', '15', NULL, NULL, NULL, 1, 1, 1, 1, 'media/product/1691869077488732.jpg', 'media/product/1691869078632494.jpg', 'media/product/1691869079021957.jpg', 1, NULL, NULL),
(6, 1, 1, 1, 'Formal White Shirt', '1036494257', '30', '<div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i6.72d16ac41jC3gf\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Product Type:Casual/ Formal Shirt.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color: White</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Main Material: Cotton</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Gender: Men</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Comfortable to wear</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Fashionable and Smart look</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Machine and hand washable</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 10px; padding: 0px; list-style-position: initial; list-style-image: initial;\"><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Fabrics</span><span style=\"margin: 0px; padding: 0px;\">100% Cotton</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Shape : Full</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Style : Slim Fitting</span></li><li data-spm-anchor-id=\"a2a0e.pdp.product_detail.i7.72d16ac41jC3gf\" style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Quality : Export</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Made in : Bangladesh</span></li><li data-spm-anchor-id=\"a2a0e.pdp.product_detail.i5.72d16ac41jC3gf\" style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Occasion : Casual, Formal, Wedding &amp; Club wear.</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">Size: S, M, L, XL, XXL, 3XL</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">S: Chest 36, Long 26.5</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">M: Chest 38, Long 27</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">L: Chest 40, Long 27.5</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">XL: Chest 41/42, Long 28.5</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">XXL: Chest 44, Long 28.5</span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">3XL: Chest 46, Long 29</span></li></ul><h3 data-spm-anchor-id=\"a2a0e.pdp.product_detail.i4.72d16ac41jC3gf\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\">N.B. Color of the actual product may vary due to the resolution and lighting of your computer &amp; mobile.</span></h3></div>', 'White', 'S,M,L,XL', '20', '5', NULL, NULL, 1, 1, 1, NULL, 1, 'media/product/1695003645135316.jpg', 'media/product/1695003647297473.jpg', 'media/product/1695003647382072.jpg', 1, NULL, NULL),
(7, 1, 1, 1, 'Multicolor Cotton Casual Shirt', '1047942014', '30', '<div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.2b826e7c1lQG6B\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Brand: Regular Collections</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Product Type: Casual Shirt</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Main Material: Cotton</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Stylish and fashionable</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Gender: Men</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><table style=\"margin: 0px; padding: 0px; width: 192pt; border: none;\"><tbody style=\"margin: 0px; padding: 0px;\"><tr style=\"margin: 0px; padding: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; height: 15pt;\"><td style=\"margin: 0px; padding: 0px 0px 0px 10px; border: 1px solid rgb(170, 170, 170);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\"></p></td><td style=\"margin: 0px; padding: 0px 0px 0px 10px; border: 1px solid rgb(170, 170, 170);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\"></p></td><td style=\"margin: 0px; padding: 0px 0px 0px 10px; border: 1px solid rgb(170, 170, 170);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\"></p></td><td style=\"margin: 0px; padding: 1px 1px 0px; border-image: initial; border-width: 0.5pt; border-style: solid; border-color: windowtext black windowtext windowtext; height: 15pt; width: 192pt; text-align: center; vertical-align: bottom; white-space: nowrap;\"><span style=\"margin: 0px; padding: 0px; font-size: 11pt;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\"><span style=\"margin: 0px; padding: 0px; color: black;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-family: calibri, sans-serif;\">Regular Collections</span></span></span></span></span></span></td></tr><tr style=\"margin: 0px; padding: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; height: 15pt;\"><td style=\"margin: 0px; padding: 0px 0px 0px 10px; border: 1px solid rgb(170, 170, 170);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\"></p></td><td style=\"margin: 0px; padding: 0px 0px 0px 10px; border: 1px solid rgb(170, 170, 170);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\"></p></td><td style=\"margin: 0px; padding: 0px 0px 0px 10px; border: 1px solid rgb(170, 170, 170);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\"></p></td><td style=\"margin: 0px; padding: 1px 1px 0px; border-image: initial; border-width: 0.5pt; border-style: solid; border-color: windowtext black windowtext windowtext; height: 15pt; text-align: center; vertical-align: bottom; white-space: nowrap;\"><span style=\"margin: 0px; padding: 0px; font-size: 11pt;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\"><span style=\"margin: 0px; padding: 0px; color: black;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-family: calibri, sans-serif;\">MEN\'S FULL SLEEVE SHIRT MEASUREMENT</span></span></span></span></span></span></td></tr><tr style=\"margin: 0px; padding: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; height: 15pt;\"><td style=\"margin: 0px; padding: 1px 1px 0px; border-right: 0.5pt solid windowtext; border-bottom: 0.5pt solid windowtext; border-left: 0.5pt solid windowtext; border-image: initial; height: 15pt; border-top: none; text-align: center; vertical-align: bottom; white-space: nowrap;\"><span style=\"margin: 0px; padding: 0px; font-size: 11pt;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\"><span style=\"margin: 0px; padding: 0px; color: black;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-family: calibri, sans-serif;\">Options</span></span></span></span></span></span></td><td style=\"margin: 0px; padding: 1px 1px 0px; border-image: initial; border-bottom: 0.5pt solid windowtext; border-top: none; text-align: center; border-right: none; border-left: none; vertical-align: bottom; white-space: nowrap;\"><span style=\"margin: 0px; padding: 0px; font-size: 11pt;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\"><span style=\"margin: 0px; padding: 0px; color: black;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-family: calibri, sans-serif;\">Collar</span></span></span></span></span></span></td><td style=\"margin: 0px; padding: 1px 1px 0px; border-image: initial; border-bottom: 0.5pt solid windowtext; border-top: none; text-align: center; border-right: none; border-left: none; vertical-align: bottom; white-space: nowrap;\"><span style=\"margin: 0px; padding: 0px; font-size: 11pt;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\"><span style=\"margin: 0px; padding: 0px; color: black;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-family: calibri, sans-serif;\">Chest</span></span></span></span></span></span></td><td style=\"margin: 0px; padding: 1px 1px 0px; border-image: initial; border-bottom: 0.5pt solid windowtext; border-top: none; text-align: center; border-right: 0.5pt solid windowtext; border-left: none; vertical-align: bottom; white-space: nowrap;\"><span style=\"margin: 0px; padding: 0px; font-size: 11pt;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\"><span style=\"margin: 0px; padding: 0px; color: black;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-family: calibri, sans-serif;\">Length</span></span></span></span></span></span></td></tr><tr style=\"margin: 0px; padding: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; height: 15pt;\"><td style=\"margin: 0px; padding: 1px 1px 0px; border-right: 0.5pt solid windowtext; border-bottom: 0.5pt solid windowtext; border-left: 0.5pt solid windowtext; border-image: initial; height: 15pt; border-top: none; text-align: center; vertical-align: bottom; white-space: nowrap;\"><span style=\"margin: 0px; padding: 0px; font-size: 11pt;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\"><span style=\"margin: 0px; padding: 0px; color: black;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-family: calibri, sans-serif;\">M</span></span></span></span></span></span></td><td style=\"margin: 0px; padding: 1px 1px 0px; border-right: 0.5pt solid windowtext; border-bottom: 0.5pt solid windowtext; border-image: initial; border-top: none; border-left: none; text-align: center; vertical-align: bottom; white-space: nowrap;\"><span style=\"margin: 0px; padding: 0px; font-size: 11pt;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\"><span style=\"margin: 0px; padding: 0px; color: black;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-family: calibri, sans-serif;\">15</span></span></span></span></span></span></td><td style=\"margin: 0px; padding: 1px 1px 0px; border-right: 0.5pt solid windowtext; border-bottom: 0.5pt solid windowtext; border-image: initial; border-top: none; border-left: none; text-align: center; vertical-align: bottom; white-space: nowrap;\"><span style=\"margin: 0px; padding: 0px; font-size: 11pt;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\"><span style=\"margin: 0px; padding: 0px; color: black;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-family: calibri, sans-serif;\">38</span></span></span></span></span></span></td><td style=\"margin: 0px; padding: 1px 1px 0px; border-right: 0.5pt solid windowtext; border-bottom: 0.5pt solid windowtext; border-image: initial; border-top: none; border-left: none; text-align: center; vertical-align: bottom; white-space: nowrap;\"><span style=\"margin: 0px; padding: 0px; font-size: 11pt;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\"><span style=\"margin: 0px; padding: 0px; color: black;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-family: calibri, sans-serif;\">28</span></span></span></span></span></span></td></tr><tr style=\"margin: 0px; padding: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; height: 15pt;\"><td style=\"margin: 0px; padding: 1px 1px 0px; border-right: 0.5pt solid windowtext; border-bottom: 0.5pt solid windowtext; border-left: 0.5pt solid windowtext; border-image: initial; height: 15pt; border-top: none; text-align: center; vertical-align: bottom; white-space: nowrap;\"><span style=\"margin: 0px; padding: 0px; font-size: 11pt;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\"><span style=\"margin: 0px; padding: 0px; color: black;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-family: calibri, sans-serif;\">L</span></span></span></span></span></span></td><td style=\"margin: 0px; padding: 1px 1px 0px; border-right: 0.5pt solid windowtext; border-bottom: 0.5pt solid windowtext; border-image: initial; border-top: none; border-left: none; text-align: center; vertical-align: bottom; white-space: nowrap;\"><span style=\"margin: 0px; padding: 0px; font-size: 11pt;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\"><span style=\"margin: 0px; padding: 0px; color: black;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-family: calibri, sans-serif;\">15.5</span></span></span></span></span></span></td><td style=\"margin: 0px; padding: 1px 1px 0px; border-right: 0.5pt solid windowtext; border-bottom: 0.5pt solid windowtext; border-image: initial; border-top: none; border-left: none; text-align: center; vertical-align: bottom; white-space: nowrap;\"><span style=\"margin: 0px; padding: 0px; font-size: 11pt;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\"><span style=\"margin: 0px; padding: 0px; color: black;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-family: calibri, sans-serif;\">40</span></span></span></span></span></span></td><td style=\"margin: 0px; padding: 1px 1px 0px; border-right: 0.5pt solid windowtext; border-bottom: 0.5pt solid windowtext; border-image: initial; border-top: none; border-left: none; text-align: center; vertical-align: bottom; white-space: nowrap;\"><span style=\"margin: 0px; padding: 0px; font-size: 11pt;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\"><span style=\"margin: 0px; padding: 0px; color: black;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-family: calibri, sans-serif;\">29</span></span></span></span></span></span></td></tr><tr style=\"margin: 0px; padding: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; height: 15pt;\"><td style=\"margin: 0px; padding: 1px 1px 0px; border-right: 0.5pt solid windowtext; border-bottom: 0.5pt solid windowtext; border-left: 0.5pt solid windowtext; border-image: initial; height: 15pt; border-top: none; text-align: center; vertical-align: bottom; white-space: nowrap;\"><span style=\"margin: 0px; padding: 0px; font-size: 11pt;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\"><span style=\"margin: 0px; padding: 0px; color: black;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-family: calibri, sans-serif;\">XL</span></span></span></span></span></span></td><td style=\"margin: 0px; padding: 1px 1px 0px; border-right: 0.5pt solid windowtext; border-bottom: 0.5pt solid windowtext; border-image: initial; border-top: none; border-left: none; text-align: center; vertical-align: bottom; white-space: nowrap;\"><span style=\"margin: 0px; padding: 0px; font-size: 11pt;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\"><span style=\"margin: 0px; padding: 0px; color: black;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-family: calibri, sans-serif;\">16</span></span></span></span></span></span></td><td style=\"margin: 0px; padding: 1px 1px 0px; border-right: 0.5pt solid windowtext; border-bottom: 0.5pt solid windowtext; border-image: initial; border-top: none; border-left: none; text-align: center; vertical-align: bottom; white-space: nowrap;\"><span style=\"margin: 0px; padding: 0px; font-size: 11pt;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\"><span style=\"margin: 0px; padding: 0px; color: black;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-family: calibri, sans-serif;\">42</span></span></span></span></span></span></td><td style=\"margin: 0px; padding: 1px 1px 0px; border-right: 0.5pt solid windowtext; border-bottom: 0.5pt solid windowtext; border-image: initial; border-top: none; border-left: none; text-align: center; vertical-align: bottom; white-space: nowrap;\"><span style=\"margin: 0px; padding: 0px; font-size: 11pt;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\"><span style=\"margin: 0px; padding: 0px; color: black;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-family: calibri, sans-serif;\">30</span></span></span></span></span></span></td></tr><tr style=\"margin: 0px; padding: 0px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; height: 15pt;\"><td style=\"margin: 0px; padding: 1px 1px 0px; border-image: initial; border-bottom: 0.5pt solid windowtext; height: 15pt; text-align: center; border-top: none; border-right: 0.5pt solid windowtext; border-left: 0.5pt solid windowtext; vertical-align: bottom; white-space: nowrap;\"><span style=\"margin: 0px; padding: 0px; font-size: 11pt;\"><span style=\"margin: 0px; padding: 0px; color: black;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-family: calibri, sans-serif;\">XXL</span></span></span></span></span></span></td><td style=\"margin: 0px; padding: 1px 1px 0px; border-image: initial; border-bottom: 0.5pt solid windowtext; text-align: center; border-top: none; border-right: 0.5pt solid windowtext; border-left: none; vertical-align: bottom; white-space: nowrap;\"><span style=\"margin: 0px; padding: 0px; font-size: 11pt;\"><span style=\"margin: 0px; padding: 0px; color: black;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-family: calibri, sans-serif;\">16.5</span></span></span></span></span></span></td><td style=\"margin: 0px; padding: 1px 1px 0px; border-image: initial; border-bottom: 0.5pt solid windowtext; text-align: center; border-top: none; border-right: 0.5pt solid windowtext; border-left: none; vertical-align: bottom; white-space: nowrap;\"><span style=\"margin: 0px; padding: 0px; font-size: 11pt;\"><span style=\"margin: 0px; padding: 0px; color: black;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-family: calibri, sans-serif;\">44</span></span></span></span></span></span></td><td style=\"margin: 0px; padding: 1px 1px 0px; border-image: initial; border-bottom: 0.5pt solid windowtext; text-align: center; border-top: none; border-right: 0.5pt solid windowtext; border-left: none; vertical-align: bottom; white-space: nowrap;\"><span style=\"margin: 0px; padding: 0px; font-size: 11pt;\"><span style=\"margin: 0px; padding: 0px; color: black;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-family: calibri, sans-serif;\">31</span></span></span></span></span></span></td></tr></tbody></table></div>', 'Multicolor', 'S,M,L', '20', '5', NULL, NULL, 1, 1, NULL, NULL, 1, 'media/product/1695004356458518.jpg', NULL, NULL, 1, NULL, NULL),
(8, 2, 6, 1, 'casual girl\'s print new t-shirt', '1053876812', '40', '<div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i2.1505421dvotFd0\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Export Quality: Cotton Short Sleeve T-Shirt for Women</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Fabric: 100% cotton</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Fabrication: 160+GSM</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color:white</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Size: M, L, XL</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">M: (chest -38 \'\', length-28 \'\')</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">L :( chest-40 \'\', length-29 \")</li><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.1505421dvotFd0\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">XL: ( chest -42 \", length-30\")</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\"><span style=\"margin: 0px; padding: 0px; font-family: helvetica;\"></span></p><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 10px; padding: 0px; list-style-position: initial; list-style-image: initial;\"><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-weight: bolder;\"><em style=\"margin: 0px; padding: 0px;\">This T-Shirt for Women comfortable and can be worn for regular use. It is a perfect wear f lor Womenb ike you. will love to wear this luxurious and colorful shirt just for its versatile usability and diversified fashion sense. It is generally made of a light, great quality cotton fabrics and is easy to clean. It is perfect to wear with jeans and gabardine pant.&nbsp;</em></span><span style=\"margin: 0px; padding: 0px; font-weight: bolder;\">Short Sleeve&nbsp;</span><span style=\"margin: 0px; padding: 0px; font-weight: bolder;\"><em style=\"margin: 0px; padding: 0px;\">design with a regular fit for Women. It is very versatile because it is useful on formal as well as casual occasion. It is designed to be comfortable and durable.</em></span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-weight: bolder;\"><em style=\"margin: 0px; padding: 0px;\">Size: M, L, XL</em></span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-weight: bolder;\"><em style=\"margin: 0px; padding: 0px;\">M: (chest -38 \'\', length-28 \'\')</em></span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-weight: bolder;\"><em style=\"margin: 0px; padding: 0px;\">L :( chest-40 \'\', length-29 \")</em></span></li><li style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-weight: bolder;\"><em style=\"margin: 0px; padding: 0px;\">XL: ( chest -42 \", length-30\")</em></span></li></ul></div>', 'White', 'M,L,XL', '30', '20', NULL, NULL, 1, 1, NULL, 1, 1, 'media/product/1695029894382732.jpg', NULL, NULL, 1, NULL, NULL);
INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `brand_id`, `product_name`, `product_code`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `trend`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(9, 2, 5, 1, 'casual girl\'s print new t-shirt', '1048646897', '40', '<div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Size: M,L,XL</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">M- Chest 36” length 27”</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">L-Chest 38” length 28”</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">XL-Chest 40” length 29”</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none;\"><li style=\"margin: 0px; padding: 0px;\">Product Type: Ladies T-shirt &amp; Tops</li><li style=\"margin: 0px; padding: 0px;\">Color:White</li><li style=\"margin: 0px; padding: 0px;\">Main Material: 100% Cotton</li><li style=\"margin: 0px; padding: 0px;\">Stylish: fashionable &amp; Casual</li><li style=\"margin: 0px; padding: 0px;\">Gender: Women</li><li style=\"margin: 0px; padding: 0px;\">Body fabrics: 100% cotton s/JGSM: 160 from 180</li><li style=\"margin: 0px; padding: 0px;\">Sleeve Style:Short Sleeve</li><li style=\"margin: 0px; padding: 0px;\">Size :M L XL</li></ul></div>', 'White', 'M,L,Xl', '30', '20', NULL, NULL, 1, 1, 1, NULL, NULL, 'media/product/1695030077958101.png', NULL, NULL, 1, NULL, NULL),
(10, 2, 7, 1, 'Chiffon  georgette hijab', '1086370570', '200', '<div class=\"html-content pdp-product-highlights\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.7e406b77B0mdzI\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Chiffon georgette hijab</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Very comfortable to wear</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Lenth 72\" (+)(-)</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">width 29\" (+)(-)</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; font-family: none; white-space: pre-wrap;\">Very populer and comfortable hijab. </p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\">Don\'t iron over hit</p></div>', 'Grey,Deep Green,Navy Blue', 'One Size', '10', NULL, NULL, NULL, 1, 1, NULL, 1, 1, 'media/product/1695031661319192.jpg', 'media/product/1695031661704810.jpg', 'media/product/1695031661826615.jpg', 1, NULL, NULL),
(11, 2, 8, 1, 'Cotton Print Shalwar Kameez Three Pieces', '108599215', '20', '<div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Product Type: Shalwar Kameez/Three Piece</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color: Same as Photo</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Main Material: Cotton Print</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Kameez- All over Cotton Print</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Salwar- Cotton</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Orna- soft cotton</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Gender: Women</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Best quality fabrics, Beautiful design, easy fit and comfortable.</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; font-family: none; white-space: pre-wrap;\"></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\"><span style=\"margin: 0px; padding: 0px; font-family: helvetica;\">Shalwer Kameez/Three Piece is one of the traditional cloth for women in our country. We are selling high quality products in our online and local shop.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\"><span style=\"margin: 0px; padding: 0px; font-family: helvetica;\"><strong style=\"margin: 0px; padding: 0px; font-weight: bold;\">Inbox us for more info.</strong></span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 8px 0px; font-size: 14px; white-space: pre-wrap;\"><span style=\"margin: 0px; padding: 0px;\"><strong style=\"margin: 0px; padding: 0px; font-weight: bold;\">We are giving the same product as our ads details and photos given. We never get negative comments and reviews from our customers. You can visit our Shop on Daraz and Check by yourself then order. </strong></span></p></div>', 'Multicolor', 'One size', '30', '20', NULL, NULL, NULL, 1, NULL, 1, 1, 'media/product/1695033962666251.jpg', NULL, NULL, 1, NULL, NULL),
(12, 2, 8, 1, 'Unstitched Salwar Kamiz For Women', '1048534442', '40', '<div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Salwar - Cotton</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Kamaeez- Cotton</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Dupatta- Cotton</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Tayaba Fashion</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 14px;\">Salwar Kameez also spelled salwar kameez or Salwar Kameez is a traditional outfit originating in the subcontinent. It is a generic term used to describe different styles of dress. The Salwar kameez can be worn by women. The Salwar and the kameez are two garments which are combined to form the Salwar kameez.</p></div>', 'Yellow', 'One size', '35', '20', NULL, NULL, NULL, 1, NULL, NULL, 1, 'media/product/1695034216138161.jpg', NULL, NULL, 1, NULL, NULL),
(13, 1, 2, 1, 'Cotton Casual Half Sleeve Printed T-Shirt', '1053258780', '100', '<div class=\"html-content pdp-product-highlights\" style=\"margin: 0px; padding: 11px 0px 16px; word-break: break-word; border-bottom: 1px solid rgb(239, 240, 245); overflow: hidden; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><ul class=\"\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px;\"><li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.35c94026REd5Uk\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Casual T-shirt</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">For Men</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">100% cotton</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">GSM-160</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Color-Navy blue</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Knitting &amp; Dyeing febric</li></ul></div><div class=\"html-content detail-content\" style=\"margin: 16px 0px 0px; padding: 0px 0px 16px; word-break: break-word; position: relative; height: auto; line-height: 19px; overflow-y: hidden; border-bottom: 1px solid rgb(239, 240, 245); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px;\"><p data-spm-anchor-id=\"a2a0e.pdp.product_detail.i2.35c94026REd5Uk\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-size: 14px;\">Cosmic Mart is a trusted and reliable source for all your garment related needs from Bangladesh. Cosmic Mart manufactures and supplies quality products in all categories at a competitive price range from their own and sister production facility.It\'s a 100% cotton t-shirt with a premium finishing goods.</p></div>', 'Red,Blue,Green', 'S,M,L,XL', '15', NULL, NULL, NULL, 1, NULL, NULL, 1, 1, 'media/product/1695034937069686.jpg', 'media/product/1695034937252731.jpg', 'media/product/1695034937377035.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `vat`, `shipping_charge`, `shopname`, `email`, `phone`, `address`, `logo`, `created_at`, `updated_at`) VALUES
(1, '5', '2', 'Mega shop', 'megashop@gmail.com', '+8801977451259', 'Dhanmondi 32', 'logo.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `order_id`, `ship_name`, `ship_phone`, `ship_email`, `ship_address`, `ship_city`, `created_at`, `updated_at`) VALUES
(1, '1', 'Emon', '01977451259', 'kazzi.emon36@gmail.com', 'dania dhaka', 'Dhaka', NULL, NULL),
(2, '2', 'moinul', '01715239864', 'kaziemon36@hotmail.com', 'dania dhaka', 'Dhaka', NULL, NULL),
(3, '3', 'Emon', '01715239864', 'msemon1259@gmail.com', 'dania dhaka', 'Dhaka', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Shirt', '2021-02-16 08:18:31', '2021-02-16 08:18:31'),
(2, 1, 'T-shirt', '2021-02-16 08:18:39', '2021-02-16 08:18:39'),
(3, 1, 'Hoodie', '2021-02-16 08:18:48', '2021-02-16 08:18:48'),
(4, 1, 'Shoe', '2021-02-16 08:19:10', '2021-02-16 08:19:10'),
(5, 2, 'Women\'s Top', '2021-02-16 08:19:25', '2021-02-16 08:19:25'),
(6, 2, 'Women\'s T-Shirt', '2021-02-16 08:19:36', '2021-02-16 08:19:36'),
(7, 2, 'Hijab', '2021-03-23 07:43:47', '2021-03-23 07:43:47'),
(8, 2, 'Dresses', '2021-03-23 08:17:28', '2021-03-23 08:17:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `address`) VALUES
(1, 'Emon', '01977451259', 'kazzi.emon36@gmail.com', NULL, '$2y$10$jgjPMie86YBiEBp/fqHO3O7fcHToE1hLucLyaDY4aGQzru9Z3ef0W', NULL, '2021-02-18 08:59:38', '2021-03-21 12:36:05', 'dhaka 1236'),
(2, 'Md Emon', '01715239864', 'msemon1259@gmail.com', NULL, '$2y$10$4jUswp7yz0GwPlsbFOvqLeXkaYflwKa.VHuMGQZyYVm4maRSpT/Uy', NULL, '2021-03-12 11:03:49', '2021-03-22 04:06:13', 'dania dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
