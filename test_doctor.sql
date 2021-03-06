



CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `f_name`, `l_name`, `phone`, `email`, `image`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ahmed', 'nvhv', '01276059706', 'admin@admin.com', '2022-04-01-624771b0c9beb.png', '$2y$10$o0u9se0lDKaSNEE7Vluue.JpqtfPDUc093i.zwjY46DNMweAq.8Zi', NULL, '2022-04-01 08:39:44', '2022-04-01 08:42:08'),
(2, 'ahmed', 'nvhv', '01276059706', 'admin2@admin.com', '2022-04-01-624771b0c9beb.png', '$2y$10$o0u9se0lDKaSNEE7Vluue.JpqtfPDUc093i.zwjY46DNMweAq.8Zi', NULL, '2022-04-01 08:39:44', '2022-04-01 08:42:08');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `coverage` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `restaurant_id`, `name`, `email`, `password`, `latitude`, `longitude`, `address`, `status`, `created_at`, `updated_at`, `coverage`, `remember_token`) VALUES
(21, NULL, 'Ahmed Abdelalim', 'am909962@gmail.com', '$2y$10$5xBJgk1Gxt7LMBRAEMTRq.XBQ5nUDe7LydghOGuo3Y72x2RcEwFlK', '123.55', '94.25', 'kilo 21 , Al-Ajami neighborhood', 1, '2022-04-07 01:21:11', '2022-04-07 01:21:11', 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'self_pickup', '1', '2021-01-06 05:55:51', '2021-01-06 05:55:51'),
(3, 'restaurant_name', 'ahmed', NULL, NULL),
(4, 'currency', 'ZAR', NULL, NULL),
(5, 'logo', '2022-04-02-624867f00e6de.png', NULL, NULL),
(6, 'mail_config', '{\"name\":\"Delivery APP\",\"host\":\"mail.demo.com\",\"driver\":\"smtp\",\"port\":\"587\",\"username\":\"info@demo.com\",\"email_id\":\"info@demo.com\",\"encryption\":\"tls\",\"password\":\"demo\"}', NULL, '2021-07-25 09:32:09'),
(7, 'delivery_charge', '100', NULL, NULL),
(8, 'ssl_commerz_payment', '{\"status\":\"0\",\"store_id\":null,\"store_password\":null}', NULL, '2021-07-25 09:32:22'),
(9, 'paypal', '{\"status\":\"0\",\"paypal_client_id\":null,\"paypal_secret\":null}', NULL, '2021-07-25 09:32:42'),
(10, 'stripe', '{\"status\":\"0\",\"api_key\":null,\"published_key\":null}', NULL, '2021-07-25 09:32:50'),
(11, 'phone', '+01747413273', NULL, NULL),
(13, 'footer_text', 'copyright', NULL, NULL),
(14, 'address', 'Hazi osman gani lane', NULL, NULL),
(15, 'email_address', 'abcd@gmail.com', NULL, NULL),
(16, 'cash_on_delivery', '{\"status\":\"1\"}', NULL, '2021-02-11 18:39:36'),
(17, 'email_verification', '0', NULL, NULL),
(18, 'digital_payment', '{\"status\":\"1\"}', '2021-01-30 19:38:54', '2021-01-30 19:38:58'),
(19, 'terms_and_conditions', '<p></p>', NULL, '2021-05-30 08:51:56'),
(20, 'fcm_topic', '', NULL, NULL),
(21, 'fcm_project_id', '3f34f34', NULL, NULL),
(22, 'push_notification_key', 'demo', NULL, NULL),
(24, 'order_pending_message', '{\"status\":1,\"message\":\"Your order has been placed successfully.\"}', NULL, NULL),
(25, 'order_processing_message', '{\"status\":1,\"message\":\"Your order is going to the cook\"}', NULL, NULL),
(26, 'out_for_delivery_message', '{\"status\":1,\"message\":\"Order out for delivery.\"}', NULL, NULL),
(27, 'order_delivered_message', '{\"status\":1,\"message\":\"delivered\"}', NULL, NULL),
(28, 'delivery_boy_assign_message', '{\"status\":1,\"message\":\"boy assigned\"}', NULL, NULL),
(29, 'delivery_boy_start_message', '{\"status\":1,\"message\":\"start delivery\"}', NULL, NULL),
(30, 'delivery_boy_delivered_message', '{\"status\":1,\"message\":\"boy delivered\"}', NULL, NULL),
(32, 'order_confirmation_msg', '{\"status\":1,\"message\":\"Your order has been confirmed.\"}', NULL, NULL),
(33, 'razor_pay', '{\"status\":\"0\",\"razor_key\":null,\"razor_secret\":null}', '2021-02-14 10:15:12', '2021-07-25 09:32:32'),
(34, 'location_coverage', '{\"status\":1,\"longitude\":\"91.410747\",\"latitude\":\"22.986282\",\"coverage\":\"20\"}', NULL, NULL),
(35, 'minimum_order_value', '50', NULL, NULL),
(36, 'software_mode', 'dev', NULL, NULL),
(37, 'software_version', NULL, NULL, NULL),
(38, 'paystack', '{\"status\":\"0\",\"publicKey\":null,\"secretKey\":null,\"paymentUrl\":\"https:\\/\\/api.paystack.co\",\"merchantEmail\":null}', '2021-04-24 18:40:34', '2021-07-25 09:33:19'),
(39, 'senang_pay', '{\"status\":\"0\",\"secret_key\":null,\"merchant_id\":null}', '2021-04-27 14:02:18', '2021-07-25 09:33:06'),
(40, 'privacy_policy', '<p>rjdrjf</p>', NULL, '2021-05-30 08:52:40'),
(41, 'about_us', '<p><strong>hello</strong></p>', NULL, '2021-05-30 08:44:52'),
(42, 'paystack', '{\"status\":\"0\",\"publicKey\":null,\"secretKey\":null,\"paymentUrl\":\"https:\\/\\/api.paystack.co\",\"merchantEmail\":null}', NULL, '2021-07-25 09:33:19'),
(43, 'currency_symbol_position', 'right', NULL, NULL),
(44, 'country', 'BD', NULL, NULL),
(45, 'language', '[\"en\",\"af\"]', NULL, NULL),
(46, 'time_zone', 'Pacific/Midway', NULL, NULL),
(47, 'phone_verification', '0', NULL, NULL),
(48, 'maintenance_mode', '0', NULL, NULL),
(49, 'twilio_sms', '{\"status\":0,\"sid\":null,\"token\":null,\"from\":null,\"otp_template\":null}', '2021-09-05 09:16:15', '2021-09-05 09:16:15'),
(50, 'nexmo_sms', '{\"status\":0,\"api_key\":null,\"api_secret\":null,\"signature_secret\":\"\",\"private_key\":\"\",\"application_id\":\"\",\"from\":null,\"otp_template\":null}', '2021-09-05 09:16:20', '2021-09-05 09:16:20'),
(51, '2factor_sms', '{\"status\":\"0\",\"api_key\":null}', '2021-09-05 09:16:25', '2021-09-05 09:16:25'),
(52, 'msg91_sms', '{\"status\":0,\"template_id\":null,\"authkey\":null}', '2021-09-05 09:16:30', '2021-09-05 09:16:30'),
(53, 'pagination_limit', '10', NULL, NULL),
(54, 'map_api_key', '', NULL, NULL),
(55, 'delivery_management', '{\"status\":\"0\",\"min_shipping_charge\":0,\"shipping_per_km\":0}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(11) NOT NULL,
  `position` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `position`, `status`, `created_at`, `updated_at`, `image`) VALUES
(1, 'organic', 0, 0, 1, '2022-04-02 02:09:09', '2022-04-02 02:09:09', '2022-04-02-624867156eecc.png'),
(2, 'medicial', 0, 0, 1, '2022-04-02 02:09:56', '2022-04-02 02:09:56', '2022-04-02-62486744edb8a.png');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `min_purchase` decimal(8,2) NOT NULL DEFAULT 0.00,
  `max_discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percentage',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `coupon_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `limit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_rate` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `country`, `currency_code`, `currency_symbol`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', 'USD', '$', '1.00', NULL, NULL),
