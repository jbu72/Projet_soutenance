-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 18 août 2023 à 13:42
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `soutdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Accusamus animi eligendi omnis.', NULL, NULL),
(2, 'Consequatur dolorem quas.', NULL, NULL),
(3, 'At error ad.', NULL, NULL),
(4, 'Aspernatur dolorum nihil.', NULL, NULL),
(5, 'Fugit voluptas ducimus eum.', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_04_020715_create_permissions_table', 1),
(6, '2022_02_04_020803_create_roles_table', 1),
(7, '2022_02_04_020910_create_role_user_table', 1),
(8, '2022_02_04_021018_create_permission_role_table', 1),
(9, '2022_04_13_070826_create_categories_table', 1),
(10, '2022_04_13_070920_create_questions_table', 1),
(11, '2022_04_13_071022_create_options_table', 1),
(12, '2022_04_13_072027_create_results_table', 1),
(13, '2022_04_13_072320_create_question_result_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `option_text` longtext NOT NULL,
  `points` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `options`
--

INSERT INTO `options` (`id`, `question_id`, `option_text`, `points`, `created_at`, `updated_at`) VALUES
(1, 1, 'tenetur', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(2, 1, 'corporis', 1, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(3, 1, 'veniam', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(4, 1, 'ipsam', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(5, 2, 'reprehenderit', 1, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(6, 2, 'nisi', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(7, 2, 'corrupti', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(8, 2, 'ullam', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(9, 3, 'minus', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(10, 3, 'praesentium', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(11, 3, 'enim', 1, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(12, 3, 'eaque', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(13, 4, 'harum', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(14, 4, 'ad', 1, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(15, 4, 'suscipit', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(16, 4, 'minima', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(17, 5, 'voluptas', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(18, 5, 'non', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(19, 5, 'aut', 1, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(20, 5, 'incidunt', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(21, 6, 'nihil', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(22, 6, 'vel', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(23, 6, 'cum', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(24, 6, 'officiis', 1, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(25, 7, 'rerum', 1, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(26, 7, 'ut', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(27, 7, 'mollitia', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(28, 7, 'qui', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(29, 8, 'id', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(30, 8, 'vero', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(31, 8, 'quos', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(32, 8, 'sed', 1, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(33, 9, 'nam', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(34, 9, 'odio', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(35, 9, 'sequi', 1, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(36, 9, 'aliquid', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(37, 10, 'recusandae', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(38, 10, 'accusantium', 1, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(39, 10, 'itaque', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(40, 10, 'facere', 0, '2023-08-17 16:31:29', '2023-08-17 16:31:29');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'user_management_access', NULL, NULL),
(2, 'user_management_create', NULL, NULL),
(3, 'user_management_edit', NULL, NULL),
(4, 'user_management_view', NULL, NULL),
(5, 'user_management_delete', NULL, NULL),
(6, 'permission_access', NULL, NULL),
(7, 'permission_create', NULL, NULL),
(8, 'permission_edit', NULL, NULL),
(9, 'permission_view', NULL, NULL),
(10, 'permission_delete', NULL, NULL),
(11, 'role_access', NULL, NULL),
(12, 'role_create', NULL, NULL),
(13, 'role_edit', NULL, NULL),
(14, 'role_view', NULL, NULL),
(15, 'role_delete', NULL, NULL),
(16, 'user_access', NULL, NULL),
(17, 'user_create', NULL, NULL),
(18, 'user_edit', NULL, NULL),
(19, 'user_view', NULL, NULL),
(20, 'user_delete', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 1, NULL, NULL),
(9, 9, 1, NULL, NULL),
(10, 10, 1, NULL, NULL),
(11, 11, 1, NULL, NULL),
(12, 12, 1, NULL, NULL),
(13, 13, 1, NULL, NULL),
(14, 14, 1, NULL, NULL),
(15, 15, 1, NULL, NULL),
(16, 16, 1, NULL, NULL),
(17, 17, 1, NULL, NULL),
(18, 18, 1, NULL, NULL),
(19, 19, 1, NULL, NULL),
(20, 20, 1, NULL, NULL),
(21, 1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `question_text` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`id`, `category_id`, `question_text`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ex placeat cupiditate vel illo.', '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(2, 1, 'Fugit dignissimos quisquam.', '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(3, 2, 'Asperiores esse maiores repellendus soluta.', '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(4, 2, 'Et sunt in consequatur et exercitationem.', '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(5, 3, 'Sequi occaecati eum fugit.', '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(6, 3, 'Dicta magni quasi dolores.', '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(7, 4, 'Esse sint ut nostrum.', '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(8, 4, 'Cum repudiandae esse numquam.', '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(9, 5, 'Minima nobis tempore quod.', '2023-08-17 16:31:29', '2023-08-17 16:31:29'),
(10, 5, 'Quidem vitae et aut.', '2023-08-17 16:31:29', '2023-08-17 16:31:29');

-- --------------------------------------------------------

--
-- Structure de la table `question_result`
--

CREATE TABLE `question_result` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `result_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `points` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `question_result`
--

INSERT INTO `question_result` (`id`, `result_id`, `question_id`, `option_id`, `points`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 4, 0, NULL, NULL),
(2, 1, 2, 5, 1, NULL, NULL),
(3, 1, 3, 10, 0, NULL, NULL),
(4, 1, 4, 16, 0, NULL, NULL),
(5, 1, 5, 17, 0, NULL, NULL),
(6, 1, 6, 21, 0, NULL, NULL),
(7, 1, 7, 25, 1, NULL, NULL),
(8, 1, 8, 32, 1, NULL, NULL),
(9, 1, 9, 34, 0, NULL, NULL),
(10, 1, 10, 39, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_points` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `results`
--

INSERT INTO `results` (`id`, `user_id`, `total_points`, `created_at`, `updated_at`) VALUES
(1, 3, 3, '2023-08-17 16:36:57', '2023-08-17 16:36:57');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@example.com', NULL, '$2y$10$AJg4SS4n4CNZbKlSNUw.1unh.vevzFh8o8YZTXgYbKGoBVVKjCCP2', NULL, NULL, NULL),
(2, 'Boncoungou', 'azerty@gmail.com', NULL, '$2y$10$4ozvklEk.fNvqeICqRIS6OEP0LBml4K0T5IPiZk/bCroKoYdvNxT6', NULL, '2023-08-17 16:35:06', '2023-08-17 16:35:06'),
(3, 'jean', 'jean@gmail.com', NULL, '$2y$10$GN9K3tCVfBjk2VPeDchST.EZtUbnCVVz1L8d2VciTrv2OdBFNmRu2', NULL, '2023-08-17 16:36:30', '2023-08-17 16:36:30');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_question_id_foreign` (`question_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_category_id_foreign` (`category_id`);

--
-- Index pour la table `question_result`
--
ALTER TABLE `question_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_result_result_id_foreign` (`result_id`),
  ADD KEY `question_result_question_id_foreign` (`question_id`),
  ADD KEY `question_result_option_id_foreign` (`option_id`);

--
-- Index pour la table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `results_user_id_foreign` (`user_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `question_result`
--
ALTER TABLE `question_result`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `question_result`
--
ALTER TABLE `question_result`
  ADD CONSTRAINT `question_result_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `question_result_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `question_result_result_id_foreign` FOREIGN KEY (`result_id`) REFERENCES `results` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
