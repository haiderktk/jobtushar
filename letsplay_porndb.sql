-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Dec 24, 2016 at 02:14 PM
-- Server version: 5.6.34
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `letsplay_porndb`
--

-- --------------------------------------------------------

--
-- Table structure for table `adv`
--

CREATE TABLE IF NOT EXISTS `adv` (
  `adv_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `adv_group` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `adv_name` varchar(99) NOT NULL DEFAULT '',
  `adv_text` text NOT NULL,
  `adv_views` bigint(20) NOT NULL DEFAULT '0',
  `adv_click` bigint(20) NOT NULL DEFAULT '0',
  `adv_addtime` bigint(20) NOT NULL DEFAULT '0',
  `adv_status` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`adv_id`),
  KEY `adv_group` (`adv_group`),
  KEY `adv_addtime` (`adv_addtime`),
  KEY `adv_status` (`adv_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `adv_group`
--

CREATE TABLE IF NOT EXISTS `adv_group` (
  `advgrp_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `advgrp_name` varchar(99) NOT NULL DEFAULT '',
  `total_advs` bigint(20) NOT NULL DEFAULT '0',
  `advgrp_rotate` enum('1','0') NOT NULL DEFAULT '1',
  `advgrp_status` enum('1','0') NOT NULL DEFAULT '1',
  `adv_width` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `adv_height` tinyint(4) unsigned NOT NULL DEFAULT '0',
  KEY `advgrp_name` (`advgrp_name`),
  KEY `advgrp_rotate` (`advgrp_rotate`),
  KEY `advgrp_status` (`advgrp_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adv_group`
--

INSERT INTO `adv_group` (`advgrp_id`, `advgrp_name`, `total_advs`, `advgrp_rotate`, `advgrp_status`, `adv_width`, `adv_height`) VALUES
(1, 'index_right', 0, '1', '1', 0, 0),
(2, 'index_bottom', 0, '1', '1', 0, 0),
(3, 'videos_right', 0, '1', '1', 0, 0),
(4, 'videos_bottom', 0, '1', '1', 0, 0),
(5, 'categories_right', 0, '1', '1', 0, 0),
(6, 'categories_bottom', 0, '1', '1', 0, 0),
(7, 'community_right', 0, '1', '1', 0, 0),
(8, 'community_bottom', 0, '1', '1', 0, 0),
(9, 'blogs_lefts', 0, '1', '1', 0, 0),
(10, 'blogs_right', 0, '1', '1', 0, 0),
(11, 'blogs_bottom', 0, '1', '1', 0, 0),
(12, 'users_right', 0, '1', '1', 0, 0),
(13, 'users_bottom', 0, '1', '1', 0, 0),
(14, 'albums_right', 0, '1', '1', 0, 0),
(21, 'search_bottom', 0, '1', '1', 0, 0),
(20, 'search_right', 0, '1', '1', 0, 0),
(19, 'video_right_second', 0, '1', '1', 0, 0),
(18, 'photo_bottom', 0, '1', '1', 0, 0),
(17, 'video_bottom', 0, '1', '1', 0, 0),
(16, 'video_right', 0, '1', '1', 0, 0),
(15, 'albums_bottom', 0, '1', '1', 0, 0),
(22, 'search_photos_right', 0, '1', '1', 0, 0),
(23, 'search_photos_bottom', 0, '1', '1', 0, 0),
(24, 'search_users_right', 0, '1', '1', 0, 0),
(25, 'search_users_bottom', 0, '1', '1', 0, 0),
(26, 'games_right', 0, '1', '1', 0, 0),
(27, 'games_bottom', 0, '1', '1', 0, 0),
(28, 'game_right', 0, '1', '1', 0, 0),
(29, 'game_bottom', 0, '1', '1', 0, 0),
(30, 'game_right_second', 0, '1', '1', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `adv_media`
--

CREATE TABLE IF NOT EXISTS `adv_media` (
  `adv_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `adv_url` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `descr` text NOT NULL,
  `duration` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `media` enum('jpg','swf','flv','mp4') NOT NULL DEFAULT 'flv',
  `views` bigint(20) NOT NULL DEFAULT '0',
  `clicks` bigint(20) NOT NULL DEFAULT '0',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `status` enum('1','0') NOT NULL DEFAULT '0',
  PRIMARY KEY (`adv_id`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `adv_text`
--

CREATE TABLE IF NOT EXISTS `adv_text` (
  `adv_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `adv_url` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `descr` text NOT NULL,
  `views` bigint(20) NOT NULL DEFAULT '0',
  `clicks` bigint(20) NOT NULL DEFAULT '0',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `status` enum('1','0') NOT NULL DEFAULT '0',
  PRIMARY KEY (`adv_id`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
  `AID` bigint(20) NOT NULL AUTO_INCREMENT,
  `UID` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `tags` text NOT NULL,
  `category` tinyint(2) NOT NULL DEFAULT '0',
  `total_photos` bigint(20) NOT NULL DEFAULT '0',
  `total_views` bigint(20) NOT NULL DEFAULT '0',
  `type` enum('public','private') NOT NULL DEFAULT 'public',
  `addtime` bigint(20) NOT NULL DEFAULT '0',
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `adddate` date NOT NULL DEFAULT '0000-00-00',
  `rate` float NOT NULL DEFAULT '0',
  `ratedby` bigint(20) NOT NULL DEFAULT '0',
  `total_comments` bigint(20) NOT NULL DEFAULT '0',
  `total_favorites` bigint(20) NOT NULL DEFAULT '0',
  `likes` bigint(20) NOT NULL DEFAULT '0',
  `dislikes` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`AID`),
  KEY `UID` (`UID`),
  KEY `type` (`type`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `album_categories`
--

CREATE TABLE IF NOT EXISTS `album_categories` (
  `CID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(120) NOT NULL DEFAULT '',
  `total_albums` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE IF NOT EXISTS `bans` (
  `ban_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ban_ip` varchar(16) NOT NULL DEFAULT '',
  `ban_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ban_id`),
  KEY `ban_ip` (`ban_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `BID` bigint(20) NOT NULL AUTO_INCREMENT,
  `UID` bigint(20) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `total_views` bigint(20) NOT NULL DEFAULT '0',
  `total_comments` bigint(20) NOT NULL DEFAULT '0',
  `total_links` bigint(20) NOT NULL DEFAULT '0',
  `addtime` bigint(20) NOT NULL DEFAULT '0',
  `adddate` date NOT NULL DEFAULT '0000-00-00',
  `status` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`BID`),
  KEY `UID` (`UID`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE IF NOT EXISTS `blog_comments` (
  `CID` bigint(20) NOT NULL AUTO_INCREMENT,
  `BID` bigint(20) NOT NULL DEFAULT '0',
  `UID` bigint(20) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `addtime` bigint(20) NOT NULL DEFAULT '0',
  `status` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`CID`),
  KEY `BID` (`BID`),
  KEY `UID` (`UID`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `channel`
--

CREATE TABLE IF NOT EXISTS `channel` (
  `CHID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL DEFAULT '',
  `slug` varchar(120) NOT NULL DEFAULT '',
  `total_videos` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`CHID`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `channel`
--

INSERT INTO `channel` (`CHID`, `name`, `slug`, `total_videos`) VALUES
(2, 'Indian', 'indian', -14);

-- --------------------------------------------------------

--
-- Table structure for table `confirm`
--

CREATE TABLE IF NOT EXISTS `confirm` (
  `UID` bigint(20) NOT NULL DEFAULT '0',
  `code` varchar(10) NOT NULL DEFAULT '',
  KEY `UID` (`UID`),
  KEY `code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `confirm`
--

INSERT INTO `confirm` (`UID`, `code`) VALUES
(3, 'XIy273MQfx'),
(4, 'oDgKgkp0hp'),
(6, '46PWJzAFSX'),
(7, 'ZBd4NR4GgC');

-- --------------------------------------------------------

--
-- Table structure for table `emailinfo`
--

CREATE TABLE IF NOT EXISTS `emailinfo` (
  `email_id` varchar(50) NOT NULL DEFAULT '',
  `email_subject` varchar(255) NOT NULL DEFAULT '',
  `email_path` varchar(255) NOT NULL DEFAULT '',
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emailinfo`
--

INSERT INTO `emailinfo` (`email_id`, `email_subject`, `email_path`, `comment`) VALUES
('welcome', 'Welcome to {$site_title}', 'emails/welcome.tpl', 'Register welcome email'),
('recover_password', 'Your {$site_name} Username and Password', 'emails/recover_password.tpl', 'Recovering user login password'),
('subscribe_email', '{$sender_name} has uploaded a new video', 'emails/subscribe_email.tpl', 'Video Subscription Email'),
('friend_request', '{$username} added you as a friend on {$site_name}', 'emails/friend_request.tpl', 'Friend Request'),
('invite_friends_email', '{$sender_name} has sent you a invitation!', 'emails/invite.tpl', 'Invite friends email'),
('share_video', '{$sender_name} has sent you a video!', 'emails/share_video.tpl', 'Share video email'),
('share_photo', '{$sender_name} has sent you a photo!', 'emails/share_photo.tpl', 'Share photo email'),
('share_game', '{$sender_name} has sent you a game!', 'emails/share_game.tpl', 'Share game email'),
('verify_email', '{$site_name} Confirmation Email', 'emails/verify_email.tpl', 'Email verification'),
('video_upload', 'Your video was successfuly uploaded to {$site_name}!', 'emails/video_upload.tpl', 'Video upload email'),
('video_approve', 'Your video was successfuly uploaded to {$site_name}!', 'emails/video_approve.tpl', 'Video upload email'),
('photo_approve', 'Your album was successfuly uploaded to {$site_name}!', 'emails/photo_approve.tpl', 'Album approve email'),
('photo_upload', 'Your album was successfuly uploaded to {$site_name}!', 'emails/photo_upload.tpl', 'Album upload email'),
('game_approve', 'Your game was successfuly uploaded to {$site_name}!', 'emails/game_approve.tpl', 'Game approve email'),
('game_upload', 'Your game was successfuly uploaded to {$site_name}!', 'emails/game_upload.tpl', 'Game upload email'),
('wall_comment', 'Your received wall comment!', 'emails/wall_comment.tpl', 'Wall comment email'),
('request_approved', 'Your friend request has been approved!', 'emails/request_approved.tpl', 'Friend request approve'),
('request_rejected', 'Your friend request has been approved!', 'emails/request_rejected.tpl', 'Friend request rejected'),
('video_comment', 'You received video comment from {$username}!', 'emails/video_comment.tpl', 'video comment'),
('blog_comment', 'You received blog comment from {$username}!', 'emails/blog_comment.tpl', 'blog comment'),
('game_comment', 'You received game comment from {$username}!', 'emails/game_comment.tpl', 'game comment'),
('photo_comment', 'You received photo comment from {$username}!', 'emails/photo_comment.tpl', 'photo comment'),
('player_email', 'I want to share this video with you!', 'emails/player_email.tpl', 'Player email');

-- --------------------------------------------------------

--
-- Table structure for table `encoding_avs`
--

CREATE TABLE IF NOT EXISTS `encoding_avs` (
  `video_type` varchar(10) NOT NULL DEFAULT '',
  `aspect` varchar(10) NOT NULL DEFAULT '',
  `encode_seq` int(11) NOT NULL DEFAULT '0',
  `action` varchar(20) NOT NULL DEFAULT '',
  `ovc_profile` varchar(20) NOT NULL DEFAULT 'standard',
  `resize_base` varchar(10) NOT NULL DEFAULT '',
  `resize_width` int(11) NOT NULL DEFAULT '0',
  `resize_height` int(11) NOT NULL DEFAULT '0',
  `ref_bitrate` int(11) NOT NULL DEFAULT '0',
  `ref_type` varchar(10) NOT NULL DEFAULT '',
  `ref_width` int(11) NOT NULL DEFAULT '0',
  `ref_height` int(11) NOT NULL DEFAULT '0',
  `encodepass` tinyint(1) NOT NULL DEFAULT '1',
  `blackbars` tinyint(1) NOT NULL DEFAULT '0',
  `audio_sampling` int(5) NOT NULL,
  `audio_bitrate` int(5) NOT NULL,
  `nameext` varchar(10) NOT NULL DEFAULT '',
  `fileext` varchar(10) NOT NULL DEFAULT 'flv',
  PRIMARY KEY (`video_type`,`aspect`,`encode_seq`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `encoding_avs`
--

INSERT INTO `encoding_avs` (`video_type`, `aspect`, `encode_seq`, `action`, `ovc_profile`, `resize_base`, `resize_width`, `resize_height`, `ref_bitrate`, `ref_type`, `ref_width`, `ref_height`, `encodepass`, `blackbars`, `audio_sampling`, `audio_bitrate`, `nameext`, `fileext`) VALUES
('flv', 'all', 1, 'copy_only', 'standard', '', 0, 0, 0, '', 0, 0, 1, 0, 0, 0, '', 'flv'),
('normal', 'all', 1, 'encode_h263', 'standard', 'both', 853, 480, 800, 'fix', 640, 480, 1, 0, 44100, 128, '', 'flv'),
('normal', 'all', 2, 'encode_x264', 'standard', 'both', 1280, 720, 1500, 'standard', 1280, 720, 2, 0, 44100, 256, '', 'mp4'),
('normal', 'all', 3, 'encode_ipod', 'standard', 'both', 768, 432, 750, 'standard', 1280, 720, 1, 0, 44100, 128, '', 'mp4');

-- --------------------------------------------------------

--
-- Table structure for table `encoding_condition`
--

CREATE TABLE IF NOT EXISTS `encoding_condition` (
  `video_type` varchar(10) NOT NULL DEFAULT '',
  `aspect` varchar(10) NOT NULL DEFAULT '',
  `encode_seq` int(11) NOT NULL DEFAULT '0',
  `condition_seq` int(11) NOT NULL DEFAULT '0',
  `condition_type` varchar(20) NOT NULL DEFAULT '',
  `condition_operator` varchar(10) NOT NULL DEFAULT '',
  `condition_value` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`video_type`,`aspect`,`encode_seq`,`condition_seq`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `encoding_condition`
--

INSERT INTO `encoding_condition` (`video_type`, `aspect`, `encode_seq`, `condition_seq`, `condition_type`, `condition_operator`, `condition_value`) VALUES
('normal', 'all', 2, 1, 'width', 'gt', '479');

-- --------------------------------------------------------

--
-- Table structure for table `favourite`
--

CREATE TABLE IF NOT EXISTS `favourite` (
  `UID` bigint(20) NOT NULL DEFAULT '0',
  `VID` bigint(20) NOT NULL DEFAULT '0',
  UNIQUE KEY `UID` (`UID`,`VID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
  `UID` bigint(20) NOT NULL DEFAULT '0',
  `FID` bigint(20) NOT NULL DEFAULT '0',
  `invite_date` date NOT NULL DEFAULT '0000-00-00',
  `status` enum('Pending','Confirmed','Denied') NOT NULL DEFAULT 'Pending',
  `message` text NOT NULL,
  KEY `UID_FID` (`UID`,`FID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE IF NOT EXISTS `game` (
  `GID` bigint(20) NOT NULL AUTO_INCREMENT,
  `UID` bigint(20) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `tags` text NOT NULL,
  `category` tinyint(3) NOT NULL DEFAULT '0',
  `total_plays` bigint(20) NOT NULL DEFAULT '0',
  `total_comments` bigint(20) NOT NULL DEFAULT '0',
  `total_favorites` bigint(20) NOT NULL DEFAULT '0',
  `rate` float NOT NULL DEFAULT '0',
  `ratedby` bigint(20) NOT NULL DEFAULT '0',
  `type` enum('public','private') NOT NULL DEFAULT 'public',
  `space` bigint(20) NOT NULL DEFAULT '0',
  `playtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `be_commented` enum('yes','no') NOT NULL DEFAULT 'yes',
  `be_rated` enum('yes','no') NOT NULL DEFAULT 'yes',
  `addtime` bigint(20) NOT NULL DEFAULT '0',
  `adddate` date NOT NULL DEFAULT '0000-00-00',
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `likes` bigint(20) NOT NULL DEFAULT '0',
  `dislikes` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`GID`),
  KEY `UID` (`UID`),
  KEY `type` (`type`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `game_categories`
--

CREATE TABLE IF NOT EXISTS `game_categories` (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(120) NOT NULL DEFAULT '',
  `total_games` bigint(20) NOT NULL DEFAULT '0',
  `status` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`category_id`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `game_comments`
--

CREATE TABLE IF NOT EXISTS `game_comments` (
  `CID` bigint(20) NOT NULL AUTO_INCREMENT,
  `GID` bigint(20) NOT NULL DEFAULT '0',
  `UID` bigint(20) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `addtime` bigint(20) NOT NULL DEFAULT '0',
  `status` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`CID`),
  KEY `GID` (`GID`),
  KEY `UID` (`UID`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `game_favorites`
--

CREATE TABLE IF NOT EXISTS `game_favorites` (
  `GID` bigint(20) NOT NULL DEFAULT '0',
  `UID` bigint(20) NOT NULL DEFAULT '0',
  KEY `GID` (`GID`),
  KEY `UID` (`UID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `game_flags`
--

CREATE TABLE IF NOT EXISTS `game_flags` (
  `FID` bigint(20) NOT NULL AUTO_INCREMENT,
  `GID` bigint(20) NOT NULL DEFAULT '0',
  `UID` bigint(20) NOT NULL DEFAULT '0',
  `reason` varchar(15) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `add_date` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`FID`),
  KEY `GID_UID` (`GID`,`UID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `game_rating_id`
--

CREATE TABLE IF NOT EXISTS `game_rating_id` (
  `GID` bigint(20) NOT NULL DEFAULT '0',
  `UID` bigint(20) NOT NULL DEFAULT '0',
  KEY `GID` (`GID`),
  KEY `UID` (`UID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `game_rating_ip`
--

CREATE TABLE IF NOT EXISTS `game_rating_ip` (
  `GID` bigint(20) NOT NULL DEFAULT '0',
  `ip` int(9) NOT NULL DEFAULT '0',
  KEY `GID` (`GID`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `grab`
--

CREATE TABLE IF NOT EXISTS `grab` (
  `site` varchar(50) NOT NULL DEFAULT '',
  `id` varchar(255) NOT NULL DEFAULT '',
  KEY `site_id` (`site`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `grab_cron`
--

CREATE TABLE IF NOT EXISTS `grab_cron` (
  `grab_id` varchar(20) NOT NULL DEFAULT '',
  `grab_interval` varchar(7) NOT NULL DEFAULT '',
  `grab_number` tinyint(3) NOT NULL DEFAULT '0',
  `status` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`grab_id`),
  KEY `grab_interval` (`grab_interval`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `grab_cron`
--

INSERT INTO `grab_cron` (`grab_id`, `grab_interval`, `grab_number`, `status`) VALUES
('youporn', '', 1, '1'),
('pornhub', '', 1, '0'),
('wanktube', '', 1, '0'),
('snizzshare', '', 1, '0'),
('nudevibes', '', 1, '0'),
('tube8', '', 2, '0'),
('haporn', '', 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE IF NOT EXISTS `guests` (
  `guest_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `guest_ip` int(9) NOT NULL DEFAULT '0',
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bandwidth` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guest_id`),
  KEY `guest_ip` (`guest_ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`guest_id`, `guest_ip`, `last_login`, `bandwidth`) VALUES
(1, 2147483647, '2016-12-18 06:05:37', 0),
(2, 2147483647, '2016-12-20 05:33:23', 58276752),
(3, 2147483647, '2016-12-20 05:34:29', 58276752),
(4, 2147483647, '2016-12-20 05:37:38', 58276752),
(5, 2147483647, '2016-12-20 05:37:42', 58276752),
(6, 2147483647, '2016-12-20 05:47:22', 71110995),
(7, 2147483647, '2016-12-20 05:51:16', 71110995),
(8, 2147483647, '2016-12-20 05:51:24', 58276752),
(9, 2147483647, '2016-12-20 05:51:29', 71110995),
(10, 2147483647, '2016-12-20 06:05:34', 39074421),
(11, 2147483647, '2016-12-20 06:06:21', 39074421),
(12, 2147483647, '2016-12-20 06:12:35', 39074421),
(13, 2147483647, '2016-12-20 06:16:46', 21653331),
(14, 2147483647, '2016-12-20 06:18:45', 21653331),
(15, 2147483647, '2016-12-20 06:27:58', 21653331),
(16, 1123633957, '2016-12-23 11:50:00', 351669789),
(17, 1123633960, '2016-12-23 05:48:28', 334248699),
(18, 1123633954, '2016-12-23 08:46:24', 259121373),
(19, 1123632582, '2016-12-22 06:50:03', 124836395),
(20, 1123632587, '2016-12-22 06:47:35', 63749268),
(21, 1123632592, '2016-12-22 06:50:03', 64108643),
(22, 1741885002, '2016-12-21 10:48:05', 182183256),
(23, 872358144, '2016-12-21 02:08:00', 21653331),
(24, 1053959506, '2016-12-21 02:08:49', 21653331),
(25, 2147483647, '2016-12-21 02:09:17', 39074421),
(26, 2147483647, '2016-12-21 02:17:07', 21653331),
(27, 1123635847, '2016-12-21 03:48:32', 39074421),
(28, 2058017199, '2016-12-21 06:01:04', 60727752),
(29, 1732773601, '2016-12-21 07:46:03', 64959993),
(30, 2147483647, '2016-12-21 07:05:18', 39074421),
(31, 2147483647, '2016-12-21 07:05:38', 39074421),
(32, 2147483647, '2016-12-21 07:05:45', 21653331),
(33, 1123631446, '2016-12-22 11:17:45', 117223263),
(34, 1123631452, '2016-12-22 02:52:41', 117223263),
(35, 1123631450, '2016-12-22 02:52:41', 156297684),
(36, 2147483647, '2016-12-22 05:57:02', 21653331),
(37, 2147483647, '2016-12-22 07:14:04', 21653331),
(38, 2147483647, '2016-12-22 07:14:21', 39074421),
(39, 2147483647, '2016-12-22 07:21:16', 0),
(40, 2147483647, '2016-12-22 07:21:29', 0),
(41, 2147483647, '2016-12-22 07:21:33', 39074421),
(42, 2147483647, '2016-12-22 07:24:03', 39074421),
(43, 2147483647, '2016-12-22 07:46:25', 21653331),
(44, 2147483647, '2016-12-22 07:48:53', 39074421),
(45, 2058462700, '2016-12-22 08:33:03', 160529925),
(46, 2147483647, '2016-12-22 10:08:43', 24192447),
(47, 2147483647, '2016-12-22 02:40:03', 25034222),
(48, 1123631426, '2016-12-22 03:17:33', 25034222),
(49, 1123631430, '2016-12-22 03:17:33', 25034222),
(50, 1123631569, '2016-12-22 03:36:04', 25034222),
(51, 1123631565, '2016-12-22 03:36:05', 25034222),
(52, 223131418, '2016-12-22 04:03:39', 51579202),
(53, 1921993567, '2016-12-23 01:07:01', 25034222),
(54, 2147483647, '2016-12-23 09:26:04', 25034222),
(55, 2147483647, '2016-12-23 09:26:17', 25034222),
(56, 2147483647, '2016-12-23 09:26:22', 1510758),
(57, 1089056024, '2016-12-23 02:43:07', 1510758),
(58, 2147483647, '2016-12-23 05:18:07', 1510758),
(59, 1123635042, '2016-12-23 05:48:28', 39074421),
(60, 2147483647, '2016-12-24 04:40:44', 1510758);

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE IF NOT EXISTS `mail` (
  `mail_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sender` varchar(15) NOT NULL DEFAULT '',
  `receiver` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `inbox` enum('1','0') NOT NULL DEFAULT '1',
  `outbox` enum('1','0') NOT NULL DEFAULT '0',
  `send_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `readed` enum('1','0') NOT NULL DEFAULT '0',
  PRIMARY KEY (`mail_id`),
  KEY `sender` (`sender`),
  KEY `receiver` (`receiver`),
  KEY `inbox` (`inbox`),
  KEY `outbox` (`outbox`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mass_embedder`
--

CREATE TABLE IF NOT EXISTS `mass_embedder` (
  `site` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  KEY `site` (`site`),
  KEY `url` (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mass_embedder`
--

INSERT INTO `mass_embedder` (`site`, `url`) VALUES
('redtube', 'http://www.redtube.com/1743820'),
('redtube', 'http://www.redtube.com/1363331'),
('redtube', 'http://www.redtube.com/1459971'),
('redtube', 'http://www.redtube.com/1710391'),
('redtube', 'http://www.redtube.com/1439640'),
('redtube', 'http://www.redtube.com/1739298'),
('redtube', 'http://www.redtube.com/1706327'),
('redtube', 'http://www.redtube.com/1394857');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
  `NID` bigint(20) NOT NULL AUTO_INCREMENT,
  `UID` bigint(20) NOT NULL DEFAULT '0',
  `category` tinyint(3) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `total_views` bigint(20) NOT NULL DEFAULT '0',
  `total_comments` bigint(20) NOT NULL DEFAULT '0',
  `total_links` bigint(20) NOT NULL DEFAULT '0',
  `addtime` bigint(20) NOT NULL DEFAULT '0',
  `adddate` date NOT NULL DEFAULT '0000-00-00',
  `status` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`NID`),
  KEY `UID` (`UID`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `notice_categories`
--

CREATE TABLE IF NOT EXISTS `notice_categories` (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `total_notices` bigint(20) NOT NULL DEFAULT '0',
  `status` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `notice_comments`
--

CREATE TABLE IF NOT EXISTS `notice_comments` (
  `CID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NID` bigint(20) NOT NULL DEFAULT '0',
  `UID` bigint(20) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `addtime` bigint(20) NOT NULL DEFAULT '0',
  `status` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`CID`),
  KEY `NID` (`NID`),
  KEY `UID` (`UID`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `notice_images`
--

CREATE TABLE IF NOT EXISTS `notice_images` (
  `image_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` bigint(20) NOT NULL DEFAULT '0',
  `extension` varchar(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`image_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `PID` bigint(20) NOT NULL AUTO_INCREMENT,
  `AID` bigint(20) NOT NULL DEFAULT '0',
  `caption` varchar(100) NOT NULL DEFAULT '',
  `total_views` bigint(20) NOT NULL DEFAULT '0',
  `total_comments` bigint(20) NOT NULL DEFAULT '0',
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `rate` float NOT NULL DEFAULT '0',
  `ratedby` bigint(20) NOT NULL DEFAULT '0',
  `total_favorites` bigint(20) NOT NULL DEFAULT '0',
  `type` enum('public','private') NOT NULL DEFAULT 'public',
  `likes` bigint(20) NOT NULL DEFAULT '0',
  `dislikes` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`PID`),
  KEY `AID` (`AID`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `photo_comments`
--

CREATE TABLE IF NOT EXISTS `photo_comments` (
  `CID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PID` bigint(20) NOT NULL DEFAULT '0',
  `UID` bigint(20) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `addtime` bigint(20) NOT NULL DEFAULT '0',
  `status` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`CID`),
  KEY `PID` (`PID`),
  KEY `UID` (`UID`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `photo_favorites`
--

CREATE TABLE IF NOT EXISTS `photo_favorites` (
  `PID` bigint(20) NOT NULL DEFAULT '0',
  `UID` bigint(20) NOT NULL DEFAULT '0',
  KEY `PID` (`PID`),
  KEY `UID` (`UID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `photo_flags`
--

CREATE TABLE IF NOT EXISTS `photo_flags` (
  `FID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PID` bigint(20) NOT NULL DEFAULT '0',
  `UID` bigint(20) NOT NULL DEFAULT '0',
  `reason` varchar(15) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `add_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`FID`),
  KEY `PID` (`PID`),
  KEY `UID` (`UID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `photo_rating_id`
--

CREATE TABLE IF NOT EXISTS `photo_rating_id` (
  `PID` bigint(20) NOT NULL DEFAULT '0',
  `UID` bigint(20) NOT NULL DEFAULT '0',
  KEY `PID` (`PID`),
  KEY `UID` (`UID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `photo_rating_ip`
--

CREATE TABLE IF NOT EXISTS `photo_rating_ip` (
  `PID` bigint(20) NOT NULL DEFAULT '0',
  `ip` int(9) NOT NULL DEFAULT '0',
  KEY `PID` (`PID`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE IF NOT EXISTS `player` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `profile` varchar(255) NOT NULL DEFAULT '',
  `autorun` enum('true','false') NOT NULL DEFAULT 'false',
  `buffertime` tinyint(2) unsigned NOT NULL DEFAULT '5',
  `buttons` enum('0','1') NOT NULL DEFAULT '1',
  `logo_url` varchar(255) NOT NULL DEFAULT '',
  `logo_position` varchar(2) NOT NULL DEFAULT 'BR',
  `logo_link` varchar(255) NOT NULL DEFAULT '',
  `logo_alpha` tinyint(2) unsigned NOT NULL DEFAULT '10',
  `text_adv` enum('0','1') NOT NULL DEFAULT '1',
  `text_adv_type` enum('global','video','channel') NOT NULL DEFAULT 'global',
  `text_adv_delay` tinyint(3) unsigned NOT NULL DEFAULT '5',
  `video_adv` enum('0','1') NOT NULL DEFAULT '1',
  `video_adv_type` enum('global','video','channel') NOT NULL DEFAULT 'global',
  `video_adv_position` enum('b','e','be') NOT NULL DEFAULT 'be',
  `skin` varchar(255) NOT NULL DEFAULT 'default',
  `embed` enum('0','1') NOT NULL DEFAULT '1',
  `related` enum('0','1') NOT NULL DEFAULT '1',
  `related_content` enum('related','featured','commented','rated','viewed') NOT NULL DEFAULT 'related',
  `share` enum('0','1') NOT NULL DEFAULT '1',
  `mail` enum('0','1') NOT NULL DEFAULT '1',
  `replay` enum('0','1') NOT NULL DEFAULT '1',
  `mail_color` varchar(8) NOT NULL DEFAULT '0x999999',
  `related_color` varchar(8) NOT NULL DEFAULT '0x999999',
  `replay_color` varchar(8) NOT NULL DEFAULT '0x999999',
  `embed_color` varchar(8) NOT NULL DEFAULT '0x999999',
  `copy_color` varchar(8) NOT NULL DEFAULT '0x999999',
  `time_color` varchar(8) NOT NULL DEFAULT '0x999999',
  `share_color` varchar(8) NOT NULL DEFAULT '0x999999',
  `adv_nav_color` varchar(8) NOT NULL DEFAULT '0x999999',
  `adv_title_color` varchar(8) NOT NULL DEFAULT '0x999999',
  `adv_body_color` varchar(8) NOT NULL DEFAULT '0x999999',
  `adv_link_color` varchar(8) NOT NULL DEFAULT '0x999900',
  `status` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `profile` (`profile`),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`id`, `profile`, `autorun`, `buffertime`, `buttons`, `logo_url`, `logo_position`, `logo_link`, `logo_alpha`, `text_adv`, `text_adv_type`, `text_adv_delay`, `video_adv`, `video_adv_type`, `video_adv_position`, `skin`, `embed`, `related`, `related_content`, `share`, `mail`, `replay`, `mail_color`, `related_color`, `replay_color`, `embed_color`, `copy_color`, `time_color`, `share_color`, `adv_nav_color`, `adv_title_color`, `adv_body_color`, `adv_link_color`, `status`) VALUES
(1, 'default', 'true', 3, '1', '', 'BR', '', 10, '1', 'global', 5, '1', 'global', 'b', 'default', '1', '1', 'related', '1', '1', '1', '0x999999', '0x999999', '0x999999', '0x999999', '0x000000', '0x999999', '0x999999', '0x999999', '0xffa200', '0xf1f1f1', '0x999999', '1');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE IF NOT EXISTS `playlist` (
  `UID` bigint(20) DEFAULT NULL,
  `VID` bigint(20) DEFAULT NULL,
  UNIQUE KEY `UID` (`UID`,`VID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`UID`, `VID`) VALUES
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `servers`
--

CREATE TABLE IF NOT EXISTS `servers` (
  `server_id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL DEFAULT '',
  `video_url` varchar(255) NOT NULL DEFAULT '',
  `server_ip` varchar(255) NOT NULL DEFAULT '',
  `ftp_username` varchar(255) NOT NULL DEFAULT '',
  `ftp_password` varchar(255) NOT NULL DEFAULT '',
  `ftp_root` varchar(255) NOT NULL DEFAULT '',
  `last_used` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `current_used` enum('0','1') NOT NULL DEFAULT '0',
  `status` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`server_id`),
  UNIQUE KEY `url` (`url`),
  KEY `last_used` (`last_used`),
  KEY `current_used` (`current_used`),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `servers`
--

INSERT INTO `servers` (`server_id`, `url`, `video_url`, `server_ip`, `ftp_username`, `ftp_password`, `ftp_root`, `last_used`, `current_used`, `status`) VALUES
(2, 'http://www.hdsexyclips.com', 'http://www.hdsexyclips.com/media/videos', '192.99.136.127', 'hdsexycl', 'U476l1luRg', 'ftp://192.99.136.127/public_html/media/videos', '0000-00-00 00:00:00', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_expires` int(10) unsigned NOT NULL DEFAULT '0',
  `session_data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `session_expires`, `session_data`) VALUES
('4hgc0ic6ckga1tlj741hr7fjo7', 1482587393, 'language|s:5:"en_US";'),
('9cqk1cn5o82spj2dpc59clthv2', 1482587409, 'language|s:5:"en_US";'),
('7plm661lvfk7pre21dhtiofbr0', 1482587357, 'language|s:5:"en_US";'),
('1t2b553ls9fucjc3b708g84ul0', 1482587771, 'language|s:5:"en_US";'),
('crknaus4afqmc3j237b1gqd104', 1482586295, 'language|s:5:"en_US";'),
('5qq2q8j9d380ke1tq4kh56v564', 1482586294, 'language|s:5:"en_US";'),
('bckd0d57p83ce32nljf92jeot5', 1482586056, 'language|s:5:"en_US";'),
('nc33upb5p1i2ilsk02c2l9eaf4', 1482586056, 'language|s:5:"en_US";'),
('4t41v6ibhbl5ln0388g78ftdm3', 1482588125, 'language|s:5:"en_US";'),
('s0fq3cqb2mp4kilkft8ckhpkp4', 1482588125, 'language|s:5:"en_US";'),
('d3qlq9lgl7sgftc4njnmua12d3', 1482587942, 'language|s:5:"en_US";'),
('97vjkekqf74hebl28nn41g1b55', 1482587942, 'language|s:5:"en_US";'),
('u2jop536h185mtec0r503u98r2', 1482587759, 'language|s:5:"en_US";'),
('ejtilnq1armg0vq28k42h32m36', 1482587759, 'language|s:5:"en_US";'),
('j7lbm2k82fkpu6t6k2du0v1046', 1482587393, 'language|s:5:"en_US";');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE IF NOT EXISTS `signup` (
  `UID` bigint(20) NOT NULL AUTO_INCREMENT,
  `FBID` varchar(100) NOT NULL DEFAULT '',
  `GID` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `username` varchar(80) NOT NULL DEFAULT '',
  `fname` varchar(40) NOT NULL DEFAULT '',
  `lname` varchar(40) NOT NULL DEFAULT '',
  `bdate` date NOT NULL DEFAULT '0000-00-00',
  `gender` varchar(6) NOT NULL DEFAULT '',
  `relation` varchar(8) NOT NULL DEFAULT '',
  `aboutme` text NOT NULL,
  `website` varchar(120) NOT NULL DEFAULT '',
  `town` varchar(80) NOT NULL DEFAULT '',
  `city` varchar(80) NOT NULL DEFAULT '',
  `zip` varchar(30) NOT NULL DEFAULT '',
  `country` varchar(80) NOT NULL DEFAULT '',
  `occupation` text NOT NULL,
  `company` text NOT NULL,
  `school` text NOT NULL,
  `interest_hobby` text NOT NULL,
  `fav_movie_show` text NOT NULL,
  `fav_music` text NOT NULL,
  `fav_book` text NOT NULL,
  `friends_type` varchar(255) NOT NULL DEFAULT 'All|Family|Friends',
  `video_viewed` int(10) NOT NULL DEFAULT '0',
  `profile_viewed` int(10) NOT NULL DEFAULT '0',
  `watched_video` int(10) NOT NULL DEFAULT '0',
  `addtime` varchar(20) NOT NULL DEFAULT '',
  `logintime` varchar(20) NOT NULL DEFAULT '',
  `emailverified` varchar(3) NOT NULL DEFAULT 'no',
  `account_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `vote` varchar(5) NOT NULL DEFAULT '',
  `ratedby` varchar(5) NOT NULL DEFAULT '0',
  `rate` float NOT NULL DEFAULT '0',
  `parents_name` varchar(50) NOT NULL DEFAULT '',
  `parents_email` varchar(50) NOT NULL DEFAULT '',
  `friends_name` varchar(50) NOT NULL DEFAULT '',
  `friends_email` varchar(50) NOT NULL DEFAULT '',
  `photo` varchar(100) NOT NULL DEFAULT '',
  `playlist` enum('Public','Private') NOT NULL DEFAULT 'Public',
  `user_ip` varchar(16) NOT NULL DEFAULT '',
  `pwd` varchar(60) NOT NULL DEFAULT '',
  `interested` varchar(12) NOT NULL DEFAULT '',
  `turnon` text NOT NULL,
  `turnoff` text NOT NULL,
  `total_albums` bigint(20) NOT NULL DEFAULT '0',
  `total_blogs` bigint(20) NOT NULL DEFAULT '0',
  `total_videos` bigint(20) NOT NULL DEFAULT '0',
  `total_friends` bigint(20) NOT NULL DEFAULT '0',
  `popularity` bigint(20) NOT NULL DEFAULT '0',
  `total_games` bigint(20) NOT NULL DEFAULT '0',
  `points` bigint(20) NOT NULL DEFAULT '0',
  `premium` int(11) NOT NULL,
  `premiumexpirytime` date NOT NULL,
  `likes` bigint(20) NOT NULL DEFAULT '0',
  `dislikes` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UID`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`UID`, `FBID`, `GID`, `email`, `username`, `fname`, `lname`, `bdate`, `gender`, `relation`, `aboutme`, `website`, `town`, `city`, `zip`, `country`, `occupation`, `company`, `school`, `interest_hobby`, `fav_movie_show`, `fav_music`, `fav_book`, `friends_type`, `video_viewed`, `profile_viewed`, `watched_video`, `addtime`, `logintime`, `emailverified`, `account_status`, `vote`, `ratedby`, `rate`, `parents_name`, `parents_email`, `friends_name`, `friends_email`, `photo`, `playlist`, `user_ip`, `pwd`, `interested`, `turnon`, `turnoff`, `total_albums`, `total_blogs`, `total_videos`, `total_friends`, `popularity`, `total_games`, `points`, `premium`, `premiumexpirytime`, `likes`, `dislikes`) VALUES
(1, '', '', 'anonymous@yoursite.com', 'anonymous', '', '', '0000-00-00', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'All|Family|Friends', 388, 43, 0, '1228326055', '1228326055', 'no', 'Active', '', '1', 100, '', '', '', '', '', 'Public', '', '$2a$08$/gSIczQwLZElwKTKZBVhCObjlFjEDi1bSsw4TIqkmzU.AGoHaO5r.', '', '', '', 5, 0, 11, 0, -2, 2, 30, 0, '0000-00-00', 1, 0),
(2, '', '', 'amarjeetanand87@gmail.com', 'anandimhere', '', '', '0000-00-00', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'All|Family|Friends', 0, 10, 0, '1482079202', '1482079690', 'yes', 'Active', '', '0', 0, '', '', '', '', '', 'Public', '103.211.16.186', '1fd96777aedeadb325c66f3780054765', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00', 0, 0),
(3, '', '', 'richasharma@gmail.com', 'richasharma', '', '', '0000-00-00', 'Female', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'All|Family|Friends', 0, 1, 0, '1482410196', '1482410212', 'no', 'Active', '', '0', 0, '', '', '', '', '', 'Public', '175.111.180.130', 'c2be41b1790a1cc0cd726c2cee1d05b4', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00', 0, 0),
(4, '', '', 'tusharrods@gmail.com', 'richasharmas', '', '', '0000-00-00', 'Female', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'All|Family|Friends', 21, 6, 9, '1482410335', '1482419381', 'yes', 'Active', '', '0', 0, '', '', '', '', '', 'Public', '175.111.180.130', 'c2be41b1790a1cc0cd726c2cee1d05b4', '', '', '', 0, 0, 2, 0, 0, 0, 20, 0, '0000-00-00', 0, 0),
(5, '', '', 'boon@amyshare.info', 'boon', '', '', '0000-00-00', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'All|Family|Friends', 23, 5, 2, '1482422290', '1482559466', 'yes', 'Active', '', '0', 0, '', '', '', '', '', 'Public', '104.128.68.185', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', 0, 0, 3, 0, 0, 0, 35, 0, '0000-00-00', 0, 0),
(6, '', '', 'jennycalifer@yopmail.com', 'Jennycalifer', '', '', '0000-00-00', 'Female', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'All|Family|Friends', 0, 0, 0, '1482565112', '1482565112', 'no', 'Active', '', '0', 0, '', '', '', '', '', 'Public', '', 'ebe6941ee8a10c14dc933ae37a0f43fc', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00', 0, 0),
(7, '', '', 'jenny@yopmail.com', 'jennycalifer1', '', '', '0000-00-00', 'Female', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'All|Family|Friends', 0, 0, 0, '1482565168', '1482565168', 'no', 'Active', '', '0', 0, '', '', '', '', '', 'Public', '', 'ebe6941ee8a10c14dc933ae37a0f43fc', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00', 0, 0),
(8, '', '', 'smartaskers@outlook.com', 'admin', 'smart', 'taskers', '0000-00-00', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'All|Family|Friends', 0, 0, 0, '1482574712', '1482574712', 'yes', 'Active', '', '0', 0, '', '', '', '', '', 'Public', '', 'b4fa0f26a351e43e5ea679a568151b22', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `spam`
--

CREATE TABLE IF NOT EXISTS `spam` (
  `spam_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `UID` bigint(20) NOT NULL DEFAULT '0',
  `type` enum('video','photo','wall','notice','blog','game') NOT NULL DEFAULT 'video',
  `parent_id` bigint(20) NOT NULL DEFAULT '0',
  `comment_id` bigint(20) NOT NULL DEFAULT '0',
  `addtime` bigint(20) NOT NULL DEFAULT '0',
  `adddate` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`spam_id`),
  KEY `type` (`type`),
  KEY `parent_id` (`parent_id`),
  KEY `comment_id` (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_blocks`
--

CREATE TABLE IF NOT EXISTS `users_blocks` (
  `UID` bigint(20) NOT NULL DEFAULT '0',
  `BID` bigint(20) NOT NULL DEFAULT '0',
  KEY `UID` (`UID`),
  KEY `BID` (`BID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_blocks`
--

INSERT INTO `users_blocks` (`UID`, `BID`) VALUES
(2, 11),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users_flags`
--

CREATE TABLE IF NOT EXISTS `users_flags` (
  `flag_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `UID` bigint(20) NOT NULL DEFAULT '0',
  `RID` bigint(20) NOT NULL DEFAULT '0',
  `reason` enum('offensive','underage','spammer','other') NOT NULL DEFAULT 'offensive',
  `message` varchar(100) NOT NULL DEFAULT '',
  `addtime` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`flag_id`),
  KEY `UID` (`UID`),
  KEY `RID` (`RID`),
  KEY `reason` (`reason`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE IF NOT EXISTS `users_online` (
  `UID` bigint(20) NOT NULL DEFAULT '0',
  `online` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UID`),
  KEY `online` (`online`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`UID`, `online`) VALUES
(2, 1482080017),
(3, 1482410298),
(4, 1482419481),
(5, 1482563071),
(6, 1482565112),
(7, 1482565168),
(8, 1482574712);

-- --------------------------------------------------------

--
-- Table structure for table `users_prefs`
--

CREATE TABLE IF NOT EXISTS `users_prefs` (
  `UID` bigint(20) NOT NULL DEFAULT '0',
  `show_playlist` enum('0','1','2') NOT NULL DEFAULT '2',
  `show_favorites` enum('0','1','2') NOT NULL DEFAULT '2',
  `show_friends` enum('0','1','2') NOT NULL DEFAULT '2',
  `show_subscriptions` enum('0','1','2') NOT NULL DEFAULT '2',
  `show_subscribers` enum('0','1','2') NOT NULL DEFAULT '2',
  `friends_requests` enum('0','1') NOT NULL DEFAULT '0',
  `wall_public` enum('0','1') NOT NULL DEFAULT '1',
  `video_approve` enum('0','1') NOT NULL DEFAULT '1',
  `album_approve` enum('0','1') NOT NULL DEFAULT '1',
  `video_subscribe` enum('0','1') NOT NULL DEFAULT '1',
  `friend_request` enum('0','1') NOT NULL DEFAULT '1',
  `wall_write` enum('0','1') NOT NULL DEFAULT '1',
  `video_comment` enum('0','1') NOT NULL DEFAULT '1',
  `photo_comment` enum('0','1') NOT NULL DEFAULT '1',
  `blog_comment` enum('0','1') NOT NULL DEFAULT '1',
  `send_message` enum('0','1') NOT NULL DEFAULT '1',
  `game_comment` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`UID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_prefs`
--

INSERT INTO `users_prefs` (`UID`, `show_playlist`, `show_favorites`, `show_friends`, `show_subscriptions`, `show_subscribers`, `friends_requests`, `wall_public`, `video_approve`, `album_approve`, `video_subscribe`, `friend_request`, `wall_write`, `video_comment`, `photo_comment`, `blog_comment`, `send_message`, `game_comment`) VALUES
(1, '2', '2', '2', '2', '2', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(2, '2', '2', '2', '2', '2', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(3, '2', '2', '2', '2', '2', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(4, '2', '2', '2', '2', '2', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(5, '2', '2', '2', '2', '2', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(6, '2', '2', '2', '2', '2', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(7, '2', '2', '2', '2', '2', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(8, '2', '2', '2', '2', '2', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users_rating_id`
--

CREATE TABLE IF NOT EXISTS `users_rating_id` (
  `UID` bigint(20) NOT NULL DEFAULT '0',
  `RID` bigint(20) NOT NULL DEFAULT '0',
  KEY `UID` (`UID`),
  KEY `RID` (`RID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_rating_ip`
--

CREATE TABLE IF NOT EXISTS `users_rating_ip` (
  `UID` bigint(20) NOT NULL DEFAULT '0',
  `ip` int(9) NOT NULL DEFAULT '0',
  KEY `UID` (`UID`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE IF NOT EXISTS `video` (
  `VID` bigint(20) NOT NULL AUTO_INCREMENT,
  `UID` bigint(20) NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `featuredesc` text NOT NULL,
  `keyword` text NOT NULL,
  `channel` varchar(255) NOT NULL DEFAULT '0|',
  `vdoname` varchar(40) NOT NULL DEFAULT '',
  `flvdoname` varchar(40) DEFAULT NULL,
  `duration` float NOT NULL DEFAULT '0',
  `space` bigint(20) NOT NULL DEFAULT '0',
  `type` varchar(7) NOT NULL DEFAULT '',
  `addtime` varchar(20) DEFAULT NULL,
  `adddate` date NOT NULL DEFAULT '0000-00-00',
  `record_date` date NOT NULL DEFAULT '0000-00-00',
  `location` text NOT NULL,
  `country` varchar(120) NOT NULL DEFAULT '',
  `vkey` varchar(20) NOT NULL DEFAULT '',
  `viewnumber` bigint(10) NOT NULL DEFAULT '0',
  `viewtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `com_num` int(8) NOT NULL DEFAULT '0',
  `fav_num` int(8) NOT NULL DEFAULT '0',
  `download_num` bigint(20) NOT NULL DEFAULT '0',
  `featured` varchar(3) NOT NULL DEFAULT 'no',
  `ratedby` bigint(10) NOT NULL DEFAULT '0',
  `rate` float NOT NULL DEFAULT '0',
  `filehome` varchar(120) NOT NULL DEFAULT '',
  `be_comment` varchar(3) NOT NULL DEFAULT 'yes',
  `be_rated` varchar(3) NOT NULL DEFAULT 'yes',
  `embed` varchar(8) NOT NULL DEFAULT 'enabled',
  `embed_code` text NOT NULL,
  `thumb` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `thumbs` tinyint(2) unsigned NOT NULL DEFAULT '20',
  `voter_id` varchar(200) NOT NULL DEFAULT '',
  `server` varchar(255) NOT NULL DEFAULT '',
  `active` char(1) NOT NULL DEFAULT '',
  `hd_filename` varchar(20) NOT NULL DEFAULT '',
  `ipod_filename` varchar(20) NOT NULL DEFAULT '',
  `aspect_hd` varchar(10) NOT NULL DEFAULT '0',
  `width_hd` int(4) NOT NULL DEFAULT '0',
  `height_hd` int(4) NOT NULL DEFAULT '0',
  `aspect_sd` varchar(10) NOT NULL DEFAULT '0',
  `width_sd` int(4) NOT NULL DEFAULT '0',
  `height_sd` int(4) NOT NULL DEFAULT '0',
  `iphone` int(1) NOT NULL DEFAULT '0',
  `hd` int(1) NOT NULL DEFAULT '0',
  `likes` bigint(20) NOT NULL DEFAULT '0',
  `dislikes` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`VID`),
  UNIQUE KEY `vkey` (`vkey`),
  KEY `viewnumber` (`viewnumber`),
  KEY `rate` (`rate`),
  KEY `fav_num` (`fav_num`),
  KEY `active` (`active`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`VID`, `UID`, `title`, `description`, `featuredesc`, `keyword`, `channel`, `vdoname`, `flvdoname`, `duration`, `space`, `type`, `addtime`, `adddate`, `record_date`, `location`, `country`, `vkey`, `viewnumber`, `viewtime`, `com_num`, `fav_num`, `download_num`, `featured`, `ratedby`, `rate`, `filehome`, `be_comment`, `be_rated`, `embed`, `embed_code`, `thumb`, `thumbs`, `voter_id`, `server`, `active`, `hd_filename`, `ipod_filename`, `aspect_hd`, `width_hd`, `height_hd`, `aspect_sd`, `width_sd`, `height_sd`, `iphone`, `hd`, `likes`, `dislikes`) VALUES
(1, 5, 'test', '', '', 'test', '2', '1.wmv', '', 30.09, 26246026, 'public', '1482560126', '2016-12-24', '0000-00-00', '', '', '923820dcc509a6f75849', 13, '2016-12-24 13:49:15', 0, 0, 3, 'no', 0, 0, '', 'yes', 'yes', 'enabled', '', 1, 20, '', '', '1', '1.mp4', '1.mp4', '16:9', 1280, 720, '16:9', 768, 432, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `video_comments`
--

CREATE TABLE IF NOT EXISTS `video_comments` (
  `CID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VID` bigint(20) NOT NULL DEFAULT '0',
  `UID` bigint(20) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `addtime` bigint(20) NOT NULL DEFAULT '0',
  `status` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`CID`),
  KEY `VID` (`VID`),
  KEY `UID` (`UID`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `video_flags`
--

CREATE TABLE IF NOT EXISTS `video_flags` (
  `FID` bigint(20) NOT NULL AUTO_INCREMENT,
  `VID` bigint(20) NOT NULL DEFAULT '0',
  `UID` bigint(20) NOT NULL DEFAULT '0',
  `reason` varchar(15) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `add_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`FID`),
  KEY `VID` (`VID`),
  KEY `UID` (`UID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `video_subscribe`
--

CREATE TABLE IF NOT EXISTS `video_subscribe` (
  `UID` bigint(20) NOT NULL DEFAULT '0',
  `SUID` bigint(20) NOT NULL DEFAULT '0',
  `subscribe_date` date NOT NULL DEFAULT '0000-00-00',
  KEY `USUID` (`UID`,`SUID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `video_vote_ip`
--

CREATE TABLE IF NOT EXISTS `video_vote_ip` (
  `VID` bigint(20) NOT NULL DEFAULT '0',
  `ip` int(9) NOT NULL DEFAULT '0',
  UNIQUE KEY `vid_ip` (`VID`,`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `video_vote_users`
--

CREATE TABLE IF NOT EXISTS `video_vote_users` (
  `VID` bigint(20) NOT NULL DEFAULT '0',
  `UID` int(9) NOT NULL DEFAULT '0',
  KEY `vid_uid` (`VID`,`UID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wall`
--

CREATE TABLE IF NOT EXISTS `wall` (
  `wall_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `OID` bigint(20) NOT NULL DEFAULT '0',
  `UID` bigint(20) NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `addtime` bigint(20) NOT NULL DEFAULT '0',
  `status` enum('1','0') NOT NULL DEFAULT '1',
  PRIMARY KEY (`wall_id`),
  KEY `OID` (`OID`),
  KEY `UID` (`UID`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
