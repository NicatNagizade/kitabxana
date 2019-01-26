-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2019 at 05:10 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kitabxana`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nicat', 'nicatnagizade53@gmail.com', '$2y$10$T4PUJJ6s623B.AcJGJrP0Ox/S84UrVSABxoJDG0I59/lpZnp7YYK6', 'lFMlbP0zd45cjXgcd9WNuX867OkADkQSw7MWc2G6HeuqVa9Xh4aVKfj5F5Ec', '2019-01-22 11:12:26', '2019-01-22 11:14:06');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

CREATE TABLE `admin_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role`
--

INSERT INTO `admin_role` (`id`, `role_id`, `admin_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kitab`
--

CREATE TABLE `kitab` (
  `id` int(10) UNSIGNED NOT NULL,
  `ad` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yazar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `janr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sekil` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reytinq` int(11) DEFAULT NULL,
  `haqqinda` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kitab`
--

INSERT INTO `kitab` (`id`, `ad`, `yazar`, `janr`, `sekil`, `link`, `reytinq`, `haqqinda`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'Cinayət və cəza', 'F. Dostoyevski', 'psixoloji, dedektiv', '1547306326Cinayət_və_cəza.jpg', 'https://drive.google.com/open?id=1n_UG3RWtY8RcSA-6J0fCoBMDNgZK7kyp', 10, 'Fyodor Mixayloviç Dostoyevskinin XIX əsrin 60-cı illərində (1866) meydana gələn \"Cinayət və cəza\" romanı rus milli, mədəni, ictimai tarixinin mürəkkəb dövrlərindən birini əks etdirir. Bu elə bir dövr idi ki, Rusiya təhkimçilik hüququndan təzəcə azad olmuş və hələ özünün gələcək inkişaf yollarını dəqiq müəyyənləşdirməmişdi. Rusiya hansı yolla gedəcəkdi? O, Avropa kapitalist inkişaf yolunu seçəcək, yoxsa öz milli ənənələrinə əsaslanaraq yeni, Avropa xalqlarından fərqli bir yolla gedəcəkdi? Bu sualların dəqiq və birmənalı cavabı yox idi və 60-cı illər rus ədəbiyyatı bu məsələ haqqında dərindən düşünürdü. Dostoyevski Çernışevskidən fərqli olaraq Rusiyanın gələcək nicatını inqilabda və ədalətli sosial quruluşda, yəni sosializmdə deyil, xalqın, millətin rus pravoslav dininə tapınaraq mənəvi kamilləşmə yolunu seçməsində görürdü. O dövr üçün Çernışevskinin fikirləri daha aktual, daha real görünürdü. Rusiya nəhayət ki, müəyyən müddətdən sonar sosializm deyilən məqsədə nail oldu. Lakin geniş tarixi kontekstdə Dostoyevski fikirləri həqiqətə daha yaxın idi, çünki onlar rus milli ruhunun, milli xarakterinin, milli mədəniyyətinin əsaslarını və dərin təmayüllərini daha dürüst ifadə edirdi. Bugünkü nöqteyi-nəzərindən diqqət yetiriləndə Dostoyevskinin fikirlərinin özünü doğrulduğunu görürük. \"Cinayət və cəza\" romanı Dostoyevskinin beş böyük romanından birincisidir. Bundan sonra yazıçı özünün məşhur \"İdiot\", \"Şeytanlar\", \"Yeniyetmə\" və \"Karamazov qardaşları\" romanlarını yazmışdır. \"Cinayət və cəza\" romanı Dostoyevski yaradıcılığında yeni mərhələnin başlanğıcıdır. Məlumdur ki, dahi söz ustası öz yaradıcılığını 40-cı illərdə \"kiçik insan\" haqqında yazmış olduğu əsərlərlə başlamışdı. \"Yoxsul insanlar\", \"Oxşar\", \"Cənab Proxarçin\", \"Bəyaz gecələr\" və nəhayət, 60-cı illərin əvvəlində yazdığı \"Alçaldılmış və təhqir edilmiş insanlar\" məhz bu mövzuya, yəni \"kiçik insanlar\"ın maddi və mənəvi işgəncələrinin təsvirinə həsr edilmişdi. 60-cı illərdə isə Dostoyevski sosial-psixoloji mövzudan ideal-mənəvi mövzuya keçmiş və insan xarakterini, onun aqibətini və şəxsiyyətini təyin edən ideoloji və mənəvi məqamların bədii təhlilinə üz tutmuşdu. Odur ki, Dostoyevskinin 60-cı illərdə yazılmış romanlarını tədqiqatçılar yeni roman növü kimi qeyd edir, onu \"ideoloji roman\", \"polifonik roman\" və s. adlandırırlar. Bu yeni roman növünün mahiyyəti ondan ibarətdir ki, burada insane xarakteri, insan şəxsiyyəti sadəcə olaraq realistcəsinə, ictimai, sosial mühitin məhsulu kimi təsvir olunmur. Burada insan daha mürəkkəb, daha ziddiyyətli bir varlıq kimi, ilk növbədə, özü öz müqəddəratını həll etməyə çalışan ruhi varlıq kimi təsvir olunur. Dostoyevski öz realizminin əsas vəzifəsini \"insana insanı tapmaq\" vəzifəsi kimi təyin edir. Bu, o deməkdir ki, insan göründüyündən, onun özü haqqında və başqalarının onun haqqında düşündüklərindən daha mürəkkəb, daha sirli bir məxluqdur. İnsan ruhunun ənginliklərinə dalmaq, onun özünün də xəbəri olmayan daxili sirlərini açmaq üçün Dostoyevski öz qəhrəmanlarını müstəsna qəza vəziyyətinə salır və bu vəziyyətdə onların xarakterlərinin gizli tərəflərinin açılmasına nail olur.', NULL, '2019-01-12 11:18:46', '2019-01-12 11:18:46'),
(7, 'Əclafların qanunu', 'Çingiz Abdullayev', 'dedektiv', '1547310134eclaflarin-qanunu.jpg', 'https://drive.google.com/open?id=1QLcEYvCEZoawtg4OUEh2Ky6eGcP5TR4k', 9, 'Bu kitabda, öz təsiri ilə bütün keçmiş nəhəng dövləti əhatə edən və indi yeni, transmilli hücumları nümayiş etdirən güclü milli mafiyaların fəaliyyətini göstərməyə və danışmağa cəhd olunub. Çox vacib bir şərtə oxucuların diqqətini çəkmək istərdim. “Milli mafiya” sözü ilə, tullantısı bu quldurlar olan xalq sözünü səhv salmaq olmaz. Pis xalq olmur, bu elementar həqiqəti hələ bir çoxları dərk etməyib. Cinayətkar, milliyyətindən asılı olmayaraq cinayətkar olaraq qalır. Zərurət olarsa, onlar razılığa gələrək birgə fəaliyyət göstərə bilirlər. Bu kitabı oxuyanların hamısının yadında qalsın. İnsana onun əməksevərliyinə, ağlına və şərəfinə görə; xalqa onun tarixinə, mədəniyyətinə və ənənələrinə görə; özünüzəsə primitiv milliyyətçilik səviyyəsinə düşməyərək başqalarına hörmət bacarığına görə hörmət edin. Nəticə etibarilə, insan olmaq o qədər çətindir ki.', NULL, '2019-01-12 11:30:49', '2019-01-12 12:22:14'),
(8, 'Karamazov qardaşları', 'F. Dostoyevski', 'psixoloji', '1547364319Karamazovlar.jpg', 'https://drive.google.com/open?id=1wl305Vmv7-pZa8l5luZEbQzDpSjOFtEJ', 10, 'Rus yazıçısı Fyodor Dostoyevskinin romanıdır. Dostoyevskinin həyatının zirvə romanı olaraq bilinir. Romanın böyük bir hissəsi Staraya Russada yazılmışdır. Dostoyevski olduqca ağır bir dili olan roman üçün iki ilə yaxın zaman sərf etmiş və 1880-ci ilin noyabr ayında bitirmiştir. Kitabın yayımlanmasından dörd ay sonra yenə bu kitab üçün hazırladığı böyük bir layihə olan \"Böyük bir günahkarın xatirələri\" ilə məşğul olarkən vəfat etmişdir.\r\n\r\nYazıçı bu əsərində oxucunun diqqətini mənəvi-fəlsəfi məsələlərə yönəldir. Əsərin personajları – İvan, Aleksey və Dmitri Karamazovlar varlığın ilkin səbəbi və son məqsədləri haqqında mühakimələrlə məşğuldur. Onlar Tanrı və ruhun ölümsüzlüyü məsələsinə müxtəlif cür yanaşır və öz seçimlərini edirlər. Dünya ədəbiyyatında xristian təfəkkürü təsvirinin ən dərin örnəklərindən olan Karamazov qardaşları XX əsrin ən paradoksal, fəlsəfi və psixoanalitik interpretasiyalarının obyekti olmuşdur.', NULL, '2019-01-13 03:25:19', '2019-01-13 03:25:19'),
(9, 'İdiot', 'F. Dostoyevski', 'psixoloji', '1547364526the-idiot.jpg', 'https://drive.google.com/open?id=1dKiVD5xSIPWuZirrhmGlSl-pU1LS74up', 10, 'Dostoyevski bu əsərində, sara xəstəsi bir gənc adamın mərkəzinə yerləşdirdiyi bir dünyada dürüst və açıq bir insan olaraq yaşamağın çətinliklərinə toxunmaqda və cəmiyyətin nə qədər də iki üzlü bir sistem üzərinə söykənərək ayaqda dayandığını göz önünə çıxarır. Belə bir dünyada dürüst olmaq \"idiot\" olmaqdır.\r\n\r\nRoman bir Dostoyevski klassikası olaraq son dərəcə axıcı və dərindir. Psixoloji maddələrin ağırlıqlı olduğu bir əsərdir. Dostoyevski burda ideal kişi tipini yaratmaq istəmişdir.\r\n\r\nXIX əsr ortalarında keçən romanın qəhrəmanı Knyaz Lev Mışkin, sara xəstəsidir. Müalicə gördüyü İsveçrədən qayıdanda əlindəki geyimdən başqa heç bir şeyi yoxdur. Peterburqda özüylə uzaqdan qohum olan Lizaveta Prokovyevnanı və General olan yoldaşını görmək üzrə Yepançinlgilə gedər. Burada generalın üç qızı, Aglaya, Adelaida və Aleksandra ilə də tanış olur. Knyaz, maraqlı şəxsiyyəti ilə ailəni və Peterburqda tanış olduğu digər insanları təsir altına alır.\r\n\r\nDünyanın gəlmiş keçmiş ən gözəl eşq romanlarından olan İdiot, Dostoyevskinin dörd böyük romanından biridir. Dostoyevskinin ən unudulmaz qadın qəhrəmanı olaraq qəbul edilən Nastasya Filopovna, məşhur rus romançının, Knyaz Mışkinin şəxsiyyətində vermək istədiyi güclü eşqin yönəldiyi şəxsiyyətlərdən biridir. Nastasya Filopovna gözəlliyin, cazibədarlığın, yetkin qadınlığın, yüngülməcazlığın simvoludur. Romanın bir başqa maraqlı qadın qəhrəmanı Aglaya İvanovna da gəncliyin, həssaslığın və zəkanın simvoludur. \"İdiot\" insanlıq tarixində yazılmış olan ən gözəl, ən sarsıdıcı, ən təsiredici romanlardan biri olaraq qəbul edilir.', NULL, '2019-01-13 03:28:46', '2019-01-13 03:28:46'),
(10, 'İndiki anın gücü', 'Ekhart Tolle', 'psixoloji', '1547364965anin-gucu.jpg', 'https://drive.google.com/open?id=1RjPQ4i7dmgePfWyJ0FEFRfcmtOmb1J_I', 10, 'Bu kitab bir neçə problemləri təqdim edir: biz tamamilə mövcud ola bilər və biz də idarə əgər, həqiqətən, bizim enerji bədən imkan go, bağışlanma var reallıqları anlamaq üçün, bu anda bir anda bir addım atmaq və əgər şüursuzluq, indiki dövrün transformasiya gücünə necə özümüzü açacağımızı biləcəyimiz.\r\n\r\ndərin kimi sadə kimi, Eckhart Tolle təlimlərinə dünyada saysız-hesabsız insanlar daxili sülh tapmaq və bir çox razı həyat yaşamaq kömək etdi. bu təlimlərə qəlbində şüurun çevrilməsi, insan təkamül növbəti addım kimi görür mənəvi oyanış var. Bu Oyanış mühüm aspekti ego əsasında şüurun bizim dövlət aşan ibarətdir, bir şərt yalnız şəxsi xoşbəxtlik, həm də dünyanın zorakı münaqişələrin sonu endemik üçün. Siz əvvəl Eckhart Tolle, onun kitab nüsxə milyonlarla dünyada satılmışdır müəllifin əsas təlimlərinə bir nəşr var. Biz meditations və təlimlər mövcuddur praktik format, bir trilogy burada ilk üç əsas həcmi toplandı. Bu trilogiya daxildir: \"Bu anın qüvvəsi\", praktiki təlimat və \"İç sakitlik sənəti\".', NULL, '2019-01-13 03:36:05', '2019-01-13 03:36:05'),
(11, 'Səfillər', 'Viktor Hügo', 'roman', '1547366928sefiller.jpg', 'https://drive.google.com/open?id=1hwAkJQ3ESVLHkDM0yed5ZUVwl5WOV8ax', 10, 'Səfillər (fr. Les Misérables) — yazıçı Viktor Hüqonun 1862-ci ildə nəşr olunmuş və XIX əsrin ən mükəmməl nəsri hesab edilən fransız romanı. Romanda XIX əsrin əvvəllərində on yeddi il ərzində (1815-ci ildən başlayaraq 1832-ci il İyun qiyamına[1] qədərki dövrdə) bir neçə fransız obrazın həyatı və qarşılıqlı münasibələri izlənilir. Roman Din şəhərinin yepiskopu Miriel Benvenünün həyat tərzinin təsviri ilə başlayır. Sanki Hüqo bununla insanları daha mərhəmətli ədalətli olmağa çağırır. Miriel Benvenü ideal bir yepiskopdur. O, qəribə bir təsadüf nəticəsində bu məqama çatmışdır. Bir dəfə Napoleon öz əmisinə baş çəkmək üçün Parisə gəlir. Qəbul otağında gözü onu diqqətlə izləyən bir ixtiyara sataşır. Geri dönərək ixtiyardan onu niyə belə diqqətlə süzdüyünü soruşur:\r\n\r\n- “Mərhəmətli insan niyə mənə elə baxırsan?”\r\n- “Əlahəzrət siz qarşınızda mərhəmətli insan görürsünüz, mən isə böyük bir insanı seyr edirəm. Hər birimiz bu tamaşadan özü üçün müəyyən bir fayda ala bilər”. - deyə Miriel cavab vermişdir.\r\nİmperator həmin axşam kardinaldan bu keşişin adını soruşmuş, bir müddət sonra isə cənab Miriel özü belə gözləmədən Din şəhərinin yepiskopluğuna təyin olunduğunu eşitmişdir. Miriel hökumətdən aldığı on beş min livr məvacibini tamamilə mərhəmət üçün xərcləyər özünün yerdə qalan min və bacısının beş yüz livr rentəsi ilə sadə bir həyat sürərdilər.', NULL, '2019-01-13 04:08:48', '2019-01-13 04:08:48');

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
(3, '2018_12_29_094243_create_kitabs_table', 1),
(4, '2017_03_06_023521_create_admins_table', 2),
(5, '2017_03_06_053834_create_admin_role_table', 2),
(6, '2018_03_06_023523_create_roles_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'super', '2019-01-22 11:12:26', '2019-01-22 11:12:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nicat', 'nicat53@mail.ru', NULL, '$2y$10$3iMnyRVb8PKk8vfG5YJRD.btdORJ/bQyeaEx1qhLr9dwNZcB/G0E6', 'fbUpNb47qn963rMKSKN0bd7nVUuCZCXJSreoj9b23WF3fLnyxOVOZwqL5eUv', '2019-01-10 12:32:13', '2019-01-10 12:32:13');

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
-- Indexes for table `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_role_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `kitab`
--
ALTER TABLE `kitab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kitab`
--
ALTER TABLE `kitab`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_role`
--
ALTER TABLE `admin_role`
  ADD CONSTRAINT `admin_role_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
