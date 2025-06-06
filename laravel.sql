-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 06, 2025 at 05:32 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `color` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Teknologi', 'teknologi', 'green', '2025-05-29 22:32:02', '2025-05-29 22:32:02'),
(2, 'Hiburan', 'hiburan', 'red', '2025-05-29 22:32:02', '2025-05-29 22:32:02'),
(3, 'Ekonomi', 'ekonomi', 'gold', '2025-05-29 22:32:02', '2025-05-29 22:32:02'),
(4, 'Sains', 'sains', 'grey', '2025-05-29 22:32:02', '2025-05-29 22:32:02'),
(5, 'History', 'history', 'blue', '2025-05-29 22:32:02', '2025-05-29 22:32:02'),
(6, 'Intertainment', 'intertainment', 'purple', '2025-05-29 22:32:02', '2025-05-29 22:32:02'),
(7, 'Nasional', 'nasional', 'cyan', '2025-05-29 22:32:02', '2025-05-29 22:32:02'),
(8, 'Lifestyle', 'lifestyle', 'yellow', '2025-05-29 22:32:02', '2025-05-29 22:32:02'),
(9, 'Otomotif', 'otomotif', 'orange', '2025-05-29 22:32:02', '2025-05-29 22:32:02'),
(10, 'Space', 'space', 'indigo', '2025-05-29 22:32:02', '2025-05-29 22:32:02'),
(11, 'Pendidikan', 'pendidikan', 'teal', '2025-05-29 22:32:02', '2025-05-29 22:32:02'),
(12, 'Sosial Budaya', 'sosial-budaya', 'pink', '2025-05-29 22:32:02', '2025-05-29 22:32:02');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `author_id`, `category_id`, `slug`, `body`, `image`, `created_at`, `updated_at`) VALUES
(121, 'Ayam Goreng Widuran Solo Viral karena Status Non-Halal, Manajemen Minta Maaf', 1, 12, 'sosial-budaya', 'Ayam Goreng Widuran, salah satu kuliner legendaris  di Solo, Jawa Tengah, tengah menjadi sorotan publik setelah pengelolanya mengumumkan bahwa menu yang mereka sajikan berstatus non-halal. Pengumuman ini disampaikan melalui akun Instagram resmi @ayamgorengwiduransolo pada Jumat, 23 Mei 2025, setelah viralnya perbincangan di media sosial mengenai kandungan bahan dalam menu mereka.\r\n\r\n\r\nAyam Goreng Widuran telah berdiri sejak 1973 dan dikenal luas sebagai salah satu destinasi kuliner ayam goreng kampung dengan bumbu kremes khas. Warung makan ini berlokasi di Jalan Sutan Sjahrir Nomor 71, Kepatihan Kulon, Kecamatan Jebres, Solo, dan memiliki beberapa cabang lain, termasuk di Bali. Menu andalannya adalah ayam goreng kampung yang disajikan dengan kremesan renyah, sambal, nasi putih, dan lalapan.\r\n\r\n\r\nKehebohan bermula dari unggahan seorang warganet di media sosial yang mengaku terkejut mengetahui bahwa kremesan pada ayam goreng di restoran tersebut ternyata mengandung unsur babi. Penjelasan dari pihak manajemen menyebutkan bahwa kremesan yang dibalutkan pada ayam goreng digoreng menggunakan minyak babi, sehingga menu tersebut berstatus non-halal. Meskipun demikian, manajemen menegaskan bahwa mereka telah mencantumkan keterangan “non-halal” secara jelas di seluruh outlet, menu, serta media sosial resmi mereka untuk menghindari kesalahpahaman pelanggan.\r\n\r\n\r\nPihak manajemen juga menyampaikan permintaan maaf atas kegaduhan yang terjadi dan berharap masyarakat dapat memberi ruang bagi mereka untuk memperbaiki dan membenahi sistem informasi di outlet mereka. “Kami berharap masyarakat dapat memberi kami ruang untuk memperbaiki dan membenahi semuanya dengan itikad baik,” tulis pengelola dalam pernyataan resminya.\r\n\r\n\r\nKepala Dinas Perdagangan Solo, Agus Santoso, turut merespons isu ini dengan menyatakan bahwa pihaknya akan melakukan pengecekan langsung ke lokasi guna memastikan informasi dan proses produksi di warung makan tersebut.\r\n\r\n\r\nKasus Ayam Goreng Widuran ini menjadi pengingat pentingnya transparansi informasi mengenai status halal atau non-halal pada produk makanan, terutama di Indonesia yang mayoritas penduduknya beragama Islam. Di sisi lain, warung makan ini tetap mempertahankan keunikan dan tradisi kuliner yang telah bertahan lebih dari lima dekade, meski kini harus menghadapi tantangan baru dalam menjaga kepercayaan', 'post-images/X2yCAfDqxbLd4yUAur1twToiMbLFvD0uJgKRrqiu.jpg', '2025-05-29 08:44:12', '2025-05-29 08:44:12'),
(122, 'DARI VINYL KE SPOTIFY: BAGAIMANA TEKNOLOGI MENGUBAH CARA KITA MENDENGARKAN MUSIK', 1, 1, 'teknologi', 'Dalam rentang waktu kurang dari seabad, cara manusia mendengarkan musik telah mengalami transformasi yang revolusioner. Dari era piringan hitam vinyl yang memerlukan ritual khusus untuk diputar, hingga layanan streaming digital yang memungkinkan akses instan ke jutaan lagu hanya dengan sekali sentuh, perjalanan teknologi musik mencerminkan evolusi peradaban digital manusia. Transformasi ini bukan sekadar pergantian format, melainkan perubahan mendasar dalam hubungan antara manusia dengan musik itu sendiri. \r\n\r\nPiringan hitam vinyl, yang mencapai puncak popularitasnya dari tahun 1950 hingga 1980-an, menciptakan budaya mendengarkan musik yang penuh ritual dan apresiasi mendalam. Proses mendengarkan musik pada era ini dimulai dengan perjalanan ke toko musik, memilih album berdasarkan sampul dan rekomendasi, kemudian membawa pulang kepingan fisik yang menjadi koleksi berharga. Di rumah, pendengar harus dengan hati-hati mengeluarkan piringan dari sampulnya, membersihkan debu dengan sikat khusus, dan menempatkannya dengan presisi di pemutar. Kualitas suara analog vinyl memberikan kehangatan dan kedalaman yang hingga kini masih dirindukan oleh para penikmat audio. Setiap putaran piringan menghasilkan gelombang suara yang alami, tanpa kompresi digital yang menghilangkan nuansa-nuansa halus musik. Namun, keterbatasan teknologi ini juga nyata. Piringan vinyl mudah tergores, suara dapat terdistorsi jika jarum tidak terawat dengan baik, dan kapasitas penyimpanan terbatas pada sekitar 45 menit per sisi untuk kualitas optimal. Budaya vinyl menciptakan pengalaman mendengarkan yang kontemplatif dan fokus. Pendengar cenderung mendengarkan album secara utuh, dari awal hingga akhir, sesuai dengan visi artistik musisi. Format ini mendorong apresiasi terhadap seni sampul, catatan liner, dan konsep album sebagai sebuah karya seni yang menyeluruh. Koleksi vinyl menjadi representasi identitas musikal seseorang, dipajang dengan bangga dan diperlakukan sebagai harta berharga. \r\n\r\nKaset audio, yang populer dari tahun 1970-an hingga 1990-an, membawa revolusi pertama dalam portabilitas musik. Teknologi pita magnetik memungkinkan musik dibawa ke mana-mana melalui pemutar kaset portabel dan radio kaset, menciptakan latar musik pribadi untuk aktivitas sehari-hari. Kaset juga memperkenalkan konsep kaset campuran, di mana individu dapat merekam kompilasi lagu favorit mereka, menciptakan narasi musikal yang personal dan sering kali menjadi media ekspresi cinta atau persahabatan. Kemampuan untuk merekam memungkinkan lahirnya budaya berbagi musik yang lebih demokratis. Orang dapat', 'post-images/UcIDBmWmsQtr1BZWVFTaBfQMaTqE4SkOGXA69szJ.jpg', '2025-05-29 08:51:24', '2025-05-29 08:51:24'),
(123, 'INDUSTRI HIBURAN INDONESIA BERGUNCANG: BAGAIMANA KREATOR KONTEN LOKAL MENGALAHKAN NETFLIX DENGAN STRATEGI IKLAN YANG REVOLUSIONER', 1, 6, 'entertaiment', 'Siapa sangka sebuah platform streaming buatan mahasiswa ITB bisa mengalahkan Netflix dalam waktu kurang dari setahun? Inilah kisah fenomenal bagaimana IndieTube Indonesia - platform video streaming yang fokus pada konten lokal - berhasil meraup 25 juta subscriber dan menggeser dominasi raksasa entertainment global melalui strategi kampanye iklan yang tak pernah ada sebelumnya. Yang membuatnya lebih mencengangkan? Mereka melakukannya dengan budget kampanye yang hanya sepersepuluh dari kompetitor internasional.\r\nKAMPANYE \"INDONESIA BANGKIT\" YANG MENGGEBRAK DUNIA\r\nKetika CEO IndieTube Indonesia, Andi Wijaya (26), pertama kali mempresentasikan konsep kampanye \"Indonesia Bangkit: Dari Kita, Untuk Kita\" kepada investor pada Januari 2025, banyak yang skeptis. Bagaimana mungkin sebuah startup lokal bisa bersaing dengan Netflix yang memiliki budget marketing miliaran dollar? Jawabannya terletak pada strategi kampanye yang berani dan inovatif. Alih-alih meniru formula kampanye global, tim kreatif IndieTube mengembangkan pendekatan yang sepenuhnya berpusat pada kekuatan storytelling Indonesia. \"Kami tidak mencoba menjadi Netflix Indonesia. Kami ingin menjadi platform yang benar-benar memahami jiwa dan budaya Indonesia,\" tegas Andi dalam wawancara eksklusif kami.\r\nRISET MENDALAM: MENGUNGKAP RAHASIA HATI PENONTON INDONESIA\r\nSebelum meluncurkan kampanye, tim IndieTube melakukan riset selama 8 bulan dengan melibatkan 15.000 responden dari 34 provinsi. Hasilnya mengejutkan: 84% penonton Indonesia merasa \"terasing\" dengan konten asing yang mendominasi platform streaming 91% ingin melihat cerita lokal yang berkualitas internasional 76% bersedia membayar lebih untuk konten yang mencerminkan realitas Indonesia Data ini menjadi fondasi strategis yang kemudian dituangkan dalam kampanye multidimensional yang revolusioner.\r\nANATOMI KAMPANYE YANG MENGUBAH SEGALANYA\r\n1. HERO CAMPAIGN: \"CERITA KITA, BANGGA KITA\"\r\nVideo kampanye utama berdurasi 4 menit ini bukan sekadar iklan biasa. Ini adalah manifesto budaya yang menampilkan 100 kreator konten dari seluruh nusantara, mulai dari anak SMA di Papua hingga nenek berusia 80 tahun di Aceh yang jadi YouTuber kuliner. Kekuatan naskah iklan terletak pada pembukaan yang menggugah: \"Kapan terakhir kali kamu menonton sesuatu dan berkata, \'Ini seperti hidupku\'? Kapan terakhir kali kamu tertawa karena benar-benar memahami konteksnya? Kapan terakhir kali kamu merasa direpresentasikan?\" Emotional climax dicapai melalui montase 50 momen autentik kehidupan Indonesia: dari perjuangan ojek online di Jakarta, hingga guru dipedalaman Kalimantan yang mengajar via video call. Penutup yang powerful: \"Inilah cerita kita. Dan cerita kita layak untuk diceritakan dengan bangga.\"\r\n2. STRATEGI MULTI-CHANNEL YANG TERINTEGRASI\r\nPlatform Digital (70% budget): TikTok: Challenge #CeritaKitaBanggaKita dengan 45 juta partisipan Instagram: User-generated content featuring 500 micro-influencer lokal YouTube: 25 mini-series dokumenter tentang kehidupan real Indonesia Twitter: Live-tweeting session dengan 200 kreator konten setiap minggu Traditional Media (20% budget): TV: Sponsorship program talk show prime time dengan angle \"Indonesia Kreatif\" Radio: Podcast collaboration dengan 50 podcaster terkenal Out-of-Home: Billboard interaktif di 15 kota besar Experiential Marketing (10% budget): Pop-up cinema di 25 kota dengan screening konten lokal gratis Festival konten kreator yang menghadirkan 1000 content creator\r\n3. INOVASI TEKNOLOGI DALAM EKSEKUSI\r\nYang membuat kampanye ini revolusioner adalah penggunaan Artificial Intelligence untuk hyper-personalized targeting. Sistem AI yang dikembangkan tim IndieTube dapat menganalisis 347 parameter untuk menentukan konten iklan yang paling relevan untuk setiap individu. Contoh konkret: Seorang pekerja kantoran di Jakarta Selatan yang sering menonton konten comedy akan menerima iklan dengan fokus pada stand-up comedy lokal, sementara ibu rumah tangga di Surabaya yang gemar memasak akan mendapat iklan featuring chef lokal yang membuat konten kuliner nusantara.\r\nHASIL YANG MENCENGANGKAN: ANGKA BERBICARA LEBIH KERAS\r\nDalam 6 bulan pertama kampanye, IndieTube mencatatkan performa yang memecahkan rekor industri:\r\nAWARENESS METRICS\r\nBrand awareness melonjak dari 12% menjadi 78% dalam 4 bulan Top-of-mind awareness di kategori streaming platform naik 650% Sentiment analysis menunjukkan 92% respon positif\r\nCONVERSION METRICS\r\nDownload rate meningkat 1.400% selama periode kampanye Subscription rate naik 890% year-over-year Cost per acquisition turun 72% dibanding industri rata-rata Customer lifetime value naik 340%\r\nENGAGEMENT METRICS\r\nTotal organic reach: 450 juta impressions tanpa paid media User-generated content: 6.2 juta post dengan hashtag kampanye Viral coefficient: 3.8 (setiap user baru mengajak rata-rata 4 orang untuk bergabung) Earned media value: Rp 280 miliar (ROI 12:1)\r\nMENGAPA KAMPANYE INI BEGITU EFEKTIF?\r\n1. CULTURAL RESONANCE\r\nKampanye ini tidak sekadar menjual platform streaming. Mereka menjual kebanggaan dan identitas Indonesia. Setiap elemen kampanye dirancang untuk membangkitkan emotional connection yang mendalam dengan audiens.\r\n2. COMMUNITY-CENTRIC APPROACH\r\nAlih-alih mengandalkan celebrity endorsement yang mahal, IndieTube membangun komunitas grassroots dengan 2.000 content creator sebagai brand ambassador. Strategi ini menghasilkan authentic engagement yang jauh lebih kuat.\r\n3. DATA-DRIVEN CREATIVITY\r\nSetiap keputusan kreatif didukung oleh insight data yang solid. Tim creative tidak hanya mengandalkan intuisi, tetapi mengoptimalkan setiap elemen berdasarkan realtime feedback dari audiens. DAMPAK TERHADAP INDUSTRI: PERUBAHAN PARADIGMA Kesuksesan IndieTube telah mengubah landscape industri hiburan Indonesia secara fundamental: Netflix Indonesia meluncurkan program khusus untuk konten lokal dengan budget Rp 500 miliar Disney+ Hotstar mengakuisisi 15 production house lokal Amazon Prime Video membuka kantor regional di Jakarta Viu melipatgandakan investasi untuk original content Indonesia \"Ini bukan lagi tentang siapa yang punya budget terbesar, tetapi siapa yang paling memahami audiens Indonesia,\" kata Dr. Maya Puspitasari, pakar media dan komunikasi dari Universitas Indonesia.\r\nSTRATEGI KREATIF: LESSONS LEARNED\r\n1. AUTHENTICITY BEATS BUDGET\r\nBudget kampanye IndieTube hanya Rp 25 miliar, jauh lebih kecil dibanding kompetitor internasional yang menghabiskan ratusan miliar. Namun autentisitas pesan terbukti lebih powerful daripada production value yang mahal.\r\n2. LOCAL INSIGHT, GLOBAL EXECUTION\r\nTim kreatif berhasil mengadaptasi best practice global dengan insight lokal yang mendalam. Hasilnya: kampanye yang terasa sangat Indonesia namun tetap berstandar internasional.\r\n3. TECHNOLOGY AS ENABLER\r\nPenggunaan AI dan machine learning tidak menggantikan kreativitas, tetapi memperkuat efektivitas setiap elemen kampanye.\r\nMASA DEPAN: EKSPANSI ASIA TENGGARA\r\nKesuksesan di Indonesia membuka jalan ekspansi regional. IndieTube kini bersiap meluncurkan platform serupa di Malaysia, Thailand, dan Filipina dengan adaptasi strategi kampanye yang telah terbukti efektif. \"Kami membuktikan bahwa content creator lokal bisa bersaing di level global dengan strategi yang tepat,\" tutup Andi Wijaya. Fenomena IndieTube membuktikan satu hal: dalam era digital, kekuatan terbesar bukan teknologi atau modal, tetapi kemampuan bercerita yang menyentuh hati audiens. Apakah Anda siap menjadi bagian dari revolusi konten Indonesia? Download IndieTube sekarang dan rasakan perbedaannya!', 'post-images/bWV6Y4J20ij9FpMYjE3z0LGC0AoJS2mer8feNKq5.jpg', '2025-05-29 08:54:41', '2025-05-29 08:55:07'),
(124, 'Bos Sritex Ditangkap Kejagung, Dugaan Korupsi Kredit Rp 19,963 Triliun Terungkap', 1, 7, 'hukum', 'Direktur Utama PT Sri Rejeki Isman Tbk (Sritex), Iwan Lukminto, resmi ditangkap Kejaksaan Agung (Kejagung) di Solo pada Selasa, 20 Mei 2025. Ia diduga terlibat kasus korupsi dalam pemberian fasilitas kredit dari sejumlah bank pemerintah yang merugikan negara hingga Rp 19,963 triliun. Penangkapan ini langsung menarik perhatian publik karena menyangkut salah satu perusahaan tekstil terbesar di Asia Tenggara yang kini bangkrut dan telah mem-PHK ribuan karyawan.\r\n\r\nPenyidikan kasus ini dimulai sejak Oktober 2024, ketika Kejagung menaikkan statusnya menjadi penyidikan umum. Fokus utamanya adalah dugaan penyimpangan dalam proses pemberian kredit kepada Sritex dari bank-bank seperti BNI, Bank BJB, Bank DKI, dan Bank Jateng. Diduga, pihak perusahaan menggunakan berbagai cara curang seperti penggelembungan piutang, penggunaan dokumen palsu, pengagunan aset yang sama di beberapa tempat, hingga pencucian uang. Penyidik juga sedang menyelidiki apakah kredit-kredit tersebut diberikan ketika kondisi keuangan Sritex sebenarnya sudah bermasalah.\r\n\r\nSritex sendiri dinyatakan pailit oleh Pengadilan Niaga Semarang pada Oktober 2024. Total utangnya mencapai sekitar Rp 29,8 triliun, dan sebagian besar berasal dari pinjaman bank-bank pemerintah. Setelah dinyatakan bangkrut, Sritex menghentikan seluruh kegiatan operasional sejak 1 Maret 2025. Akibatnya, sebanyak 10.665 karyawan harus kehilangan pekerjaan. Hal ini menjadi pukulan berat bagi kota Solo, karena Sritex selama ini menjadi salah satu penopang ekonomi daerah.\r\n\r\nPenangkapan Iwan Lukminto menandai puncak penyelidikan yang mengungkap praktik tidak sehat dalam pengelolaan keuangan Sritex. Dugaan manipulasi data keuangan untuk mendapatkan kredit tambahan menjadi sorotan, terutama karena dilakukan saat perusahaan berada di ambang krisis.\r\n\r\nKasus ini menyita perhatian publik karena kerugian negara yang sangat besar dan dampak sosial yang ditimbulkan secara langsung. Ribuan mantan pekerja Sritex kini menghadapi kenyataan sulit, yaitu mencari pekerjaan baru di tengah lesunya industri tekstil nasional. Situasi ini menambah beban ekonomi, terutama di daerah seperti Solo yang selama ini sangat bergantung pada keberadaan Sritex. Oleh karena itu, hasil penyidikan ini bukan hanya akan menentukan nasib hukum Iwan Lukminto, tetapi juga masa depan para mantan karyawan serta kepercayaan masyarakat terhadap dunia usaha, khususnya di sektor tekstil. Banyak pihak berharap proses hukum ini bisa memberikan keadilan yang jelas, sekaligus membuka jalan bagi solusi pemulihan agar Sritex bisa kembali beroperasi dan memberi manfaat bagi masyarakat luas.', 'post-images/oE7KooTpDbWOkto23fAOpQW1dnUVqQze8uImYmCT.jpg', '2025-05-29 08:57:05', '2025-05-29 08:57:05'),
(125, 'Menaklukkan Amerika Timur: Petualangan Sejauh Sabang ke Merauke di Appalachian Trail', 1, 4, 'sains', 'Di sepanjang Amerika Serikat bagian timur, membentang sebuah jalur pendakian yang legendaris dan memikat hati para pecinta alam dari seluruh dunia. Appalachian Trail, atau disingkat A.T., merupakan jalur hiking khusus pejalan kaki terpanjang di dunia, dengan panjang hampir 3.540 kilometer. Untuk membayangkan seberapa jauh jaraknya, bayangkan berjalan kaki dari ujung timur Indonesia, Merauke di Papua, hingga Banda Aceh di ujung barat Sumatra dan masih tersisa sekitar 300 kilometer lagi. Panjangnya sungguh luar biasa, melewati 14 negara bagian dari Georgia hingga Maine, dengan medan yang sangat bervariasi dan landscape yang menakjubkan.\r\n\r\n\r\nSetiap tahun, lebih dari tiga juta orang menjelajahi sebagian jalur ini, tetapi hanya sebagian kecil yang mencoba menyusurinya secara penuh dalam satu musim, dikenal sebagai thru-hike. Dari sekitar 3.000 orang yang mencoba, hanya sekitar 25% yang berhasil mencapai garis akhir. Jalur ini pertama kali digagas pada tahun 1921 dan selesai dibangun pada tahun 1937. Sejak itu, jalur terus diperbaiki dan dimodifikasi. Pada tahun 1968, Appalachian Trail secara resmi diakui sebagai Appalachian National Scenic Trail melalui National Trails System Act.\r\n\r\n\r\nAppalachian Trail dikelola oleh gabungan instansi pemerintah seperti National Park Service dan United States Forest Service, serta organisasi nirlaba Appalachian Trail Conservancy. Selain itu, 31 klub pendakian lokal secara aktif terlibat dalam pemeliharaan jalur. Meskipun sebagian besar jalur melewati hutan dan alam liar, beberapa bagian melintasi kota kecil, ladang, dan jalan raya. Para pendaki akan menemukan beragam tantangan sepanjang jalur, dari perbukitan lembut di selatan hingga medan berbatu dan puncak terjal di utara.\r\n\r\n\r\nMedan yang dijuluki “Rocksylvania” di Pennsylvania menjadi salah satu tantangan tersendiri karena jalur yang penuh dengan batu kecil tajam akibat erosi. Di sisi lain, Maine menjadi bagian paling liar dan terpencil dari seluruh jalur, termasuk wilayah terkenal Hundred-Mile Wilderness yang sangat jarang dijamah manusia. Perubahan iklim dan ketinggian menciptakan ekosistem yang sangat beragam, dari hutan gugur dan konifer di selatan hingga kawasan alpin di utara.\r\n\r\n\r\nSemakin ke utara, vegetasi berubah drastis. Di New Hampshire, pendaki mulai memasuki kawasan subalpin dan alpin yang ditandai dengan pepohonan kerdil dan terbukanya batuan. Di Mount Moosilauke, lingkungan alpin sejati mulai muncul, dengan flora tipis dan pemandangan terbuka yang spektakuler. Salah satu bagian paling menakjubkan adalah jalur sepanjang 21 kilometer melintasi Presidential Range, termasuk Mount Washington yang mencapai ketinggian 1.917 meter dan merupakan titik tertinggi di jalur ini. Keanekaragaman hayati di sepanjang Appalachian Trail juga sangat luar biasa. Jalur ini menjadi rumah bagi berbagai spesies tumbuhan langka dan terancam punah. Bahkan, beberapa bagian jalur sengaja dialihkan untuk melindungi vegetasi tertentu.\r\nBagi banyak orang, menyusuri Appalachian Trail bukan hanya perjalanan fisik, tetapi juga pengalaman batin yang mendalam. Jalur ini telah menginspirasi buku, film dokumenter, dan komunitas pendaki yang solid. Setiap langkah di jalur ini adalah kisah tentang ketahanan, keterhubungan dengan alam, dan pencarian makna hidup. Appalachian Trail bukan sekadar jalur pendakian, ia adalah sebuah perjalanan yang mengubah cara seseorang melihat dunia dan dirinya sendiri.', 'post-images/xH7rXSOdtM4j1DIb25sEUGPG2DGZuxWwM9zQOoos.jpg', '2025-05-29 09:21:29', '2025-05-29 09:21:29'),
(126, 'Digitalisasi Pendidikan: Solusi atau Sekadar Formalitas?', 1, 11, 'pendidikan', 'Ketika pandemi datang seperti tamu tak diundang yang betah banget nongkrong, dunia pendidikan pun terpaksa jungkir balik. Guru, murid, bahkan wali murid mendadak harus akrab dengan Zoom, Google Classroom, dan segudang aplikasi belajar daring. Dari sini muncul jargon baru: digitalisasi pendidikan. Tapi pertanyaannya, ini beneran solusi jangka panjang, atau cuma formalitas biar terkesan modern?\r\n\r\nSecara teori, digitalisasi pendidikan terdengar keren. Belajar bisa dari mana saja, materi gampang diakses, anak-anak bisa mandiri. Tapi praktiknya? Banyak yang malah belajar sambil rebahan, buka kamera tapi lagi main Mobile Legends. Guru juga sering ngomel, “Tolong hidupkan kameranya ya, Budi… Budi mana, Bu-di??”\r\n\r\nMasalahnya bukan cuma disiplin. Akses teknologi jadi tantangan besar. Di kota besar mungkin gampang, tapi di daerah? Jangan tanya. Masih ada yang numpang WiFi di warung sebelah atau panjat pohon demi sinyal. Kalau digitalisasi cuma bisa dinikmati sebagian, apakah itu masih bisa disebut solusi?\r\n\r\nBelum lagi soal kualitas. Banyak guru dipaksa beradaptasi cepat, dari kapur tulis ke PowerPoint, dari papan tulis ke YouTube. Sayangnya, training-nya kadang setengah hati. Akibatnya, materi jadi monoton, tugas seabrek, dan interaksi minim. Digital tapi nggak humanis. Efektif? Belum tentu.\r\n\r\nTapi tentu nggak semua buruk. Banyak platform belajar digital yang inovatif, banyak murid juga jadi lebih kreatif. Ada yang belajar editing, bikin vlog, bahkan bisnis online sejak SMP. Artinya, digitalisasi punya potensi besar—asal nggak asal-asalan.\r\n\r\nMaka, digitalisasi pendidikan seharusnya bukan cuma soal aplikasi dan kuota. Tapi soal bagaimana teknologi bisa membuat proses belajar lebih inklusif, adaptif, dan menyenangkan. Harus ada pelatihan serius bagi guru, dukungan infrastruktur yang merata, dan kebijakan yang berpihak pada pemerataan kualitas pendidikan.\r\n\r\nKarena kalau hanya sekadar formalitas—biar kelihatan maju di laporan tahunan—maka digitalisasi hanyalah pajangan. Padahal pendidikan digital bisa jadi lompatan besar, kalau dikelola serius.\r\n\r\nJadi, sebelum kita bangga bilang “sekolah sudah digital”, mari tanya dulu: apakah semua bisa menikmatinya, dan apakah hasilnya benar-benar terasa?', 'post-images/IjFU650OIL3GXFkwBshHOhGkHIkEOPWViN5X2Vrz.jpg', '2025-05-29 09:23:34', '2025-05-29 09:23:34'),
(127, 'Si Jago Merah Dan Pasar Kolong Jembatan', 1, 3, 'lingkungan', 'Karawang,22 Mei 2025 – Terjadi kebakaran dahsyat pada 20 Mei lalu. Kebakaran terjadi pada pasar induk Bojong, Bekasi. Kejadian diperkiran akibat dari asap rokok atau mungkin ketidak sengajaan. Kebakaran terjadi pada pukul 7 malam yang diperkirakan berlangsung cukup lama. Kebakaran ini cukup menekan angka kerugian yang besar dan banyaknya bangunan pasar yang rusak. Sebagian besar warga sudah sempat melarikan diri dan tidak terdampak dari luka yang berat. Sebagian wilayah pasar yang terkena dampak peristiwa mengalami rusak berat. Sebagian besar penghuni pasar juga sempat langsung memanggil damkar serta warga setempat lainnya untuk membantu memadamkan api yang cukup menyala. Dampak dari kebakaran dahsyat ini bukan hanya untuk pasar tetapi juga pada koneksi nirkabel wifi yang sempat terhubung. Menyebabkan wifi sempat mengalami drop pada tanggal 22 Mei. Kebakaran masih diselidiki untuk penyebab dan kerugian utama yang terdampak. Dikabarkan api baru bisa padam pada pagi harinya di tanggal 21 Mei setelah bertarung dahsyat sampai pada jam 5 pagi. Reruntuhan dan berbagai puing puing masih terus ditelaah untuk dicari kembali barang yang masih dapat diselamatkan. Setelah didapatnya penyebab kebakaran, pihak pihak terkait memungkinkan untuk mengadakan regulasi ulang keamanan pasar terutama mengenai pengguaan alat masak dan sebagainya yang masih bisa dianggap penyebab kebakaran. Sempat terlihat pada Rabu lalu beberapa orang yang diduga sebagai bupati Bekasi, bupati Karawang atau bahkan Kang Dedi. Banyak yang beranggapan bahwa Kang Dedi menghampiri pasar tersebut mengingat pakaian yang dikenakan sangat mirip sekali dengan Kang Dedi atau Gurbenur Jawa Barat. Pada saat penelaah, dapat dipastikan bupati yang mendatangi pasar Bojong tersebut mengingat bahwa wajah yang terlihat tidak seperti Kang Dedi. Mengambil kesimpulan dari kejadian kali ini, Terdapat banyak perhitungan kembali mengenai bagaimana menyikapi sebuah kejadian besar. Berbagai golongan banyak yang mengambil kesempatan untuk berbondong bondong menghampiri pasar bojong mengingat sempat viral di media sosial tentang kebakaran dahsyat kali ini. Sayangnya, pihak pasar tidak ada yang dapat memberikan keterangan mengingat berbagai pihak sedang sibuk membantu untuk membereskan bekas kebakaran yang cukup membuat kerugian itu.', 'post-images/5oeFtpQzZHWplQo7zUEXCA8AfQfn1nqKvx06OfJN.jpg', '2025-05-29 09:26:34', '2025-05-29 09:26:34');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Ho2nfIBZAsu6YgoqO8Xs4avLDxBdZxLqxqc5lMKb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicTZFNDZ6UDBOZFJQUHBJSENDV3NJYld5Smc5YmdYVVFIU2F5ZWp5YSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9hcnRpa2VsMi50ZXN0L3Bvc3RzL3Nvc2lhbC1idWRheWEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjIyOiJQSFBERUJVR0JBUl9TVEFDS19EQVRBIjthOjA6e319', 1748536038),
('Z3i5irpveXVUiJ6YViz3tzu5mMGnyg2sL8NFHqXW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRXdKQVVFQmxISVJlRTNDdnhQSHowTXhEQ3JyVWZ5c04wZXJHS09NMCI7czoyMjoiUEhQREVCVUdCQVJfU1RBQ0tfREFUQSI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly9hcnRpa2VsMi50ZXN0L2Rhc2hib2FyZC9jcmVhdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1749145991);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'solihun', 'solihunsir', 'solihun@gmail.com', NULL, 'solihun123', NULL, NULL, NULL),
(2, 'Author Name 1', 'author1', 'author1@example.com', NULL, 'hashed_password_1', NULL, '2025-02-23 10:00:00', '2025-02-23 10:00:00'),
(3, 'Author Name 2', 'author2', 'author2@example.com', NULL, 'hashed_password_2', NULL, '2025-02-23 10:00:00', '2025-02-23 10:00:00'),
(4, 'Author Name 3', 'author3', 'author3@example.com', NULL, 'hashed_password_3', NULL, '2025-02-23 10:00:00', '2025-02-23 10:00:00'),
(5, 'Author Name 4', 'author4', 'author4@example.com', NULL, 'hashed_password_4', NULL, '2025-02-23 10:00:00', '2025-02-23 10:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_author_id` (`author_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
