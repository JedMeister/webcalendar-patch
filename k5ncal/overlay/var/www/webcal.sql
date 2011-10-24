-- phpMyAdmin SQL Dump
-- version 3.3.2deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 27, 2011 at 03:51 AM
-- Server version: 5.1.41
-- PHP Version: 5.3.2-1ubuntu4.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `webcal`
--
CREATE DATABASE IF NOT EXISTS `webcal` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `webcal`;

-- --------------------------------------------------------

--
-- Table structure for table `webcal_access_function`
--

CREATE TABLE IF NOT EXISTS `webcal_access_function` (
  `cal_login` varchar(25) NOT NULL,
  `cal_permissions` varchar(64) NOT NULL,
  PRIMARY KEY (`cal_login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_access_function`
--

INSERT INTO `webcal_access_function` (`cal_login`, `cal_permissions`) VALUES
('admin', 'YYYYYYYYYYYYYYYYYYYYYYYYYYY');

-- --------------------------------------------------------

--
-- Table structure for table `webcal_access_user`
--

CREATE TABLE IF NOT EXISTS `webcal_access_user` (
  `cal_login` varchar(25) NOT NULL,
  `cal_other_user` varchar(25) NOT NULL,
  `cal_can_view` int(11) NOT NULL DEFAULT '0',
  `cal_can_edit` int(11) NOT NULL DEFAULT '0',
  `cal_can_approve` int(11) NOT NULL DEFAULT '0',
  `cal_can_invite` char(1) DEFAULT 'Y',
  `cal_can_email` char(1) DEFAULT 'Y',
  `cal_see_time_only` char(1) DEFAULT 'N',
  PRIMARY KEY (`cal_login`,`cal_other_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_access_user`
--


-- --------------------------------------------------------

--
-- Table structure for table `webcal_asst`
--

CREATE TABLE IF NOT EXISTS `webcal_asst` (
  `cal_boss` varchar(25) NOT NULL,
  `cal_assistant` varchar(25) NOT NULL,
  PRIMARY KEY (`cal_boss`,`cal_assistant`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_asst`
--


-- --------------------------------------------------------

--
-- Table structure for table `webcal_blob`
--

CREATE TABLE IF NOT EXISTS `webcal_blob` (
  `cal_blob_id` int(11) NOT NULL,
  `cal_id` int(11) DEFAULT NULL,
  `cal_login` varchar(25) DEFAULT NULL,
  `cal_name` varchar(30) DEFAULT NULL,
  `cal_description` varchar(128) DEFAULT NULL,
  `cal_size` int(11) DEFAULT NULL,
  `cal_mime_type` varchar(50) DEFAULT NULL,
  `cal_type` char(1) NOT NULL,
  `cal_mod_date` int(11) NOT NULL,
  `cal_mod_time` int(11) NOT NULL,
  `cal_blob` longblob,
  PRIMARY KEY (`cal_blob_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_blob`
--


-- --------------------------------------------------------

--
-- Table structure for table `webcal_categories`
--

CREATE TABLE IF NOT EXISTS `webcal_categories` (
  `cat_id` int(11) NOT NULL,
  `cat_owner` varchar(25) DEFAULT NULL,
  `cat_name` varchar(80) NOT NULL,
  `cat_color` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_categories`
--


-- --------------------------------------------------------

--
-- Table structure for table `webcal_config`
--

CREATE TABLE IF NOT EXISTS `webcal_config` (
  `cal_setting` varchar(50) NOT NULL,
  `cal_value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cal_setting`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_config`
--

INSERT INTO `webcal_config` (`cal_setting`, `cal_value`) VALUES
('ADD_LINK_IN_VIEWS', 'N'),
('ADMIN_OVERRIDE_UAC', 'Y'),
('ALLOW_ATTACH', 'N'),
('ALLOW_ATTACH_ANY', 'N'),
('ALLOW_ATTACH_PART', 'N'),
('ALLOW_COLOR_CUSTOMIZATION', 'Y'),
('ALLOW_COMMENTS', 'N'),
('ALLOW_COMMENTS_ANY', 'N'),
('ALLOW_COMMENTS_PART', 'N'),
('ALLOW_CONFLICT_OVERRIDE', 'Y'),
('ALLOW_CONFLICTS', 'N'),
('ALLOW_EXTERNAL_HEADER', 'N'),
('ALLOW_EXTERNAL_USERS', 'N'),
('ALLOW_HTML_DESCRIPTION', 'Y'),
('ALLOW_SELF_REGISTRATION', 'N'),
('ALLOW_USER_HEADER', 'N'),
('ALLOW_USER_THEMES', 'Y'),
('ALLOW_VIEW_OTHER', 'Y'),
('APPLICATION_NAME', 'TKL WebCalendar'),
('APPROVE_ASSISTANT_EVENT', 'Y'),
('AUTO_REFRESH', 'N'),
('AUTO_REFRESH_TIME', '0'),
('BGCOLOR', '#FFFFFF'),
('BGIMAGE', ''),
('BGREPEAT', 'repeat fixed center'),
('BOLD_DAYS_IN_YEAR', 'Y'),
('CAPTIONS', '#B04040'),
('CATEGORIES_ENABLED', 'Y'),
('CELLBG', '#C0C0C0'),
('CONFLICT_REPEAT_MONTHS', '6'),
('CUSTOM_HEADER', 'N'),
('CUSTOM_SCRIPT', 'N'),
('CUSTOM_TRAILER', 'N'),
('DATE_FORMAT', 'LANGUAGE_DEFINED'),
('DATE_FORMAT_MD', 'LANGUAGE_DEFINED'),
('DATE_FORMAT_MY', 'LANGUAGE_DEFINED'),
('DATE_FORMAT_TASK', 'LANGUAGE_DEFINED'),
('DEMO_MODE', 'N'),
('DISABLE_ACCESS_FIELD', 'N'),
('DISABLE_CROSSDAY_EVENTS', 'N'),
('DISABLE_LOCATION_FIELD', 'N'),
('DISABLE_PARTICIPANTS_FIELD', 'N'),
('DISABLE_POPUPS', 'N'),
('DISABLE_PRIORITY_FIELD', 'N'),
('DISABLE_REMINDER_FIELD', 'N'),
('DISABLE_REPEATING_FIELD', 'N'),
('DISABLE_URL_FIELD', 'Y'),
('DISPLAY_ALL_DAYS_IN_MONTH', 'N'),
('DISPLAY_CREATED_BYPROXY', 'Y'),
('DISPLAY_DESC_PRINT_DAY', 'Y'),
('DISPLAY_END_TIMES', 'N'),
('DISPLAY_LOCATION', 'N'),
('DISPLAY_LONG_DAYS', 'N'),
('DISPLAY_MINUTES', 'N'),
('DISPLAY_MOON_PHASES', 'N'),
('DISPLAY_SM_MONTH', 'Y'),
('DISPLAY_TASKS', 'N'),
('DISPLAY_TASKS_IN_GRID', 'N'),
('DISPLAY_UNAPPROVED', 'Y'),
('DISPLAY_WEEKENDS', 'Y'),
('DISPLAY_WEEKNUMBER', 'Y'),
('EMAIL_ASSISTANT_EVENTS', 'Y'),
('EMAIL_EVENT_ADDED', 'Y'),
('EMAIL_EVENT_CREATE', 'N'),
('EMAIL_EVENT_DELETED', 'Y'),
('EMAIL_EVENT_REJECTED', 'Y'),
('EMAIL_EVENT_UPDATED', 'Y'),
('EMAIL_FALLBACK_FROM', 'youremailhere'),
('EMAIL_HTML', 'N'),
('EMAIL_MAILER', 'mail'),
('EMAIL_REMINDER', 'Y'),
('ENABLE_CAPTCHA', 'N'),
('ENABLE_GRADIENTS', 'N'),
('ENABLE_ICON_UPLOADS', 'N'),
('ENTRY_SLOTS', '144'),
('EXTERNAL_NOTIFICATIONS', 'N'),
('EXTERNAL_REMINDERS', 'N'),
('FONTS', 'Arial, Helvetica, sans-serif'),
('FREEBUSY_ENABLED', 'N'),
('GENERAL_USE_GMT', 'Y'),
('GROUPS_ENABLED', 'N'),
('H2COLOR', '#000000'),
('HASEVENTSBG', '#FFFF33'),
('IMPORT_CATEGORIES', 'Y'),
('LANGUAGE', 'none'),
('LIMIT_APPTS', 'N'),
('LIMIT_APPTS_NUMBER', '6'),
('LIMIT_DESCRIPTION_SIZE', 'N'),
('MENU_DATE_TOP', 'Y'),
('MENU_ENABLED', 'Y'),
('MENU_THEME', 'default'),
('MYEVENTS', '#006000'),
('NONUSER_AT_TOP', 'Y'),
('NONUSER_ENABLED', 'Y'),
('OTHERMONTHBG', '#D0D0D0'),
('OVERRIDE_PUBLIC', 'N'),
('OVERRIDE_PUBLIC_TEXT', 'Not available'),
('PARTICIPANTS_IN_POPUP', 'N'),
('PLUGINS_ENABLED', 'N'),
('POPUP_BG', '#FFFFFF'),
('POPUP_FG', '#000000'),
('PUBLIC_ACCESS', 'N'),
('PUBLIC_ACCESS_ADD_NEEDS_APPROVAL', 'N'),
('PUBLIC_ACCESS_CAN_ADD', 'N'),
('PUBLIC_ACCESS_DEFAULT_SELECTED', 'N'),
('PUBLIC_ACCESS_DEFAULT_VISIBLE', 'N'),
('PUBLIC_ACCESS_OTHERS', 'Y'),
('PUBLIC_ACCESS_VIEW_PART', 'N'),
('PUBLISH_ENABLED', 'Y'),
('PULLDOWN_WEEKNUMBER', 'N'),
('REMEMBER_LAST_LOGIN', 'N'),
('REMINDER_DEFAULT', 'N'),
('REMINDER_OFFSET', '240'),
('REMINDER_WITH_DATE', 'N'),
('REMOTES_ENABLED', 'N'),
('REPORTS_ENABLED', 'N'),
('REQUIRE_APPROVALS', 'Y'),
('RSS_ENABLED', 'N'),
('SELF_REGISTRATION_BLACKLIST', 'N'),
('SELF_REGISTRATION_FULL', 'Y'),
('SEND_EMAIL', 'N'),
('SERVER_TIMEZONE', 'America/New_York'),
('SITE_EXTRAS_IN_POPUP', 'N'),
('SMTP_AUTH', 'N'),
('SMTP_HOST', 'localhost'),
('SMTP_PASSWORD', ''),
('SMTP_PORT', '25'),
('SMTP_USERNAME', ''),
('STARTVIEW', 'month.php'),
('SUMMARY_LENGTH', '80'),
('TABLEBG', '#000000'),
('TEXTCOLOR', '#000000'),
('THBG', '#FFFFFF'),
('THFG', '#000000'),
('TIME_FORMAT', '12'),
('TIME_SLOTS', '24'),
('TIME_SPACER', '&raquo;&nbsp;'),
('TIMED_EVT_LEN', 'D'),
('TIMEZONE', 'America/New_York'),
('TODAYCELLBG', '#FFFF33'),
('UAC_ENABLED', 'N'),
('USER_PUBLISH_ENABLED', 'Y'),
('USER_PUBLISH_RW_ENABLED', 'Y'),
('USER_RSS_ENABLED', 'N'),
('USER_SEES_ONLY_HIS_GROUPS', 'Y'),
('USER_SORT_ORDER', 'cal_lastname, cal_firstname'),
('WEBCAL_PROGRAM_VERSION', 'v1.2.4'),
('WEEK_START', '0'),
('WEEKEND_START', '6'),
('WEEKENDBG', '#D0D0D0'),
('WEEKNUMBER', '#FF6633'),
('WORK_DAY_END_HOUR', '17'),
('WORK_DAY_START_HOUR', '8'),
('SERVER_URL', 'http://$ipaddr/');

-- --------------------------------------------------------

--
-- Table structure for table `webcal_entry`
--

CREATE TABLE IF NOT EXISTS `webcal_entry` (
  `cal_id` int(11) NOT NULL,
  `cal_group_id` int(11) DEFAULT NULL,
  `cal_ext_for_id` int(11) DEFAULT NULL,
  `cal_create_by` varchar(25) NOT NULL,
  `cal_date` int(11) NOT NULL,
  `cal_time` int(11) DEFAULT NULL,
  `cal_mod_date` int(11) DEFAULT NULL,
  `cal_mod_time` int(11) DEFAULT NULL,
  `cal_duration` int(11) NOT NULL,
  `cal_due_date` int(11) DEFAULT NULL,
  `cal_due_time` int(11) DEFAULT NULL,
  `cal_priority` int(11) DEFAULT '5',
  `cal_type` char(1) DEFAULT 'E',
  `cal_access` char(1) DEFAULT 'P',
  `cal_name` varchar(80) NOT NULL,
  `cal_location` varchar(100) DEFAULT NULL,
  `cal_url` varchar(100) DEFAULT NULL,
  `cal_completed` int(11) DEFAULT NULL,
  `cal_description` text,
  PRIMARY KEY (`cal_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_entry`
--


-- --------------------------------------------------------

--
-- Table structure for table `webcal_entry_categories`
--

CREATE TABLE IF NOT EXISTS `webcal_entry_categories` (
  `cal_id` int(11) NOT NULL DEFAULT '0',
  `cat_id` int(11) NOT NULL DEFAULT '0',
  `cat_order` int(11) NOT NULL DEFAULT '0',
  `cat_owner` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_entry_categories`
--


-- --------------------------------------------------------

--
-- Table structure for table `webcal_entry_ext_user`
--

CREATE TABLE IF NOT EXISTS `webcal_entry_ext_user` (
  `cal_id` int(11) NOT NULL DEFAULT '0',
  `cal_fullname` varchar(50) NOT NULL,
  `cal_email` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`cal_id`,`cal_fullname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_entry_ext_user`
--


-- --------------------------------------------------------

--
-- Table structure for table `webcal_entry_log`
--

CREATE TABLE IF NOT EXISTS `webcal_entry_log` (
  `cal_log_id` int(11) NOT NULL,
  `cal_entry_id` int(11) NOT NULL,
  `cal_login` varchar(25) NOT NULL,
  `cal_user_cal` varchar(25) DEFAULT NULL,
  `cal_type` char(1) NOT NULL,
  `cal_date` int(11) NOT NULL,
  `cal_time` int(11) DEFAULT NULL,
  `cal_text` text,
  PRIMARY KEY (`cal_log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_entry_log`
--

INSERT INTO `webcal_entry_log` (`cal_log_id`, `cal_entry_id`, `cal_login`, `cal_user_cal`, `cal_type`, `cal_date`, `cal_time`, `cal_text`) VALUES
(1, 0, 'system', NULL, 'x', 20110827, 34816, 'Username: admin, IP: 192.168.1.203');

-- --------------------------------------------------------

--
-- Table structure for table `webcal_entry_repeats`
--

CREATE TABLE IF NOT EXISTS `webcal_entry_repeats` (
  `cal_id` int(11) NOT NULL DEFAULT '0',
  `cal_type` varchar(20) DEFAULT NULL,
  `cal_end` int(11) DEFAULT NULL,
  `cal_endtime` int(11) DEFAULT NULL,
  `cal_frequency` int(11) DEFAULT '1',
  `cal_days` char(7) DEFAULT NULL,
  `cal_bymonth` varchar(50) DEFAULT NULL,
  `cal_bymonthday` varchar(100) DEFAULT NULL,
  `cal_byday` varchar(100) DEFAULT NULL,
  `cal_bysetpos` varchar(50) DEFAULT NULL,
  `cal_byweekno` varchar(50) DEFAULT NULL,
  `cal_byyearday` varchar(50) DEFAULT NULL,
  `cal_wkst` char(2) DEFAULT 'MO',
  `cal_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`cal_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_entry_repeats`
--


-- --------------------------------------------------------

--
-- Table structure for table `webcal_entry_repeats_not`
--

CREATE TABLE IF NOT EXISTS `webcal_entry_repeats_not` (
  `cal_id` int(11) NOT NULL,
  `cal_date` int(11) NOT NULL,
  `cal_exdate` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cal_id`,`cal_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_entry_repeats_not`
--


-- --------------------------------------------------------

--
-- Table structure for table `webcal_entry_user`
--

CREATE TABLE IF NOT EXISTS `webcal_entry_user` (
  `cal_id` int(11) NOT NULL DEFAULT '0',
  `cal_login` varchar(25) NOT NULL,
  `cal_status` char(1) DEFAULT 'A',
  `cal_category` int(11) DEFAULT NULL,
  `cal_percent` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cal_id`,`cal_login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_entry_user`
--


-- --------------------------------------------------------

--
-- Table structure for table `webcal_group`
--

CREATE TABLE IF NOT EXISTS `webcal_group` (
  `cal_group_id` int(11) NOT NULL,
  `cal_owner` varchar(25) DEFAULT NULL,
  `cal_name` varchar(50) NOT NULL,
  `cal_last_update` int(11) NOT NULL,
  PRIMARY KEY (`cal_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_group`
--


-- --------------------------------------------------------

--
-- Table structure for table `webcal_group_user`
--

CREATE TABLE IF NOT EXISTS `webcal_group_user` (
  `cal_group_id` int(11) NOT NULL,
  `cal_login` varchar(25) NOT NULL,
  PRIMARY KEY (`cal_group_id`,`cal_login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_group_user`
--


-- --------------------------------------------------------

--
-- Table structure for table `webcal_import`
--

CREATE TABLE IF NOT EXISTS `webcal_import` (
  `cal_import_id` int(11) NOT NULL,
  `cal_name` varchar(50) DEFAULT NULL,
  `cal_date` int(11) NOT NULL,
  `cal_type` varchar(10) NOT NULL,
  `cal_login` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`cal_import_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_import`
--


-- --------------------------------------------------------

--
-- Table structure for table `webcal_import_data`
--

CREATE TABLE IF NOT EXISTS `webcal_import_data` (
  `cal_import_id` int(11) NOT NULL,
  `cal_id` int(11) NOT NULL,
  `cal_login` varchar(25) NOT NULL,
  `cal_import_type` varchar(15) NOT NULL,
  `cal_external_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`cal_id`,`cal_login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_import_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `webcal_nonuser_cals`
--

CREATE TABLE IF NOT EXISTS `webcal_nonuser_cals` (
  `cal_login` varchar(25) NOT NULL,
  `cal_lastname` varchar(25) DEFAULT NULL,
  `cal_firstname` varchar(25) DEFAULT NULL,
  `cal_admin` varchar(25) NOT NULL,
  `cal_is_public` char(1) NOT NULL DEFAULT 'N',
  `cal_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cal_login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_nonuser_cals`
--


-- --------------------------------------------------------

--
-- Table structure for table `webcal_reminders`
--

CREATE TABLE IF NOT EXISTS `webcal_reminders` (
  `cal_id` int(11) NOT NULL DEFAULT '0',
  `cal_date` int(11) NOT NULL DEFAULT '0',
  `cal_offset` int(11) NOT NULL DEFAULT '0',
  `cal_related` char(1) NOT NULL DEFAULT 'S',
  `cal_before` char(1) NOT NULL DEFAULT 'Y',
  `cal_last_sent` int(11) NOT NULL DEFAULT '0',
  `cal_repeats` int(11) NOT NULL DEFAULT '0',
  `cal_duration` int(11) NOT NULL DEFAULT '0',
  `cal_times_sent` int(11) NOT NULL DEFAULT '0',
  `cal_action` varchar(12) NOT NULL DEFAULT 'EMAIL',
  PRIMARY KEY (`cal_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_reminders`
--


-- --------------------------------------------------------

--
-- Table structure for table `webcal_report`
--

CREATE TABLE IF NOT EXISTS `webcal_report` (
  `cal_login` varchar(25) NOT NULL,
  `cal_report_id` int(11) NOT NULL,
  `cal_is_global` char(1) NOT NULL DEFAULT 'N',
  `cal_report_type` varchar(20) NOT NULL,
  `cal_include_header` char(1) NOT NULL DEFAULT 'Y',
  `cal_report_name` varchar(50) NOT NULL,
  `cal_time_range` int(11) NOT NULL,
  `cal_user` varchar(25) DEFAULT NULL,
  `cal_allow_nav` char(1) DEFAULT 'Y',
  `cal_cat_id` int(11) DEFAULT NULL,
  `cal_include_empty` char(1) DEFAULT 'N',
  `cal_show_in_trailer` char(1) DEFAULT 'N',
  `cal_update_date` int(11) NOT NULL,
  PRIMARY KEY (`cal_report_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_report`
--


-- --------------------------------------------------------

--
-- Table structure for table `webcal_report_template`
--

CREATE TABLE IF NOT EXISTS `webcal_report_template` (
  `cal_report_id` int(11) NOT NULL,
  `cal_template_type` char(1) NOT NULL,
  `cal_template_text` text,
  PRIMARY KEY (`cal_report_id`,`cal_template_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_report_template`
--


-- --------------------------------------------------------

--
-- Table structure for table `webcal_site_extras`
--

CREATE TABLE IF NOT EXISTS `webcal_site_extras` (
  `cal_id` int(11) NOT NULL DEFAULT '0',
  `cal_name` varchar(25) NOT NULL,
  `cal_type` int(11) NOT NULL,
  `cal_date` int(11) DEFAULT '0',
  `cal_remind` int(11) DEFAULT '0',
  `cal_data` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_site_extras`
--


-- --------------------------------------------------------

--
-- Table structure for table `webcal_timezones`
--

CREATE TABLE IF NOT EXISTS `webcal_timezones` (
  `tzid` varchar(100) NOT NULL DEFAULT '',
  `dtstart` varchar(25) DEFAULT NULL,
  `dtend` varchar(25) DEFAULT NULL,
  `vtimezone` text,
  PRIMARY KEY (`tzid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_timezones`
--


-- --------------------------------------------------------

--
-- Table structure for table `webcal_user`
--

CREATE TABLE IF NOT EXISTS `webcal_user` (
  `cal_login` varchar(25) NOT NULL,
  `cal_passwd` varchar(32) DEFAULT NULL,
  `cal_lastname` varchar(25) DEFAULT NULL,
  `cal_firstname` varchar(25) DEFAULT NULL,
  `cal_is_admin` char(1) DEFAULT 'N',
  `cal_email` varchar(75) DEFAULT NULL,
  `cal_enabled` char(1) DEFAULT 'Y',
  `cal_telephone` varchar(50) DEFAULT NULL,
  `cal_address` varchar(75) DEFAULT NULL,
  `cal_title` varchar(75) DEFAULT NULL,
  `cal_birthday` int(11) DEFAULT NULL,
  `cal_last_login` int(11) DEFAULT NULL,
  PRIMARY KEY (`cal_login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_user`
--

INSERT INTO `webcal_user` (`cal_login`, `cal_passwd`, `cal_lastname`, `cal_firstname`, `cal_is_admin`, `cal_email`, `cal_enabled`, `cal_telephone`, `cal_address`, `cal_title`, `cal_birthday`, `cal_last_login`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'ADMINISTRATOR', 'DEFAULT', 'Y', NULL, 'Y', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `webcal_user_layers`
--

CREATE TABLE IF NOT EXISTS `webcal_user_layers` (
  `cal_layerid` int(11) NOT NULL DEFAULT '0',
  `cal_login` varchar(25) NOT NULL,
  `cal_layeruser` varchar(25) NOT NULL,
  `cal_color` varchar(25) DEFAULT NULL,
  `cal_dups` char(1) DEFAULT 'N',
  PRIMARY KEY (`cal_login`,`cal_layeruser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_user_layers`
--


-- --------------------------------------------------------

--
-- Table structure for table `webcal_user_pref`
--

CREATE TABLE IF NOT EXISTS `webcal_user_pref` (
  `cal_login` varchar(25) NOT NULL,
  `cal_setting` varchar(25) NOT NULL,
  `cal_value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cal_login`,`cal_setting`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_user_pref`
--

INSERT INTO `webcal_user_pref` (`cal_login`, `cal_setting`, `cal_value`) VALUES
('admin', 'LANGUAGE', 'English-US');

-- --------------------------------------------------------

--
-- Table structure for table `webcal_user_template`
--

CREATE TABLE IF NOT EXISTS `webcal_user_template` (
  `cal_login` varchar(25) NOT NULL,
  `cal_type` char(1) NOT NULL,
  `cal_template_text` text,
  PRIMARY KEY (`cal_login`,`cal_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_user_template`
--


-- --------------------------------------------------------

--
-- Table structure for table `webcal_view`
--

CREATE TABLE IF NOT EXISTS `webcal_view` (
  `cal_view_id` int(11) NOT NULL,
  `cal_owner` varchar(25) NOT NULL,
  `cal_name` varchar(50) NOT NULL,
  `cal_view_type` char(1) DEFAULT NULL,
  `cal_is_global` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`cal_view_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_view`
--


-- --------------------------------------------------------

--
-- Table structure for table `webcal_view_user`
--

CREATE TABLE IF NOT EXISTS `webcal_view_user` (
  `cal_view_id` int(11) NOT NULL,
  `cal_login` varchar(25) NOT NULL,
  PRIMARY KEY (`cal_view_id`,`cal_login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webcal_view_user`
--