(2, 'Canadian Dollar', 'CAD', 'CA$', '1.00', NULL, NULL),
(3, 'Euro', 'EUR', '???', '1.00', NULL, NULL),
(4, 'United Arab Emirates Dirham', 'AED', '??.??.???', '1.00', NULL, NULL),
(5, 'Afghan Afghani', 'AFN', '??', '1.00', NULL, NULL),
(6, 'Albanian Lek', 'ALL', 'L', '1.00', NULL, NULL),
(7, 'Armenian Dram', 'AMD', '??', '1.00', NULL, NULL),
(8, 'Argentine Peso', 'ARS', '$', '1.00', NULL, NULL),
(9, 'Australian Dollar', 'AUD', '$', '1.00', NULL, NULL),
(10, 'Azerbaijani Manat', 'AZN', '???', '1.00', NULL, NULL),
(11, 'Bosnia-Herzegovina Convertible Mark', 'BAM', 'KM', '1.00', NULL, NULL),
(12, 'Bangladeshi Taka', 'BDT', '???', '1.00', NULL, NULL),
(13, 'Bulgarian Lev', 'BGN', '????.', '1.00', NULL, NULL),
(14, 'Bahraini Dinar', 'BHD', '??.??.???', '1.00', NULL, NULL),
(15, 'Burundian Franc', 'BIF', 'FBu', '1.00', NULL, NULL),
(16, 'Brunei Dollar', 'BND', 'B$', '1.00', NULL, NULL),
(17, 'Bolivian Boliviano', 'BOB', 'Bs', '1.00', NULL, NULL),
(18, 'Brazilian Real', 'BRL', 'R$', '1.00', NULL, NULL),
(19, 'Botswanan Pula', 'BWP', 'P', '1.00', NULL, NULL),
(20, 'Belarusian Ruble', 'BYN', 'Br', '1.00', NULL, NULL),
(21, 'Belize Dollar', 'BZD', '$', '1.00', NULL, NULL),
(22, 'Congolese Franc', 'CDF', 'FC', '1.00', NULL, NULL),
(23, 'Swiss Franc', 'CHF', 'CHf', '1.00', NULL, NULL),
(24, 'Chilean Peso', 'CLP', '$', '1.00', NULL, NULL),
(25, 'Chinese Yuan', 'CNY', '??', '1.00', NULL, NULL),
(26, 'Colombian Peso', 'COP', '$', '1.00', NULL, NULL),
(27, 'Costa Rican Col??n', 'CRC', '???', '1.00', NULL, NULL),
(28, 'Cape Verdean Escudo', 'CVE', '$', '1.00', NULL, NULL),
(29, 'Czech Republic Koruna', 'CZK', 'K??', '1.00', NULL, NULL),
(30, 'Djiboutian Franc', 'DJF', 'Fdj', '1.00', NULL, NULL),
(31, 'Danish Krone', 'DKK', 'Kr.', '1.00', NULL, NULL),
(32, 'Dominican Peso', 'DOP', 'RD$', '1.00', NULL, NULL),
(33, 'Algerian Dinar', 'DZD', '??.??.???', '1.00', NULL, NULL),
(34, 'Estonian Kroon', 'EEK', 'kr', '1.00', NULL, NULL),
(35, 'Egyptian Pound', 'EGP', 'E?????', '1.00', NULL, NULL),
(36, 'Eritrean Nakfa', 'ERN', 'Nfk', '1.00', NULL, NULL),
(37, 'Ethiopian Birr', 'ETB', 'Br', '1.00', NULL, NULL),
(38, 'British Pound Sterling', 'GBP', '??', '1.00', NULL, NULL),
(39, 'Georgian Lari', 'GEL', 'GEL', '1.00', NULL, NULL),
(40, 'Ghanaian Cedi', 'GHS', 'GH??', '1.00', NULL, NULL),
(41, 'Guinean Franc', 'GNF', 'FG', '1.00', NULL, NULL),
(42, 'Guatemalan Quetzal', 'GTQ', 'Q', '1.00', NULL, NULL),
(43, 'Hong Kong Dollar', 'HKD', 'HK$', '1.00', NULL, NULL),
(44, 'Honduran Lempira', 'HNL', 'L', '1.00', NULL, NULL),
(45, 'Croatian Kuna', 'HRK', 'kn', '1.00', NULL, NULL),
(46, 'Hungarian Forint', 'HUF', 'Ft', '1.00', NULL, NULL),
(47, 'Indonesian Rupiah', 'IDR', 'Rp', '1.00', NULL, NULL),
(48, 'Israeli New Sheqel', 'ILS', '???', '1.00', NULL, NULL),
(49, 'Indian Rupee', 'INR', '???', '1.00', NULL, NULL),
(50, 'Iraqi Dinar', 'IQD', '??.??', '1.00', NULL, NULL),
(51, 'Iranian Rial', 'IRR', '???', '1.00', NULL, NULL),
(52, 'Icelandic Kr??na', 'ISK', 'kr', '1.00', NULL, NULL),
(53, 'Jamaican Dollar', 'JMD', '$', '1.00', NULL, NULL),
(54, 'Jordanian Dinar', 'JOD', '??.?????', '1.00', NULL, NULL),
(55, 'Japanese Yen', 'JPY', '??', '1.00', NULL, NULL),
(56, 'Kenyan Shilling', 'KES', 'Ksh', '1.00', NULL, NULL),
(57, 'Cambodian Riel', 'KHR', '???', '1.00', NULL, NULL),
(58, 'Comorian Franc', 'KMF', 'FC', '1.00', NULL, NULL),
(59, 'South Korean Won', 'KRW', 'CF', '1.00', NULL, NULL),
(60, 'Kuwaiti Dinar', 'KWD', '??.??.???', '1.00', NULL, NULL),
(61, 'Kazakhstani Tenge', 'KZT', '???.', '1.00', NULL, NULL),
(62, 'Lebanese Pound', 'LBP', '??.??.???', '1.00', NULL, NULL),
(63, 'Sri Lankan Rupee', 'LKR', 'Rs', '1.00', NULL, NULL),
(64, 'Lithuanian Litas', 'LTL', 'Lt', '1.00', NULL, NULL),
(65, 'Latvian Lats', 'LVL', 'Ls', '1.00', NULL, NULL),
(66, 'Libyan Dinar', 'LYD', '??.??.???', '1.00', NULL, NULL),
(67, 'Moroccan Dirham', 'MAD', '??.??.???', '1.00', NULL, NULL),
(68, 'Moldovan Leu', 'MDL', 'L', '1.00', NULL, NULL),
(69, 'Malagasy Ariary', 'MGA', 'Ar', '1.00', NULL, NULL),
(70, 'Macedonian Denar', 'MKD', '??????', '1.00', NULL, NULL),
(71, 'Myanma Kyat', 'MMK', 'K', '1.00', NULL, NULL),
(72, 'Macanese Pataca', 'MOP', 'MOP$', '1.00', NULL, NULL),
(73, 'Mauritian Rupee', 'MUR', 'Rs', '1.00', NULL, NULL),
(74, 'Mexican Peso', 'MXN', '$', '1.00', NULL, NULL),
(75, 'Malaysian Ringgit', 'MYR', 'RM', '1.00', NULL, NULL),
(76, 'Mozambican Metical', 'MZN', 'MT', '1.00', NULL, NULL),
(77, 'Namibian Dollar', 'NAD', 'N$', '1.00', NULL, NULL),
(78, 'Nigerian Naira', 'NGN', '???', '1.00', NULL, NULL),
(79, 'Nicaraguan C??rdoba', 'NIO', 'C$', '1.00', NULL, NULL),
(80, 'Norwegian Krone', 'NOK', 'kr', '1.00', NULL, NULL),
(81, 'Nepalese Rupee', 'NPR', 'Re.', '1.00', NULL, NULL),
(82, 'New Zealand Dollar', 'NZD', '$', '1.00', NULL, NULL),
(83, 'Omani Rial', 'OMR', '??.??.???', '1.00', NULL, NULL),
(84, 'Panamanian Balboa', 'PAB', 'B/.', '1.00', NULL, NULL),
(85, 'Peruvian Nuevo Sol', 'PEN', 'S/', '1.00', NULL, NULL),
(86, 'Philippine Peso', 'PHP', '???', '1.00', NULL, NULL),
(87, 'Pakistani Rupee', 'PKR', 'Rs', '1.00', NULL, NULL),
(88, 'Polish Zloty', 'PLN', 'z??', '1.00', NULL, NULL),
(89, 'Paraguayan Guarani', 'PYG', '???', '1.00', NULL, NULL),
(90, 'Qatari Rial', 'QAR', '??.??.???', '1.00', NULL, NULL),
(91, 'Romanian Leu', 'RON', 'lei', '1.00', NULL, NULL),
(92, 'Serbian Dinar', 'RSD', 'din.', '1.00', NULL, NULL),
(93, 'Russian Ruble', 'RUB', '???.', '1.00', NULL, NULL),
(94, 'Rwandan Franc', 'RWF', 'FRw', '1.00', NULL, NULL),
(95, 'Saudi Riyal', 'SAR', '??.??.???', '1.00', NULL, NULL),
(96, 'Sudanese Pound', 'SDG', '??.??.', '1.00', NULL, NULL),
(97, 'Swedish Krona', 'SEK', 'kr', '1.00', NULL, NULL),
(98, 'Singapore Dollar', 'SGD', '$', '1.00', NULL, NULL),
(99, 'Somali Shilling', 'SOS', 'Sh.so.', '1.00', NULL, NULL),
(100, 'Syrian Pound', 'SYP', 'LS???', '1.00', NULL, NULL),
(101, 'Thai Baht', 'THB', '???', '1.00', NULL, NULL),
(102, 'Tunisian Dinar', 'TND', '??.?????', '1.00', NULL, NULL),
(103, 'Tongan Pa??anga', 'TOP', 'T$', '1.00', NULL, NULL),
(104, 'Turkish Lira', 'TRY', '???', '1.00', NULL, NULL),
(105, 'Trinidad and Tobago Dollar', 'TTD', '$', '1.00', NULL, NULL),
(106, 'New Taiwan Dollar', 'TWD', 'NT$', '1.00', NULL, NULL),
(107, 'Tanzanian Shilling', 'TZS', 'TSh', '1.00', NULL, NULL),
(108, 'Ukrainian Hryvnia', 'UAH', '???', '1.00', NULL, NULL),
(109, 'Ugandan Shilling', 'UGX', 'USh', '1.00', NULL, NULL),
(110, 'Uruguayan Peso', 'UYU', '$', '1.00', NULL, NULL),
(111, 'Uzbekistan Som', 'UZS', 'so\'m', '1.00', NULL, NULL),
(112, 'Venezuelan Bol??var', 'VEF', 'Bs.F.', '1.00', NULL, NULL),
(113, 'Vietnamese Dong', 'VND', '???', '1.00', NULL, NULL),
(114, 'CFA Franc BEAC', 'XAF', 'FCFA', '1.00', NULL, NULL),
(115, 'CFA Franc BCEAO', 'XOF', 'CFA', '1.00', NULL, NULL),
(116, 'Yemeni Rial', 'YER', '??????', '1.00', NULL, NULL),
(117, 'South African Rand', 'ZAR', 'R', '1.00', NULL, NULL),
(118, 'Zambian Kwacha', 'ZMK', 'ZK', '1.00', NULL, NULL),
(119, 'Zimbabwean Dollar', 'ZWL', 'Z$', '1.00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `contact_person_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_histories`
--

CREATE TABLE `delivery_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `deliveryman_id` bigint(20) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_men`
--

CREATE TABLE `delivery_men` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_number` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auth_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d_m_reviews`
--

CREATE TABLE `d_m_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_verifications`
--

CREATE TABLE `email_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(23, '2016_06_01_000001_create_oauth_auth_codes_table', 17),
(24, '2016_06_01_000002_create_oauth_access_tokens_table', 17),
(25, '2016_06_01_000003_create_oauth_refresh_tokens_table', 17),
(26, '2016_06_01_000004_create_oauth_clients_table', 17),
(27, '2016_06_01_000005_create_oauth_personal_access_clients_table', 17),
(68, '2021_03_07_065637_change_product_image_clumn_type', 42),
(69, '2021_03_11_061437_add_unit_column_to_products', 43),
(70, '2021_03_11_070016_add_unit_to_order_details', 43),
(71, '2021_04_04_153448_add_column_to_product_table', 44),
(72, '2021_04_05_071507_add_stock_info_in_order_details', 44),
(73, '2021_04_07_145217_update_product_price_column', 45),
(74, '2021_01_10_145134_create_time_slots_table', 46),
(75, '2021_03_22_164017_add_time_slot_id_to_orders_table', 46),
(76, '2021_03_24_154346_add_date_to_orders_table', 46),
(77, '2021_03_24_161320_add_date_to_time_slots_table', 46),
(78, '2021_03_27_100851_add_delivery_date_to_orders_table', 46),
(79, '2021_04_08_093406_add_capacity_to_products', 46),
(80, '2021_04_15_184101_add_delivery_date_and_time_to_order_details', 46),
(81, '2021_04_21_081459_add_stock_to_products', 46),
(82, '2021_04_21_094959_add_stock_info_to_order_details', 46),
(83, '2021_05_03_160034_add_callback_to_order', 47),
(84, '2021_06_17_054551_create_soft_credentials_table', 48),
(85, '2021_07_01_160828_add_col_daily_needs_products', 49),
(86, '2021_07_26_170256_change_price_col_type', 50),
(87, '2021_09_01_133521_create_phone_verifications_table', 51),
(88, '2021_09_01_134803_create_translations_table', 51),
(89, '2021_09_04_082220_rename_email_col', 51),
(90, '2021_10_12_104445_add_temporary_token_to_users_table', 52),
(91, '2021_11_06_113028_add_extra_discount_to_order_table', 53),
(92, '2022_04_10_105204_edits_to_products', 54),
(93, '2022_04_10_110017_edits_to_products_details', 54),
(94, '2022_04_10_111215_edits_to_products_detailss', 54),
(95, '2022_04_11_234905_create_pharmacy_product_table', 55),
(96, '2022_04_12_220733_add_stock_to_products', 55),
(97, '2022_04_12_221129_add_stock_to_pharmacy_product', 55);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('132a574bfe2f8dd8f88f696ca4494f952323f6eb658d1667418bf43f61ab055dcc2d1a890013168e', 23, 3, 'RestaurantCustomerAuth', '[]', 0, '2022-04-10 02:45:45', '2022-04-10 02:45:45', '2023-04-10 04:45:45'),
('3eb111cf82e959f49438cf502e8f9e3fa6fcabb93e9ecb62734001eda8a183816ba3ba9960c0f9cd', 24, 3, 'RestaurantCustomerAuth', '[]', 0, '2022-04-10 02:46:10', '2022-04-10 02:46:10', '2023-04-10 04:46:10'),
('f4a0cc7d50b9342a07371edda378b1e5f34698b939444608a3fa7372a01f91913c9ed01f823a012d', 24, 3, 'RestaurantCustomerAuth', '[]', 0, '2022-04-10 03:12:19', '2022-04-10 03:12:19', '2023-04-10 05:12:19');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'z5ky1aF18fNgAczYo0W2MdglqUxpyt0KsKdmbRIt', NULL, 'http://localhost', 1, 0, 0, '2021-01-05 18:07:29', '2021-01-05 18:07:29'),
(2, NULL, 'Laravel Password Grant Client', 'clk5DEe0ANVDYwD79OUYBkLcZ6CLSykUvULubUuk', 'users', 'http://localhost', 0, 1, 0, '2021-01-05 18:07:29', '2021-01-05 18:07:29'),
(3, NULL, 'Laravel Personal Access Client', 'v89pXMpj0Pv49vFb3vC0uqTZvTRPEGtso4wpvkab', NULL, 'http://localhost', 1, 0, 0, '2021-06-19 03:35:33', '2021-06-19 03:35:33'),
(4, NULL, 'Laravel Password Grant Client', '07Q6Fu6riULXZnYy1yd8lApmsn45TrZZyZKPxW3T', 'users', 'http://localhost', 0, 1, 0, '2021-06-19 03:35:33', '2021-06-19 03:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-01-05 18:07:29', '2021-01-05 18:07:29'),
(2, 3, '2021-06-19 03:35:33', '2021-06-19 03:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `order_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `coupon_discount_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `coupon_discount_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `total_tax_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_reference` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT 0,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `delivery_charge` decimal(8,2) NOT NULL DEFAULT 0.00,
  `order_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'delivery',
  `branch_id` bigint(20) NOT NULL DEFAULT 1,
  `time_slot_id` bigint(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `callback` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_discount` decimal(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_delivery_histories`
--

CREATE TABLE `order_delivery_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `start_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `product_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_on_product` decimal(8,2) DEFAULT NULL,
  `discount_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `quantity` int(11) NOT NULL DEFAULT 1,
  `tax_amount` decimal(8,2) NOT NULL DEFAULT 1.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `variant` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pc',
  `is_stock_decreased` tinyint(1) NOT NULL DEFAULT 1,
  `time_slot_id` bigint(20) DEFAULT NULL,
  `delivery_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email_or_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_product`
--

CREATE TABLE `pharmacy_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `status` tinyint(4) NOT NULL,
  `category_id` int(11) NOT NULL,
  `composition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `indication` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dosage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warnings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_verifications`
--

CREATE TABLE `phone_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `composition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indication` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dosage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warnings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `status`, `created_at`, `updated_at`, `category_id`, `composition`, `indication`, `dosage`, `warnings`, `stock`) VALUES
(1, 'panadol', '<p>adsasca</p>', '[\"2022-04-03-6249f5973bd99.png\"]', 1, 1, '2022-04-03 06:29:27', '2022-04-03 06:34:08', '[{\"id\":\"1\",\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(2, 'Orange', 'Good product', '[\"def.png\"]', 500, 1, NULL, '2022-04-03 06:43:07', '[{\"id\":\"1\",\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(3, 'Corn Flakes', 'Good product', '[\"def.png\"]', 300, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":8,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(4, 'pandol', 'Good product', '[\"def.png\"]', 300, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":8,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(5, ' A SUSPENSORY M', 'Good product', '[\"def.png\"]', 300, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(6, ' A SUSPENSORY XL ', 'Good product', '[\"def.png\"]', 20, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(7, ' A SUSPENSORY XXL', 'Good product', '[\"def.png\"]', 20, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(8, ' B SUSPENSORY L', 'Good product', '[\"def.png\"]', 20, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(9, ' B SUSPENSORY M', 'Good product', '[\"def.png\"]', 27, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(10, ' B SUSPENSORY XL', 'Good product', '[\"def.png\"]', 27, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(11, ' B SUSPENSORY XXL', 'Good product', '[\"def.png\"]', 27, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(12, ' B SUSPENSORY XXXL', 'Good product', '[\"def.png\"]', 27, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(13, ' BAYGON OFFER?????????????? ?????????????? 300 ???? ', 'Good product', '[\"def.png\"]', 27, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(14, ' CEREDERM GEL 15 MG ', 'Good product', '[\"def.png\"]', 70, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(15, ' FOUNDATION 35 ML ', 'Good product', '[\"def.png\"]', 330, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(16, ' KINESIOLOGY TAP ', 'Good product', '[\"def.png\"]', 55, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(17, ' LEIL SKIN FIRMING CREAM ', 'Good product', '[\"def.png\"]', 80, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(18, ' Stomigas 10 Pac * 8 gm', 'Good product', '[\"def.png\"]', 63, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(19, ' ?????? ?????????? ???????? ???????? ', 'Good product', '[\"def.png\"]', 45, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(20, '%???????????? 500?????? 20 ?????? 20', 'Good product', '[\"def.png\"]', 3, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(21, '%????????%??????', 'Good product', '[\"def.png\"]', 10, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(22, '*212 SEXY ?????????? 100 ????', 'Good product', '[\"def.png\"]', 1.25, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(23, '*ADIDAS ENERGY ?????????? 100????', 'Good product', '[\"def.png\"]', 560, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(24, '*ALTA DOWNHILL ?????????? 100 ????', 'Good product', '[\"def.png\"]', 125, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(25, '*ARSENAL ?????????? 100????', 'Good product', '[\"def.png\"]', 115, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(26, '*ATRIUM ?????????? 100 ????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(27, '*AZZARO CHROME ?????????? 100 ????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(28, '*AZZARO VISIT ?????????? 100 ????', 'Good product', '[\"def.png\"]', 290, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(29, '*BLACK  ?????????? 100????', 'Good product', '[\"def.png\"]', 405, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(30, '*BLACK KAREN ?????????? 100 ????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(31, '*BLACK PURE ?????????? 100????', 'Good product', '[\"def.png\"]', 75, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(32, '*BLACK XS ?????????? 100 ????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(33, '*BLACK XS ?????????? 100????', 'Good product', '[\"def.png\"]', 536, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(34, '*BOD ???????? ?????????? 236 ????', 'Good product', '[\"def.png\"]', 45, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(35, '*BOD ???????? ?????????? 236 ????', 'Good product', '[\"def.png\"]', 85, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(36, '*BOD ?????????? ?????????? 236 ????', 'Good product', '[\"def.png\"]', 85, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(37, '*BURBERRY ?????????? 100????', 'Good product', '[\"def.png\"]', 85, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(38, '*CHAIRMAN ??????????100????', 'Good product', '[\"def.png\"]', 605, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(39, '*CIGAR SELECTION ?????????? 100 ????', 'Good product', '[\"def.png\"]', 88, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(40, '*CLUB WATER START??????????100????', 'Good product', '[\"def.png\"]', 185, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(41, '*CLUB ?????????? 100 ????', 'Good product', '[\"def.png\"]', 165, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(42, '*CODE37 ?????????? 100 ????', 'Good product', '[\"def.png\"]', 170, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(43, '*COOL BLUE ?????????? 100 ????', 'Good product', '[\"def.png\"]', 115, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(44, '*CRYSTO ??????????100????', 'Good product', '[\"def.png\"]', 55, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(45, '*DAVIDOFF HOT ?????????? 110 ????', 'Good product', '[\"def.png\"]', 60, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(46, '*DAVIDOFF SILVER ?????????? 100????', 'Good product', '[\"def.png\"]', 470, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(47, '*DRAKAAR NOIR ?????????? 100 ????', 'Good product', '[\"def.png\"]', 410, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(48, '*DUNHILL FRESH ?????????? 100????', 'Good product', '[\"def.png\"]', 37, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(49, '*DUNHILL LONDON ?????????? 100????', 'Good product', '[\"def.png\"]', 410, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(50, '*DUNHILL ?????????? 100????', 'Good product', '[\"def.png\"]', 470, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(51, '*FLOWERS DEEP ?????????? 100????', 'Good product', '[\"def.png\"]', 490, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(52, '*FULAH ?????????? 15 ????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(53, '*FULAH ?????????? 50 ????', 'Good product', '[\"def.png\"]', 50, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(54, '*FULAH ???????? 50 ????', 'Good product', '[\"def.png\"]', 35.5, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(55, '*GALICE GOLD ?????????? 100????', 'Good product', '[\"def.png\"]', 47, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(56, '*GLENN PERRI ?????????? 100 ????', 'Good product', '[\"def.png\"]', 90, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(57, '*HIGH INTENSE ?????????? 100????', 'Good product', '[\"def.png\"]', 120, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(58, '*HIGH INTENSE ?????????? 100????', 'Good product', '[\"def.png\"]', 79, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(59, '*HOGO GREEN ?????????? 100 ????', 'Good product', '[\"def.png\"]', 79, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(60, '*HOGO RED ?????????? 100 ????', 'Good product', '[\"def.png\"]', 35, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(61, '*HOGO ?????????? 100 ????', 'Good product', '[\"def.png\"]', 25, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(62, '*HUGO DARK BLUE ?????????? 125 ????', 'Good product', '[\"def.png\"]', 37, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(63, '*IN BLACK ?????????? 100 ????', 'Good product', '[\"def.png\"]', 35, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(64, '*INCIDENCE  ?????????? 100????', 'Good product', '[\"def.png\"]', 90, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(65, '*INVINCIBLE ?????????? 95 ????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(66, '*JACOMO ?????????? 100 ????', 'Good product', '[\"def.png\"]', 160, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(67, '*JACOMO ?????????? 100????', 'Good product', '[\"def.png\"]', 325, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(68, '*JADORA ??????????100????', 'Good product', '[\"def.png\"]', 255, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(69, '*JADOURE  ?????????? 100????', 'Good product', '[\"def.png\"]', 35, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(70, '*JAGUAR RED ?????????? 100????', 'Good product', '[\"def.png\"]', 25, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(71, '*JAGUAR ?????????? 100 ????', 'Good product', '[\"def.png\"]', 425, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(72, '*JOHAN.B ELEGANT ?????????? 100 ????', 'Good product', '[\"def.png\"]', 38, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(73, '*JOHAN.B ?????????? 100????', 'Good product', '[\"def.png\"]', 160, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(74, '*JOHAN.B ??????????100 ????', 'Good product', '[\"def.png\"]', 140, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(75, '*JOLI REVE ?????????? 100????', 'Good product', '[\"def.png\"]', 150, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(76, '*KAREN ??????????100 ????', 'Good product', '[\"def.png\"]', 109, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(77, '*KARINA H  ?????????? 85????', 'Good product', '[\"def.png\"]', 110, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(78, '*LADY GOLD ?????????? 100????', 'Good product', '[\"def.png\"]', 60, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(79, '*LIVELY ?????????? 100 ????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(80, '*LORIENTAL ?????????? 100 ????', 'Good product', '[\"def.png\"]', 97, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(81, '*MELLE ELSATYS ?????????? 100????', 'Good product', '[\"def.png\"]', 140, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(82, '*MISS GEN ?????????? 100????', 'Good product', '[\"def.png\"]', 135, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(83, '*MONSIEUR ?????????? 100 ????', 'Good product', '[\"def.png\"]', 165, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(84, '*NINA RICCI ?????????? 100????', 'Good product', '[\"def.png\"]', 135, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(85, '*NINA RICCI ?????????? 50????', 'Good product', '[\"def.png\"]', 60, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(86, '*ONE MAN SHOW RUBY ?????????? 100????', 'Good product', '[\"def.png\"]', 40, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(87, '*ONE MAN SHOW ?????????? 100 ????', 'Good product', '[\"def.png\"]', 135, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(88, '*ONE MILLION PACO ?????????? 50 ????', 'Good product', '[\"def.png\"]', 110, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(89, '*ONE MILLION ?????????? 100 ????', 'Good product', '[\"def.png\"]', 330, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(90, '*OPEN ROGER ?????????? 100????', 'Good product', '[\"def.png\"]', 585, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(91, '*OPEN ?????????? 100 ????', 'Good product', '[\"def.png\"]', 256, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(92, '*ORGANZ ?????????? 100????', 'Good product', '[\"def.png\"]', 37, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(93, '*OXYGENE ?????????? 100 ????', 'Good product', '[\"def.png\"]', 38, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(94, '*PARADISE BEACH  PARFUM ?????????? 100????', 'Good product', '[\"def.png\"]', 265, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(95, '*PARADISE ?????????? 100????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(96, '*PASSION ?????????? 100????', 'Good product', '[\"def.png\"]', 46, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(97, '*PINK  ?????????? 100????', 'Good product', '[\"def.png\"]', 85, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(98, '*PURE BLANC ?????????? 100 ????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(99, '*PURE GLASS ??????????100 ????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(100, '*PURPLE LIGHT ?????????? 100????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(101, '*RIRI  PARFUM ?????????? 100????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(102, '*ROSE VALLEY ?????????? 100????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(103, '*S.T DUPONT ?????????? 100 ????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(104, '*SAPIL CHICHI  ?????????? 100????', 'Good product', '[\"def.png\"]', 430, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(105, '*SCOOP ?????????? 100 ????', 'Good product', '[\"def.png\"]', 85, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(106, '*SEN SUAL ?????????? 80????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(107, '*SHAMN FASHION ?????????? 50????', 'Good product', '[\"def.png\"]', 150, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(108, '*SICAR ?????????? 100 ????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(109, '*SILVER SCENT ?????????? 100 ????', 'Good product', '[\"def.png\"]', 24.75, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(110, '*SOLOVE ?????????? 50????', 'Good product', '[\"def.png\"]', 330, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(111, '*STAR IN BLACK ?????????? 100 ????', 'Good product', '[\"def.png\"]', 109, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(112, '*STAR LIGHT ?????????? 100????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(113, '*SWEET EMOTION ??????????100 ????', 'Good product', '[\"def.png\"]', 140, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(114, '*SWEET SENSATION ??????????100 ????', 'Good product', '[\"def.png\"]', 120, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(115, '*TEE N ILUSION  ?????????? 85????', 'Good product', '[\"def.png\"]', 110, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(116, '*TEEN FANTASY?????????? 50????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(117, '*TELL ME  PARFUM ?????????? 100????', 'Good product', '[\"def.png\"]', 50, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(118, '*TENDER MIST  ?????????? 100??', 'Good product', '[\"def.png\"]', 135, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(119, '*TRIBE ?????????? 100????', 'Good product', '[\"def.png\"]', 105, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(120, '*UDAIPUR  ?????????? 100????', 'Good product', '[\"def.png\"]', 140, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(121, '*UNFORGETTABLE ??????????100 ????', 'Good product', '[\"def.png\"]', 75, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(122, '*UNLIMITED ?????????? 100????', 'Good product', '[\"def.png\"]', 140, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(123, '*V.I.P CLUB ?????????? 100????', 'Good product', '[\"def.png\"]', 80, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(124, '*XL ?????????? 100 ????', 'Good product', '[\"def.png\"]', 135, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(125, '+ ???????? ???????? ?????????? ???? ?????????? ??????????????  18??????', 'Good product', '[\"def.png\"]', 51, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(126, '.', 'Good product', '[\"def.png\"]', 22, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(127, '. ???????? ?????? 10 ????', 'Good product', '[\"def.png\"]', 1900, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(128, '.lakme k therapy repair gel', 'Good product', '[\"def.png\"]', 1.75, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(129, '///CENTRUM SILVER 100TAB///', 'Good product', '[\"def.png\"]', 305, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(130, '///CENTRUM SILVER 30 TAB IMP///', 'Good product', '[\"def.png\"]', 550, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(131, '///COLCHICINE  1 GM 20 TAB IMP///', 'Good product', '[\"def.png\"]', 250, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(132, '///NATROL OMEGA 3-6-9 COMPLEX 60 CAP///', 'Good product', '[\"def.png\"]', 350, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(133, '///PANADOL 500MG 24TAB///', 'Good product', '[\"def.png\"]', 450, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(134, '///PANADOL COLD AND FLU ALL IN ONE ///', 'Good product', '[\"def.png\"]', 150, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(135, '///PANADOL EXTRA 24 TAB IMP saudi///', 'Good product', '[\"def.png\"]', 150, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(136, '0.25', 'Good product', '[\"def.png\"]', 140, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(137, '0.3', 'Good product', '[\"def.png\"]', 52, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(138, '0.4', 'Good product', '[\"def.png\"]', 18, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(139, '0.5', 'Good product', '[\"def.png\"]', 10, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(140, '0.6', 'Good product', '[\"def.png\"]', 33.6, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(141, '0.7', 'Good product', '[\"def.png\"]', 36, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(142, '0.9', 'Good product', '[\"def.png\"]', 8, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(143, '1,2,3SYRUP ', 'Good product', '[\"def.png\"]', 225, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(144, '1.50 G VIL', 'Good product', '[\"def.png\"]', 10.5, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(145, '10% ONE HAIR REMOVAL CREAM W/HONEY 140 GM', 'Good product', '[\"def.png\"]', 58.8, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(146, '1000CC BY CHEVIGNON E.D.T 100 ML', 'Good product', '[\"def.png\"]', 24, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(147, '150 mlCharmalure hair cream', 'Good product', '[\"def.png\"]', 90, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(148, '1G 1 VIAL', 'Good product', '[\"def.png\"]', 75, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(149, '2 PCS Hemani 250ml natural 100% snake oil for Hair Care', 'Good product', '[\"def.png\"]', 800, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(150, '2-10 SKIN SCISSORS B', 'Good product', '[\"def.png\"]', 1, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(151, '208 KRISTAZ BRUSH', 'Good product', '[\"def.png\"]', 38.9, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(152, '212 E.D.T MEN 100 ML', 'Good product', '[\"def.png\"]', 19.25, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(153, '212 GLAM PERFUM 60 ML', 'Good product', '[\"def.png\"]', 330, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(154, '212 MEN HERRERA 100ML SPR', 'Good product', '[\"def.png\"]', 568, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(155, '212 MEN SUMMER 100 ML', 'Good product', '[\"def.png\"]', 568, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(156, '212 SEXY F/W 100 ML', 'Good product', '[\"def.png\"]', 618, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(157, '212 SEXY PERFUM 60 ML', 'Good product', '[\"def.png\"]', 694, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(158, '212 VIP  80 ML', 'Good product', '[\"def.png\"]', 35, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(159, '212 VIP 80 ML', 'Good product', '[\"def.png\"]', 76, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(160, '212 VIP CLUB EDITION 80 ML', 'Good product', '[\"def.png\"]', 625, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(161, '212 VIP MEN CLUB EDITION 100 ML', 'Good product', '[\"def.png\"]', 745, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(162, '212 VIP PERFUME 80 ML', 'Good product', '[\"def.png\"]', 684, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(163, '212 VIP ROSE ARE YOU ON THE LIST NYC EAU DE PARFUM', 'Good product', '[\"def.png\"]', 76, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(164, '25-2 NAIL FILE WITHOUT HANDLE B', 'Good product', '[\"def.png\"]', 675, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(165, '250 ML?????? ?????????? ?????? ??????????', 'Good product', '[\"def.png\"]', 9, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(166, '2GO FIBER GEL MEGA HOLD 250  ML', 'Good product', '[\"def.png\"]', 30, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(167, '2GO FIBER GEL WET LOOK 150 ML', 'Good product', '[\"def.png\"]', 12.5, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(168, '2GO FIBER GEL WET LOOK 175 ML', 'Good product', '[\"def.png\"]', 10, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(169, '2GO FIBER GEL WET LOOK 250  ML', 'Good product', '[\"def.png\"]', 12, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(170, '2GO FIBER GEL WET LOOK 80 ML', 'Good product', '[\"def.png\"]', 12.5, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(171, '2GO GEL 360 ML ??????', 'Good product', '[\"def.png\"]', 6.5, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(172, '2GO GEL CREAM  150 ML', 'Good product', '[\"def.png\"]', 16, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(173, '2GO GEL CREAM ULTIMATE HOLD 150 ML', 'Good product', '[\"def.png\"]', 8.5, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(174, '2GO GEL _ofeer', 'Good product', '[\"def.png\"]', 10, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(175, '2GO HAIR CREAM ADVANCED STYLING 175 ML', 'Good product', '[\"def.png\"]', 10, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(176, '2GO HAIR CREAM ADVANCED STYLING 80 ML', 'Good product', '[\"def.png\"]', 10, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(177, '2GO MEGA HOLD  GREEN 100 ML', 'Good product', '[\"def.png\"]', 5.5, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(178, '2GO MEGA HOLD  GREEN 180 ML', 'Good product', '[\"def.png\"]', 6, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(179, '2GO WET LOOK  BLUE 180 ML', 'Good product', '[\"def.png\"]', 8.75, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(180, '2GO WET LOOK EXTRA FIXATION  BLUE 100 ML', 'Good product', '[\"def.png\"]', 8.75, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(181, '2?????????? ?????? ????????????????', 'Good product', '[\"def.png\"]', 6, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(182, '3 FIVES COLOGNE SPRAY 260 ML', 'Good product', '[\"def.png\"]', 15, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(183, '3 FIVES ORIGINAL COLOGNE 260 ML', 'Good product', '[\"def.png\"]', 38, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(184, '3 HEARTS TOY CODE 7732', 'Good product', '[\"def.png\"]', 38, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(185, '3 TM NEBULIZER FAMILY', 'Good product', '[\"def.png\"]', 7, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(186, '3 XL FOUNDATION VITAMIN E', 'Good product', '[\"def.png\"]', 360, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(187, '3-10 SKIN SCISSORS B', 'Good product', '[\"def.png\"]', 45, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(188, '3-EFFECT ORAL-B', 'Good product', '[\"def.png\"]', 29.4, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(189, '3-WAY', 'Good product', '[\"def.png\"]', 21, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(190, '3-WAY EXTENSION TUBE', 'Good product', '[\"def.png\"]', 7, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(191, '3.6 KNEE SUPPORT', 'Good product', '[\"def.png\"]', 10, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(192, '30755 FOLDED WALKER P', 'Good product', '[\"def.png\"]', 28, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(193, '37-12 SKIN SCRAPPER B', 'Good product', '[\"def.png\"]', 340, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(194, '3M ACTIVE STRIPS ASSORTED', 'Good product', '[\"def.png\"]', 24.3, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(195, '3M ACTIVE STRIPS COLORED', 'Good product', '[\"def.png\"]', 14, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(196, '3M ADHESIVE ADULT SKIN PULL', 'Good product', '[\"def.png\"]', 14, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(197, '3M ADULT SKIN PULL', 'Good product', '[\"def.png\"]', 30, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(198, '3M CHILD ADHESIVE SKIN PULL', 'Good product', '[\"def.png\"]', 25, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(199, '3M CHILD NON ADHESIVE SKIN PULL', 'Good product', '[\"def.png\"]', 21.5, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(200, '3M EYE PATCH CHILD OPTICLUDE', 'Good product', '[\"def.png\"]', 21.5, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(201, '3M_???????? ??????????', 'Good product', '[\"def.png\"]', 34, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(202, '3NS TEX COLOR BLACK', 'Good product', '[\"def.png\"]', 2.5, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(203, '3XL COVERING  REMOVING', 'Good product', '[\"def.png\"]', 100, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(204, ' A SUSPENSORY M', 'Good product', '[\"def.png\"]', 300, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(205, ' A SUSPENSORY XL ', 'Good product', '[\"def.png\"]', 20, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(206, ' A SUSPENSORY XXL', 'Good product', '[\"def.png\"]', 20, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(207, ' B SUSPENSORY L', 'Good product', '[\"def.png\"]', 20, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(208, ' B SUSPENSORY M', 'Good product', '[\"def.png\"]', 27, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(209, ' B SUSPENSORY XL', 'Good product', '[\"def.png\"]', 27, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(210, ' B SUSPENSORY XXL', 'Good product', '[\"def.png\"]', 27, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(211, ' B SUSPENSORY XXXL', 'Good product', '[\"def.png\"]', 27, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(212, ' BAYGON OFFER?????????????? ?????????????? 300 ???? ', 'Good product', '[\"def.png\"]', 27, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(213, ' CEREDERM GEL 15 MG ', 'Good product', '[\"def.png\"]', 70, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(214, ' FOUNDATION 35 ML ', 'Good product', '[\"def.png\"]', 330, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(215, ' KINESIOLOGY TAP ', 'Good product', '[\"def.png\"]', 55, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(216, ' LEIL SKIN FIRMING CREAM ', 'Good product', '[\"def.png\"]', 80, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(217, ' Stomigas 10 Pac * 8 gm', 'Good product', '[\"def.png\"]', 63, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(218, ' ?????? ?????????? ???????? ???????? ', 'Good product', '[\"def.png\"]', 45, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(219, '%???????????? 500?????? 20 ?????? 20', 'Good product', '[\"def.png\"]', 3, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(220, '%????????%??????', 'Good product', '[\"def.png\"]', 10, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(221, '*212 SEXY ?????????? 100 ????', 'Good product', '[\"def.png\"]', 1.25, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(222, '*ADIDAS ENERGY ?????????? 100????', 'Good product', '[\"def.png\"]', 560, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(223, '*ALTA DOWNHILL ?????????? 100 ????', 'Good product', '[\"def.png\"]', 125, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(224, '*ARSENAL ?????????? 100????', 'Good product', '[\"def.png\"]', 115, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(225, '*ATRIUM ?????????? 100 ????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(226, '*AZZARO CHROME ?????????? 100 ????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(227, '*AZZARO VISIT ?????????? 100 ????', 'Good product', '[\"def.png\"]', 290, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(228, '*BLACK  ?????????? 100????', 'Good product', '[\"def.png\"]', 405, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(229, '*BLACK KAREN ?????????? 100 ????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(230, '*BLACK PURE ?????????? 100????', 'Good product', '[\"def.png\"]', 75, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(231, '*BLACK XS ?????????? 100 ????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(232, '*BLACK XS ?????????? 100????', 'Good product', '[\"def.png\"]', 536, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(233, '*BOD ???????? ?????????? 236 ????', 'Good product', '[\"def.png\"]', 45, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(234, '*BOD ???????? ?????????? 236 ????', 'Good product', '[\"def.png\"]', 85, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(235, '*BOD ?????????? ?????????? 236 ????', 'Good product', '[\"def.png\"]', 85, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(236, '*BURBERRY ?????????? 100????', 'Good product', '[\"def.png\"]', 85, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(237, '*CHAIRMAN ??????????100????', 'Good product', '[\"def.png\"]', 605, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(238, '*CIGAR SELECTION ?????????? 100 ????', 'Good product', '[\"def.png\"]', 88, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(239, '*CLUB WATER START??????????100????', 'Good product', '[\"def.png\"]', 185, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(240, '*CLUB ?????????? 100 ????', 'Good product', '[\"def.png\"]', 165, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(241, '*CODE37 ?????????? 100 ????', 'Good product', '[\"def.png\"]', 170, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(242, '*COOL BLUE ?????????? 100 ????', 'Good product', '[\"def.png\"]', 115, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(243, '*CRYSTO ??????????100????', 'Good product', '[\"def.png\"]', 55, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(244, '*DAVIDOFF HOT ?????????? 110 ????', 'Good product', '[\"def.png\"]', 60, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(245, '*DAVIDOFF SILVER ?????????? 100????', 'Good product', '[\"def.png\"]', 470, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(246, '*DRAKAAR NOIR ?????????? 100 ????', 'Good product', '[\"def.png\"]', 410, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(247, '*DUNHILL FRESH ?????????? 100????', 'Good product', '[\"def.png\"]', 37, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(248, '*DUNHILL LONDON ?????????? 100????', 'Good product', '[\"def.png\"]', 410, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(249, '*DUNHILL ?????????? 100????', 'Good product', '[\"def.png\"]', 470, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(250, '*FLOWERS DEEP ?????????? 100????', 'Good product', '[\"def.png\"]', 490, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(251, '*FULAH ?????????? 15 ????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(252, '*FULAH ?????????? 50 ????', 'Good product', '[\"def.png\"]', 50, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(253, '*FULAH ???????? 50 ????', 'Good product', '[\"def.png\"]', 35.5, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(254, '*GALICE GOLD ?????????? 100????', 'Good product', '[\"def.png\"]', 47, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(255, '*GLENN PERRI ?????????? 100 ????', 'Good product', '[\"def.png\"]', 90, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(256, '*HIGH INTENSE ?????????? 100????', 'Good product', '[\"def.png\"]', 120, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(257, '*HIGH INTENSE ?????????? 100????', 'Good product', '[\"def.png\"]', 79, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(258, '*HOGO GREEN ?????????? 100 ????', 'Good product', '[\"def.png\"]', 79, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(259, '*HOGO RED ?????????? 100 ????', 'Good product', '[\"def.png\"]', 35, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(260, '*HOGO ?????????? 100 ????', 'Good product', '[\"def.png\"]', 25, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(261, '*HUGO DARK BLUE ?????????? 125 ????', 'Good product', '[\"def.png\"]', 37, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(262, '*IN BLACK ?????????? 100 ????', 'Good product', '[\"def.png\"]', 35, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(263, '*INCIDENCE  ?????????? 100????', 'Good product', '[\"def.png\"]', 90, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(264, '*INVINCIBLE ?????????? 95 ????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(265, '*JACOMO ?????????? 100 ????', 'Good product', '[\"def.png\"]', 160, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(266, '*JACOMO ?????????? 100????', 'Good product', '[\"def.png\"]', 325, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(267, '*JADORA ??????????100????', 'Good product', '[\"def.png\"]', 255, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(268, '*JADOURE  ?????????? 100????', 'Good product', '[\"def.png\"]', 35, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(269, '*JAGUAR RED ?????????? 100????', 'Good product', '[\"def.png\"]', 25, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(270, '*JAGUAR ?????????? 100 ????', 'Good product', '[\"def.png\"]', 425, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(271, '*JOHAN.B ELEGANT ?????????? 100 ????', 'Good product', '[\"def.png\"]', 38, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(272, '*JOHAN.B ?????????? 100????', 'Good product', '[\"def.png\"]', 160, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(273, '*JOHAN.B ??????????100 ????', 'Good product', '[\"def.png\"]', 140, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(274, '*JOLI REVE ?????????? 100????', 'Good product', '[\"def.png\"]', 150, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(275, '*KAREN ??????????100 ????', 'Good product', '[\"def.png\"]', 109, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(276, '*KARINA H  ?????????? 85????', 'Good product', '[\"def.png\"]', 110, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(277, '*LADY GOLD ?????????? 100????', 'Good product', '[\"def.png\"]', 60, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(278, '*LIVELY ?????????? 100 ????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(279, '*LORIENTAL ?????????? 100 ????', 'Good product', '[\"def.png\"]', 97, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(280, '*MELLE ELSATYS ?????????? 100????', 'Good product', '[\"def.png\"]', 140, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(281, '*MISS GEN ?????????? 100????', 'Good product', '[\"def.png\"]', 135, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(282, '*MONSIEUR ?????????? 100 ????', 'Good product', '[\"def.png\"]', 165, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(283, '*NINA RICCI ?????????? 100????', 'Good product', '[\"def.png\"]', 135, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(284, '*NINA RICCI ?????????? 50????', 'Good product', '[\"def.png\"]', 60, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(285, '*ONE MAN SHOW RUBY ?????????? 100????', 'Good product', '[\"def.png\"]', 40, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(286, '*ONE MAN SHOW ?????????? 100 ????', 'Good product', '[\"def.png\"]', 135, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(287, '*ONE MILLION PACO ?????????? 50 ????', 'Good product', '[\"def.png\"]', 110, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(288, '*ONE MILLION ?????????? 100 ????', 'Good product', '[\"def.png\"]', 330, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(289, '*OPEN ROGER ?????????? 100????', 'Good product', '[\"def.png\"]', 585, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(290, '*OPEN ?????????? 100 ????', 'Good product', '[\"def.png\"]', 256, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(291, '*ORGANZ ?????????? 100????', 'Good product', '[\"def.png\"]', 37, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(292, '*OXYGENE ?????????? 100 ????', 'Good product', '[\"def.png\"]', 38, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(293, '*PARADISE BEACH  PARFUM ?????????? 100????', 'Good product', '[\"def.png\"]', 265, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(294, '*PARADISE ?????????? 100????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(295, '*PASSION ?????????? 100????', 'Good product', '[\"def.png\"]', 46, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(296, '*PINK  ?????????? 100????', 'Good product', '[\"def.png\"]', 85, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(297, '*PURE BLANC ?????????? 100 ????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0);
INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `status`, `created_at`, `updated_at`, `category_id`, `composition`, `indication`, `dosage`, `warnings`, `stock`) VALUES
(298, '*PURE GLASS ??????????100 ????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(299, '*PURPLE LIGHT ?????????? 100????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(300, '*RIRI  PARFUM ?????????? 100????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(301, '*ROSE VALLEY ?????????? 100????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(302, '*S.T DUPONT ?????????? 100 ????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(303, '*SAPIL CHICHI  ?????????? 100????', 'Good product', '[\"def.png\"]', 430, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(304, '*SCOOP ?????????? 100 ????', 'Good product', '[\"def.png\"]', 85, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(305, '*SEN SUAL ?????????? 80????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(306, '*SHAMN FASHION ?????????? 50????', 'Good product', '[\"def.png\"]', 150, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(307, '*SICAR ?????????? 100 ????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(308, '*SILVER SCENT ?????????? 100 ????', 'Good product', '[\"def.png\"]', 24.75, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(309, '*SOLOVE ?????????? 50????', 'Good product', '[\"def.png\"]', 330, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(310, '*STAR IN BLACK ?????????? 100 ????', 'Good product', '[\"def.png\"]', 109, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(311, '*STAR LIGHT ?????????? 100????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(312, '*SWEET EMOTION ??????????100 ????', 'Good product', '[\"def.png\"]', 140, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(313, '*SWEET SENSATION ??????????100 ????', 'Good product', '[\"def.png\"]', 120, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(314, '*TEE N ILUSION  ?????????? 85????', 'Good product', '[\"def.png\"]', 110, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(315, '*TEEN FANTASY?????????? 50????', 'Good product', '[\"def.png\"]', 95, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(316, '*TELL ME  PARFUM ?????????? 100????', 'Good product', '[\"def.png\"]', 50, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(317, '*TENDER MIST  ?????????? 100??', 'Good product', '[\"def.png\"]', 135, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(318, '*TRIBE ?????????? 100????', 'Good product', '[\"def.png\"]', 105, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(319, '*UDAIPUR  ?????????? 100????', 'Good product', '[\"def.png\"]', 140, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(320, '*UNFORGETTABLE ??????????100 ????', 'Good product', '[\"def.png\"]', 75, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(321, '*UNLIMITED ?????????? 100????', 'Good product', '[\"def.png\"]', 140, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(322, '*V.I.P CLUB ?????????? 100????', 'Good product', '[\"def.png\"]', 80, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(323, '*XL ?????????? 100 ????', 'Good product', '[\"def.png\"]', 135, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(324, '+ ???????? ???????? ?????????? ???? ?????????? ??????????????  18??????', 'Good product', '[\"def.png\"]', 51, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(325, '.', 'Good product', '[\"def.png\"]', 22, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(326, '. ???????? ?????? 10 ????', 'Good product', '[\"def.png\"]', 1900, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(327, '.lakme k therapy repair gel', 'Good product', '[\"def.png\"]', 1.75, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(328, '///CENTRUM SILVER 100TAB///', 'Good product', '[\"def.png\"]', 305, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(329, '///CENTRUM SILVER 30 TAB IMP///', 'Good product', '[\"def.png\"]', 550, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(330, '///COLCHICINE  1 GM 20 TAB IMP///', 'Good product', '[\"def.png\"]', 250, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(331, '///NATROL OMEGA 3-6-9 COMPLEX 60 CAP///', 'Good product', '[\"def.png\"]', 350, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(332, '///PANADOL 500MG 24TAB///', 'Good product', '[\"def.png\"]', 450, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(333, '///PANADOL COLD AND FLU ALL IN ONE ///', 'Good product', '[\"def.png\"]', 150, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(334, '///PANADOL EXTRA 24 TAB IMP saudi///', 'Good product', '[\"def.png\"]', 150, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(335, '0.25', 'Good product', '[\"def.png\"]', 140, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(336, '0.3', 'Good product', '[\"def.png\"]', 52, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(337, '0.4', 'Good product', '[\"def.png\"]', 18, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(338, '0.5', 'Good product', '[\"def.png\"]', 10, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(339, '0.6', 'Good product', '[\"def.png\"]', 33.6, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(340, '0.7', 'Good product', '[\"def.png\"]', 36, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(341, '0.9', 'Good product', '[\"def.png\"]', 8, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(342, '1,2,3SYRUP ', 'Good product', '[\"def.png\"]', 225, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(343, '1.50 G VIL', 'Good product', '[\"def.png\"]', 10.5, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(344, '10% ONE HAIR REMOVAL CREAM W/HONEY 140 GM', 'Good product', '[\"def.png\"]', 58.8, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(345, '1000CC BY CHEVIGNON E.D.T 100 ML', 'Good product', '[\"def.png\"]', 24, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(346, '150 mlCharmalure hair cream', 'Good product', '[\"def.png\"]', 90, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(347, '1G 1 VIAL', 'Good product', '[\"def.png\"]', 75, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(348, '2 PCS Hemani 250ml natural 100% snake oil for Hair Care', 'Good product', '[\"def.png\"]', 800, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(349, '2-10 SKIN SCISSORS B', 'Good product', '[\"def.png\"]', 1, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(350, '208 KRISTAZ BRUSH', 'Good product', '[\"def.png\"]', 38.9, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(351, '212 E.D.T MEN 100 ML', 'Good product', '[\"def.png\"]', 19.25, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(352, '212 GLAM PERFUM 60 ML', 'Good product', '[\"def.png\"]', 330, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(353, '212 MEN HERRERA 100ML SPR', 'Good product', '[\"def.png\"]', 568, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(354, '212 MEN SUMMER 100 ML', 'Good product', '[\"def.png\"]', 568, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(355, '212 SEXY F/W 100 ML', 'Good product', '[\"def.png\"]', 618, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(356, '212 SEXY PERFUM 60 ML', 'Good product', '[\"def.png\"]', 694, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(357, '212 VIP  80 ML', 'Good product', '[\"def.png\"]', 35, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(358, '212 VIP 80 ML', 'Good product', '[\"def.png\"]', 76, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(359, '212 VIP CLUB EDITION 80 ML', 'Good product', '[\"def.png\"]', 625, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(360, '212 VIP MEN CLUB EDITION 100 ML', 'Good product', '[\"def.png\"]', 745, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(361, '212 VIP PERFUME 80 ML', 'Good product', '[\"def.png\"]', 684, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(362, '212 VIP ROSE ARE YOU ON THE LIST NYC EAU DE PARFUM', 'Good product', '[\"def.png\"]', 76, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(363, '25-2 NAIL FILE WITHOUT HANDLE B', 'Good product', '[\"def.png\"]', 675, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(364, '250 ML?????? ?????????? ?????? ??????????', 'Good product', '[\"def.png\"]', 9, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(365, '2GO FIBER GEL MEGA HOLD 250  ML', 'Good product', '[\"def.png\"]', 30, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(366, '2GO FIBER GEL WET LOOK 150 ML', 'Good product', '[\"def.png\"]', 12.5, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(367, '2GO FIBER GEL WET LOOK 175 ML', 'Good product', '[\"def.png\"]', 10, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(368, '2GO FIBER GEL WET LOOK 250  ML', 'Good product', '[\"def.png\"]', 12, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(369, '2GO FIBER GEL WET LOOK 80 ML', 'Good product', '[\"def.png\"]', 12.5, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(370, '2GO GEL 360 ML ??????', 'Good product', '[\"def.png\"]', 6.5, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(371, '2GO GEL CREAM  150 ML', 'Good product', '[\"def.png\"]', 16, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(372, '2GO GEL CREAM ULTIMATE HOLD 150 ML', 'Good product', '[\"def.png\"]', 8.5, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(373, '2GO GEL _ofeer', 'Good product', '[\"def.png\"]', 10, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(374, '2GO HAIR CREAM ADVANCED STYLING 175 ML', 'Good product', '[\"def.png\"]', 10, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(375, '2GO HAIR CREAM ADVANCED STYLING 80 ML', 'Good product', '[\"def.png\"]', 10, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(376, '2GO MEGA HOLD  GREEN 100 ML', 'Good product', '[\"def.png\"]', 5.5, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(377, '2GO MEGA HOLD  GREEN 180 ML', 'Good product', '[\"def.png\"]', 6, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(378, '2GO WET LOOK  BLUE 180 ML', 'Good product', '[\"def.png\"]', 8.75, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(379, '2GO WET LOOK EXTRA FIXATION  BLUE 100 ML', 'Good product', '[\"def.png\"]', 8.75, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(380, '2?????????? ?????? ????????????????', 'Good product', '[\"def.png\"]', 6, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(381, '3 FIVES COLOGNE SPRAY 260 ML', 'Good product', '[\"def.png\"]', 15, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(382, '3 FIVES ORIGINAL COLOGNE 260 ML', 'Good product', '[\"def.png\"]', 38, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(383, '3 HEARTS TOY CODE 7732', 'Good product', '[\"def.png\"]', 38, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(384, '3 TM NEBULIZER FAMILY', 'Good product', '[\"def.png\"]', 7, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(385, '3 XL FOUNDATION VITAMIN E', 'Good product', '[\"def.png\"]', 360, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(386, '3-10 SKIN SCISSORS B', 'Good product', '[\"def.png\"]', 45, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(387, '3-EFFECT ORAL-B', 'Good product', '[\"def.png\"]', 29.4, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(388, '3-WAY', 'Good product', '[\"def.png\"]', 21, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(389, '3-WAY EXTENSION TUBE', 'Good product', '[\"def.png\"]', 7, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(390, '3.6 KNEE SUPPORT', 'Good product', '[\"def.png\"]', 10, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(391, '30755 FOLDED WALKER P', 'Good product', '[\"def.png\"]', 28, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(392, '37-12 SKIN SCRAPPER B', 'Good product', '[\"def.png\"]', 340, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(393, '3M ACTIVE STRIPS ASSORTED', 'Good product', '[\"def.png\"]', 24.3, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(394, '3M ACTIVE STRIPS COLORED', 'Good product', '[\"def.png\"]', 14, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(395, '3M ADHESIVE ADULT SKIN PULL', 'Good product', '[\"def.png\"]', 14, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(396, '3M ADULT SKIN PULL', 'Good product', '[\"def.png\"]', 30, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(397, '3M CHILD ADHESIVE SKIN PULL', 'Good product', '[\"def.png\"]', 25, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(398, '3M CHILD NON ADHESIVE SKIN PULL', 'Good product', '[\"def.png\"]', 21.5, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(399, '3M EYE PATCH CHILD OPTICLUDE', 'Good product', '[\"def.png\"]', 21.5, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(400, '3M_???????? ??????????', 'Good product', '[\"def.png\"]', 34, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(401, '3NS TEX COLOR BLACK', 'Good product', '[\"def.png\"]', 2.5, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(402, '3XL COVERING  REMOVING', 'Good product', '[\"def.png\"]', 100, 1, NULL, NULL, '[{\"id\":1,\"position\":0},{\"id\":1,\"position\":1}]', NULL, NULL, NULL, NULL, 0),
(403, 'panadol', '<p>asdasfwqf</p>', '[\"2022-04-14-625819c5cc3e4.png\"]', 1, 1, '2022-04-13 23:55:33', '2022-04-13 23:55:33', '[{\"id\":\"1\",\"position\":1}]', 'afafasfdascf', 'asfsdavsad', 'bnm,.', 'jjjjjj', 8);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `soft_credentials`
--

CREATE TABLE `soft_credentials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

CREATE TABLE `time_slots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_slots`
--

INSERT INTO `time_slots` (`id`, `start_time`, `end_time`, `status`, `created_at`, `updated_at`, `date`) VALUES
(1, '10:30:00', '19:30:00', 1, '2021-04-22 04:08:15', '2021-04-22 04:08:15', '2021-04-22'),
(2, '01:37:00', '11:00:00', 1, '2021-04-22 04:08:33', '2021-05-08 04:41:24', '2021-05-08'),
(3, '09:50:00', '23:30:00', 1, '2021-04-22 04:08:55', '2021-07-01 04:34:39', '2021-04-26');

-- --------------------------------------------------------

--
-- Table structure for table `track_deliverymen`
--

CREATE TABLE `track_deliverymen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `delivery_man_id` bigint(20) DEFAULT NULL,
  `longitude` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `translationable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `translationable_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `translationable_type`, `translationable_id`, `locale`, `key`, `value`) VALUES
(1, 'App\\Model\\Product', 1, 'af', 'description', '<p><br></p>'),
(2, 'App\\Model\\Product', 1, 'af', 'name', 'panadol'),
(3, 'App\\Model\\Product', 2, 'af', 'name', 'Orange'),
(4, 'App\\Model\\Product', 2, 'af', 'description', 'Good product'),
(5, 'App\\Model\\Product', 403, 'af', 'description', '<p><br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_phone_verified` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cm_firebase_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temporary_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `f_name`, `l_name`, `email`, `image`, `is_phone_verified`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `email_verification_token`, `phone`, `cm_firebase_token`, `temporary_token`) VALUES
(1, 'customer', 'aaaa', 'customer@customer.com', NULL, 0, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'ahmed', 'mohamed', 'mojhpsuuddsakksed@gmail.com', NULL, 0, NULL, '$2y$10$EmRzXGAKleaqIkb/YX1ShO9WkImgzzbxxExCj.vidj4nxGumym2RK', NULL, '2022-04-10 02:26:12', '2022-04-10 02:26:12', NULL, '012937595858678', NULL, NULL),
(20, 'ahmed', 'mohamed', 'mohamed@gmail.com', NULL, 0, NULL, '$2y$10$EOM2pJPeKvLlQbUHgd.exug9/YKSB/yUHze5Fb0UPhb9Zg4/fmNT2', NULL, '2022-04-10 02:27:39', '2022-04-10 02:27:39', NULL, '01293', NULL, NULL),
(21, 'ahmed', 'mohamed', 'mohamsed@gmail.com', NULL, 0, NULL, '$2y$10$QVlAV51q588MZfCZb81kTeFWAxWd5t7KW8K11VMf4QV0BVl4l4ejW', NULL, '2022-04-10 02:40:03', '2022-04-10 02:40:03', NULL, '012293', NULL, NULL),
(22, 'ahmed', 'mohamed', 'mohamsedd@gmail.com', NULL, 0, NULL, '$2y$10$3F2H5pUNKowiMFrEPAS4.uT/ifIAaJ.wQw7g1l9711Y3B7Nm7c6Dm', NULL, '2022-04-10 02:40:51', '2022-04-10 02:40:51', NULL, '0127293', NULL, NULL),
(23, 'ahmed', 'mohamed', 'mohamsedod@gmail.com', NULL, 0, NULL, '$2y$10$gz777IWcctAQg7FBgcBFxOjoR1KqC7graxOCFx7ft/OrNh7DTiuoq', NULL, '2022-04-10 02:45:44', '2022-04-10 02:45:44', NULL, '01272963', NULL, NULL),
(24, 'ahmed', 'mohamed', 'mohamseedod@gmail.com', NULL, 0, NULL, '$2y$10$2/pvM5fGCSK//ujr0X5q0OtXfJTszH3Ddc.oTCdc8wOkJUOhyVBFK', NULL, '2022-04-10 02:46:08', '2022-04-10 03:12:17', NULL, '012729963', NULL, 'CFO5HO7hSet3K3ViAsDCFYCaQQLWDFHIRVP19gUf');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
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
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_men`
--
ALTER TABLE `delivery_men`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `delivery_men_phone_unique` (`phone`);

--
-- Indexes for table `d_m_reviews`
--
ALTER TABLE `d_m_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_delivery_histories`
--
ALTER TABLE `order_delivery_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email_or_phone`);

--
-- Indexes for table `pharmacy_product`
--
ALTER TABLE `pharmacy_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_verifications`
--
ALTER TABLE `phone_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_deliverymen`
--
ALTER TABLE `track_deliverymen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_translationable_id_index` (`translationable_id`),
  ADD KEY `translations_locale_index` (`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_men`
--
ALTER TABLE `delivery_men`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d_m_reviews`
--
ALTER TABLE `d_m_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_verifications`
--
ALTER TABLE `email_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_delivery_histories`
--
ALTER TABLE `order_delivery_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmacy_product`
--
ALTER TABLE `pharmacy_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_verifications`
--
ALTER TABLE `phone_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=404;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_slots`
--
ALTER TABLE `time_slots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `track_deliverymen`
--
ALTER TABLE `track_deliverymen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
