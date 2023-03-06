/*
Navicat MySQL Data Transfer

Source Server         : imooc
Source Server Version : 80027
Source Host           : 127.0.0.1:3306
Source Database       : imooc

Target Server Type    : MYSQL
Target Server Version : 80027
File Encoding         : 65001

Date: 2022-02-15 17:17:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES ('1', '视频上传权限');

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
INSERT INTO `auth_group_permissions` VALUES ('2', '1', '21');
INSERT INTO `auth_group_permissions` VALUES ('3', '1', '22');
INSERT INTO `auth_group_permissions` VALUES ('4', '1', '23');
INSERT INTO `auth_group_permissions` VALUES ('5', '1', '24');
INSERT INTO `auth_group_permissions` VALUES ('6', '1', '25');
INSERT INTO `auth_group_permissions` VALUES ('7', '1', '26');
INSERT INTO `auth_group_permissions` VALUES ('8', '1', '27');
INSERT INTO `auth_group_permissions` VALUES ('9', '1', '28');
INSERT INTO `auth_group_permissions` VALUES ('10', '1', '29');
INSERT INTO `auth_group_permissions` VALUES ('11', '1', '30');
INSERT INTO `auth_group_permissions` VALUES ('12', '1', '31');
INSERT INTO `auth_group_permissions` VALUES ('1', '1', '32');

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can view content type', '4', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('17', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('20', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('21', 'Can add 课程信息', '6', 'add_course');
INSERT INTO `auth_permission` VALUES ('22', 'Can change 课程信息', '6', 'change_course');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete 课程信息', '6', 'delete_course');
INSERT INTO `auth_permission` VALUES ('24', 'Can view 课程信息', '6', 'view_course');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 课程章节', '7', 'add_lesson');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 课程章节', '7', 'change_lesson');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 课程章节', '7', 'delete_lesson');
INSERT INTO `auth_permission` VALUES ('28', 'Can view 课程章节', '7', 'view_lesson');
INSERT INTO `auth_permission` VALUES ('29', 'Can add 视频', '8', 'add_video');
INSERT INTO `auth_permission` VALUES ('30', 'Can change 视频', '8', 'change_video');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete 视频', '8', 'delete_video');
INSERT INTO `auth_permission` VALUES ('32', 'Can view 视频', '8', 'view_video');
INSERT INTO `auth_permission` VALUES ('33', 'Can add 课程资源', '9', 'add_courseresource');
INSERT INTO `auth_permission` VALUES ('34', 'Can change 课程资源', '9', 'change_courseresource');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete 课程资源', '9', 'delete_courseresource');
INSERT INTO `auth_permission` VALUES ('36', 'Can view 课程资源', '9', 'view_courseresource');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 课程标签', '10', 'add_coursetag');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 课程标签', '10', 'change_coursetag');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 课程标签', '10', 'delete_coursetag');
INSERT INTO `auth_permission` VALUES ('40', 'Can view 课程标签', '10', 'view_coursetag');
INSERT INTO `auth_permission` VALUES ('41', 'Can add 轮播课程', '11', 'add_bannercourse');
INSERT INTO `auth_permission` VALUES ('42', 'Can change 轮播课程', '11', 'change_bannercourse');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete 轮播课程', '11', 'delete_bannercourse');
INSERT INTO `auth_permission` VALUES ('44', 'Can view 轮播课程', '11', 'view_bannercourse');
INSERT INTO `auth_permission` VALUES ('45', 'Can add 用户咨询', '12', 'add_userask');
INSERT INTO `auth_permission` VALUES ('46', 'Can change 用户咨询', '12', 'change_userask');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete 用户咨询', '12', 'delete_userask');
INSERT INTO `auth_permission` VALUES ('48', 'Can view 用户咨询', '12', 'view_userask');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 用户消息', '13', 'add_usermessage');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 用户消息', '13', 'change_usermessage');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 用户消息', '13', 'delete_usermessage');
INSERT INTO `auth_permission` VALUES ('52', 'Can view 用户消息', '13', 'view_usermessage');
INSERT INTO `auth_permission` VALUES ('53', 'Can add 用户收藏', '14', 'add_userfavorite');
INSERT INTO `auth_permission` VALUES ('54', 'Can change 用户收藏', '14', 'change_userfavorite');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete 用户收藏', '14', 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES ('56', 'Can view 用户收藏', '14', 'view_userfavorite');
INSERT INTO `auth_permission` VALUES ('57', 'Can add 用户课程', '15', 'add_usercourse');
INSERT INTO `auth_permission` VALUES ('58', 'Can change 用户课程', '15', 'change_usercourse');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete 用户课程', '15', 'delete_usercourse');
INSERT INTO `auth_permission` VALUES ('60', 'Can view 用户课程', '15', 'view_usercourse');
INSERT INTO `auth_permission` VALUES ('61', 'Can add 课程评论', '16', 'add_coursecomments');
INSERT INTO `auth_permission` VALUES ('62', 'Can change 课程评论', '16', 'change_coursecomments');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete 课程评论', '16', 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES ('64', 'Can view 课程评论', '16', 'view_coursecomments');
INSERT INTO `auth_permission` VALUES ('65', 'Can add 轮播图', '17', 'add_banner');
INSERT INTO `auth_permission` VALUES ('66', 'Can change 轮播图', '17', 'change_banner');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete 轮播图', '17', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('68', 'Can view 轮播图', '17', 'view_banner');
INSERT INTO `auth_permission` VALUES ('69', 'Can add 用户信息', '18', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('70', 'Can change 用户信息', '18', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete 用户信息', '18', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('72', 'Can view 用户信息', '18', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('73', 'Can add 城市', '19', 'add_city');
INSERT INTO `auth_permission` VALUES ('74', 'Can change 城市', '19', 'change_city');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete 城市', '19', 'delete_city');
INSERT INTO `auth_permission` VALUES ('76', 'Can view 城市', '19', 'view_city');
INSERT INTO `auth_permission` VALUES ('77', 'Can add 课程机构', '20', 'add_courseorg');
INSERT INTO `auth_permission` VALUES ('78', 'Can change 课程机构', '20', 'change_courseorg');
INSERT INTO `auth_permission` VALUES ('79', 'Can delete 课程机构', '20', 'delete_courseorg');
INSERT INTO `auth_permission` VALUES ('80', 'Can view 课程机构', '20', 'view_courseorg');
INSERT INTO `auth_permission` VALUES ('81', 'Can add 教师', '21', 'add_teacher');
INSERT INTO `auth_permission` VALUES ('82', 'Can change 教师', '21', 'change_teacher');
INSERT INTO `auth_permission` VALUES ('83', 'Can delete 教师', '21', 'delete_teacher');
INSERT INTO `auth_permission` VALUES ('84', 'Can view 教师', '21', 'view_teacher');
INSERT INTO `auth_permission` VALUES ('85', 'Can add Bookmark', '22', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('86', 'Can change Bookmark', '22', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('87', 'Can delete Bookmark', '22', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('88', 'Can view Bookmark', '22', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('89', 'Can add User Setting', '23', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('90', 'Can change User Setting', '23', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('91', 'Can delete User Setting', '23', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('92', 'Can view User Setting', '23', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('93', 'Can add User Widget', '24', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('94', 'Can change User Widget', '24', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('95', 'Can delete User Widget', '24', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('96', 'Can view User Widget', '24', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('97', 'Can add log entry', '25', 'add_log');
INSERT INTO `auth_permission` VALUES ('98', 'Can change log entry', '25', 'change_log');
INSERT INTO `auth_permission` VALUES ('99', 'Can delete log entry', '25', 'delete_log');
INSERT INTO `auth_permission` VALUES ('100', 'Can view log entry', '25', 'view_log');
INSERT INTO `auth_permission` VALUES ('101', 'Can add captcha store', '26', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('102', 'Can change captcha store', '26', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('103', 'Can delete captcha store', '26', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('104', 'Can view captcha store', '26', 'view_captchastore');

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------

-- ----------------------------
-- Table structure for courses_course
-- ----------------------------
DROP TABLE IF EXISTS `courses_course`;
CREATE TABLE `courses_course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `desc` varchar(300) NOT NULL,
  `learn_times` int NOT NULL,
  `degree` varchar(2) NOT NULL,
  `students` int NOT NULL,
  `fav_nums` int NOT NULL,
  `click_nums` int NOT NULL,
  `category` varchar(20) NOT NULL,
  `tag` varchar(10) NOT NULL,
  `youneed_know` varchar(300) NOT NULL,
  `detail` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `teacher_id` int DEFAULT NULL,
  `course_org_id` int DEFAULT NULL,
  `is_classics` tinyint(1) NOT NULL,
  `notice` varchar(300) NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_course_course_org_id_4d2c4aab_fk_organizat` (`course_org_id`),
  KEY `courses_course_teacher_id_846fa526_fk_organizations_teacher_id` (`teacher_id`),
  CONSTRAINT `courses_course_course_org_id_4d2c4aab_fk_organizat` FOREIGN KEY (`course_org_id`) REFERENCES `organizations_courseorg` (`id`),
  CONSTRAINT `courses_course_teacher_id_846fa526_fk_organizations_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organizations_teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of courses_course
-- ----------------------------

-- ----------------------------
-- Table structure for courses_courseresource
-- ----------------------------
DROP TABLE IF EXISTS `courses_courseresource`;
CREATE TABLE `courses_courseresource` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  `file` varchar(200) NOT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_courseresource_course_id_5eba1332_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_courseresource_course_id_5eba1332_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of courses_courseresource
-- ----------------------------

-- ----------------------------
-- Table structure for courses_coursetag
-- ----------------------------
DROP TABLE IF EXISTS `courses_coursetag`;
CREATE TABLE `courses_coursetag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_coursetag_course_id_756f21fb_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_coursetag_course_id_756f21fb_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of courses_coursetag
-- ----------------------------

-- ----------------------------
-- Table structure for courses_lesson
-- ----------------------------
DROP TABLE IF EXISTS `courses_lesson`;
CREATE TABLE `courses_lesson` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  `learn_times` int NOT NULL,
  `course_id` int NOT NULL,
  `teacher_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_lesson_course_id_16bc4882_fk_courses_course_id` (`course_id`),
  KEY `courses_lesson_teacher_id_6aa160b9_fk_organizations_teacher_id` (`teacher_id`),
  CONSTRAINT `courses_lesson_course_id_16bc4882_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `courses_lesson_teacher_id_6aa160b9_fk_organizations_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organizations_teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of courses_lesson
-- ----------------------------

-- ----------------------------
-- Table structure for courses_video
-- ----------------------------
DROP TABLE IF EXISTS `courses_video`;
CREATE TABLE `courses_video` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  `learn_times` int NOT NULL,
  `url` varchar(200) NOT NULL,
  `lesson_id` int NOT NULL,
  `teacher_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` (`lesson_id`),
  KEY `courses_video_teacher_id_0becd80f_fk_organizations_teacher_id` (`teacher_id`),
  CONSTRAINT `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`),
  CONSTRAINT `courses_video_teacher_id_0becd80f_fk_organizations_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organizations_teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of courses_video
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('26', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('11', 'courses', 'bannercourse');
INSERT INTO `django_content_type` VALUES ('6', 'courses', 'course');
INSERT INTO `django_content_type` VALUES ('9', 'courses', 'courseresource');
INSERT INTO `django_content_type` VALUES ('10', 'courses', 'coursetag');
INSERT INTO `django_content_type` VALUES ('7', 'courses', 'lesson');
INSERT INTO `django_content_type` VALUES ('8', 'courses', 'video');
INSERT INTO `django_content_type` VALUES ('17', 'operations', 'banner');
INSERT INTO `django_content_type` VALUES ('16', 'operations', 'coursecomments');
INSERT INTO `django_content_type` VALUES ('12', 'operations', 'userask');
INSERT INTO `django_content_type` VALUES ('15', 'operations', 'usercourse');
INSERT INTO `django_content_type` VALUES ('14', 'operations', 'userfavorite');
INSERT INTO `django_content_type` VALUES ('13', 'operations', 'usermessage');
INSERT INTO `django_content_type` VALUES ('19', 'organizations', 'city');
INSERT INTO `django_content_type` VALUES ('20', 'organizations', 'courseorg');
INSERT INTO `django_content_type` VALUES ('21', 'organizations', 'teacher');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('18', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('22', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('25', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('23', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('24', 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2022-02-15 09:29:59.995030');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2022-02-15 09:30:00.100749');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2022-02-15 09:30:00.301213');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2022-02-15 09:30:00.754999');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2022-02-15 09:30:00.761981');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2022-02-15 09:30:00.769959');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2022-02-15 09:30:00.776940');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2022-02-15 09:30:00.781927');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2022-02-15 09:30:00.789906');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2022-02-15 09:30:00.797885');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0009_alter_user_last_name_max_length', '2022-02-15 09:30:00.806861');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0010_alter_group_name_max_length', '2022-02-15 09:30:00.824813');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0011_update_proxy_permissions', '2022-02-15 09:30:00.832792');
INSERT INTO `django_migrations` VALUES ('14', 'users', '0001_initial', '2022-02-15 09:30:00.947485');
INSERT INTO `django_migrations` VALUES ('15', 'admin', '0001_initial', '2022-02-15 09:30:01.302535');
INSERT INTO `django_migrations` VALUES ('16', 'admin', '0002_logentry_remove_auto_add', '2022-02-15 09:30:01.447149');
INSERT INTO `django_migrations` VALUES ('17', 'admin', '0003_logentry_add_action_flag_choices', '2022-02-15 09:30:01.455128');
INSERT INTO `django_migrations` VALUES ('18', 'captcha', '0001_initial', '2022-02-15 09:30:01.494024');
INSERT INTO `django_migrations` VALUES ('19', 'organizations', '0001_initial', '2022-02-15 09:30:01.606722');
INSERT INTO `django_migrations` VALUES ('20', 'organizations', '0002_auto_20191101_2311', '2022-02-15 09:30:01.739368');
INSERT INTO `django_migrations` VALUES ('21', 'organizations', '0003_auto_20191112_1013', '2022-02-15 09:30:01.815165');
INSERT INTO `django_migrations` VALUES ('22', 'organizations', '0004_teacher_user', '2022-02-15 09:30:01.882984');
INSERT INTO `django_migrations` VALUES ('23', 'organizations', '0005_auto_20220209_1534', '2022-02-15 09:30:01.963768');
INSERT INTO `django_migrations` VALUES ('24', 'courses', '0001_initial', '2022-02-15 09:30:02.122344');
INSERT INTO `django_migrations` VALUES ('25', 'courses', '0002_auto_20191102_0845', '2022-02-15 09:30:02.424536');
INSERT INTO `django_migrations` VALUES ('26', 'courses', '0003_course_course_org', '2022-02-15 09:30:02.461438');
INSERT INTO `django_migrations` VALUES ('27', 'courses', '0004_course_is_classics', '2022-02-15 09:30:02.615027');
INSERT INTO `django_migrations` VALUES ('28', 'courses', '0005_auto_20191114_1115', '2022-02-15 09:30:02.626994');
INSERT INTO `django_migrations` VALUES ('29', 'courses', '0006_coursetag', '2022-02-15 09:30:02.667886');
INSERT INTO `django_migrations` VALUES ('30', 'courses', '0007_auto_20200304_0921', '2022-02-15 09:30:02.884308');
INSERT INTO `django_migrations` VALUES ('31', 'courses', '0008_auto_20200304_1830', '2022-02-15 09:30:02.902258');
INSERT INTO `django_migrations` VALUES ('32', 'courses', '0009_course_is_banner', '2022-02-15 09:30:02.959106');
INSERT INTO `django_migrations` VALUES ('33', 'courses', '0010_bannercourse', '2022-02-15 09:30:02.967086');
INSERT INTO `django_migrations` VALUES ('34', 'courses', '0011_auto_20200311_1207', '2022-02-15 09:30:02.978056');
INSERT INTO `django_migrations` VALUES ('35', 'courses', '0012_auto_20200311_1208', '2022-02-15 09:30:02.989027');
INSERT INTO `django_migrations` VALUES ('36', 'courses', '0013_auto_20200311_1209', '2022-02-15 09:30:02.999998');
INSERT INTO `django_migrations` VALUES ('37', 'courses', '0014_auto_20220210_1517', '2022-02-15 09:30:03.070808');
INSERT INTO `django_migrations` VALUES ('38', 'courses', '0015_auto_20220215_0858', '2022-02-15 09:30:03.347069');
INSERT INTO `django_migrations` VALUES ('39', 'courses', '0016_auto_20220215_0921', '2022-02-15 09:30:03.409902');
INSERT INTO `django_migrations` VALUES ('40', 'operations', '0001_initial', '2022-02-15 09:30:03.737028');
INSERT INTO `django_migrations` VALUES ('41', 'operations', '0002_banner', '2022-02-15 09:30:04.208794');
INSERT INTO `django_migrations` VALUES ('42', 'operations', '0003_auto_20220215_0858', '2022-02-15 09:30:04.219764');
INSERT INTO `django_migrations` VALUES ('43', 'sessions', '0001_initial', '2022-02-15 09:30:04.253646');
INSERT INTO `django_migrations` VALUES ('44', 'users', '0002_auto_20191101_1707', '2022-02-15 09:30:04.285560');
INSERT INTO `django_migrations` VALUES ('45', 'users', '0003_auto_20191101_2222', '2022-02-15 09:30:04.340414');
INSERT INTO `django_migrations` VALUES ('46', 'users', '0004_auto_20220215_0858', '2022-02-15 09:30:04.624655');
INSERT INTO `django_migrations` VALUES ('47', 'xadmin', '0001_initial', '2022-02-15 09:30:04.756302');
INSERT INTO `django_migrations` VALUES ('48', 'xadmin', '0002_log', '2022-02-15 09:30:05.071460');
INSERT INTO `django_migrations` VALUES ('49', 'xadmin', '0003_auto_20160715_0100', '2022-02-15 09:30:05.320793');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('5szh48q9l32ddeu9exa0jfctawcb0j4f', 'Yzg5Zjg3NjZmN2I5NTZmY2FkMGRiMzYyNmJmODc4Njk4OWRiOGE0Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiYXBwcy51c2Vycy52aWV3cy5DdXN0b21BdXRoIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjg1NDAzZTJmMDdiMmNhMTFjMGZhYmM3MDJmZDk3ZTZkOGNiNTM4MyIsIkxJU1RfUVVFUlkiOltbImNvdXJzZXMiLCJiYW5uZXJjb3Vyc2UiXSwiIl19', '2022-03-01 09:33:29.542650');

-- ----------------------------
-- Table structure for operations_banner
-- ----------------------------
DROP TABLE IF EXISTS `operations_banner`;
CREATE TABLE `operations_banner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `index` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of operations_banner
-- ----------------------------

-- ----------------------------
-- Table structure for operations_coursecomments
-- ----------------------------
DROP TABLE IF EXISTS `operations_coursecomments`;
CREATE TABLE `operations_coursecomments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `comments` varchar(200) NOT NULL,
  `course_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operations_coursecom_course_id_de0f98da_fk_courses_c` (`course_id`),
  KEY `operations_coursecom_user_id_84597521_fk_users_use` (`user_id`),
  CONSTRAINT `operations_coursecom_course_id_de0f98da_fk_courses_c` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operations_coursecom_user_id_84597521_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of operations_coursecomments
-- ----------------------------

-- ----------------------------
-- Table structure for operations_userask
-- ----------------------------
DROP TABLE IF EXISTS `operations_userask`;
CREATE TABLE `operations_userask` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of operations_userask
-- ----------------------------

-- ----------------------------
-- Table structure for operations_usercourse
-- ----------------------------
DROP TABLE IF EXISTS `operations_usercourse`;
CREATE TABLE `operations_usercourse` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `course_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operations_usercourse_course_id_a9f30cc6_fk_courses_course_id` (`course_id`),
  KEY `operations_usercourse_user_id_d33454be_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operations_usercourse_course_id_a9f30cc6_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operations_usercourse_user_id_d33454be_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of operations_usercourse
-- ----------------------------

-- ----------------------------
-- Table structure for operations_userfavorite
-- ----------------------------
DROP TABLE IF EXISTS `operations_userfavorite`;
CREATE TABLE `operations_userfavorite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `fav_id` int NOT NULL,
  `fav_type` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operations_userfavorite_user_id_092d3821_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operations_userfavorite_user_id_092d3821_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of operations_userfavorite
-- ----------------------------

-- ----------------------------
-- Table structure for operations_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `operations_usermessage`;
CREATE TABLE `operations_usermessage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `message` varchar(200) NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operations_usermessage_user_id_511ab4d8_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operations_usermessage_user_id_511ab4d8_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of operations_usermessage
-- ----------------------------

-- ----------------------------
-- Table structure for organizations_city
-- ----------------------------
DROP TABLE IF EXISTS `organizations_city`;
CREATE TABLE `organizations_city` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(20) NOT NULL,
  `desc` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of organizations_city
-- ----------------------------

-- ----------------------------
-- Table structure for organizations_courseorg
-- ----------------------------
DROP TABLE IF EXISTS `organizations_courseorg`;
CREATE TABLE `organizations_courseorg` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `desc` longtext NOT NULL,
  `tag` varchar(10) NOT NULL,
  `category` varchar(4) NOT NULL,
  `click_nums` int NOT NULL,
  `fav_nums` int NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL,
  `students` int NOT NULL,
  `course_nums` int NOT NULL,
  `city_id` int NOT NULL,
  `is_auth` tinyint(1) NOT NULL,
  `is_gold` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organizations_course_city_id_d828a591_fk_organizat` (`city_id`),
  CONSTRAINT `organizations_course_city_id_d828a591_fk_organizat` FOREIGN KEY (`city_id`) REFERENCES `organizations_city` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of organizations_courseorg
-- ----------------------------

-- ----------------------------
-- Table structure for organizations_teacher
-- ----------------------------
DROP TABLE IF EXISTS `organizations_teacher`;
CREATE TABLE `organizations_teacher` (
  `id` int NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `work_years` int NOT NULL,
  `work_company` varchar(50) NOT NULL,
  `work_position` varchar(50) NOT NULL,
  `points` varchar(50) NOT NULL,
  `click_nums` int NOT NULL,
  `fav_nums` int NOT NULL,
  `age` int NOT NULL,
  `image` varchar(100) NOT NULL,
  `org_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `organizations_teache_org_id_c716b697_fk_organizat` (`org_id`),
  CONSTRAINT `organizations_teache_org_id_c716b697_fk_organizat` FOREIGN KEY (`org_id`) REFERENCES `organizations_courseorg` (`id`),
  CONSTRAINT `organizations_teacher_user_id_5b300fcd_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of organizations_teacher
-- ----------------------------

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(50) DEFAULT NULL,
  `birthday` datetime(6) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `mobile` varchar(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$150000$VQjhPQSiZHRW$2O2boForKLwuQuF/jiPuOPkh7ZlgReEfJhyYFF00Wjw=', '2022-02-15 09:32:25.071583', '1', 'ww422', '', '', '422963730@qq.com', '1', '1', '2022-02-15 09:31:20.598894', '', null, null, '', '', 'default.jpg');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userprofile_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userprofile_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2022-02-15 09:33:21.555006', '127.0.0.1', '1', '视频上传权限', 'create', '已添加。', '3', '1');

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
