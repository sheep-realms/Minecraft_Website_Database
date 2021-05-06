/*
Navicat MySQL Data Transfer

Author - Sheep-realms

Source Server         : mcweb
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : mcweb

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2021-05-06 20:43:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mcw_category
-- ----------------------------
DROP TABLE IF EXISTS `mcw_category`;
CREATE TABLE `mcw_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(64) DEFAULT NULL COMMENT '本地化键名',
  `name` varchar(64) DEFAULT NULL COMMENT '分类名称',
  `parent_id` int(11) DEFAULT NULL COMMENT '父分类ID',
  `sort_index` int(11) DEFAULT '0' COMMENT '排序编号',
  `is_index` bit(1) DEFAULT NULL COMMENT '是否为索引分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mcw_category
-- ----------------------------
INSERT INTO `mcw_category` VALUES ('1', 'root', '根', null, '0', null);
INSERT INTO `mcw_category` VALUES ('2', 'official', '官方', '1', '0', null);
INSERT INTO `mcw_category` VALUES ('3', 'forum', '论坛', '1', '0', null);
INSERT INTO `mcw_category` VALUES ('4', 'resource', '资源', '1', '0', null);
INSERT INTO `mcw_category` VALUES ('5', 'tool', '工具', '1', '0', null);
INSERT INTO `mcw_category` VALUES ('6', 'wiki', '百科', '1', '0', null);
INSERT INTO `mcw_category` VALUES ('7', 'document', '文档', '1', '0', null);
INSERT INTO `mcw_category` VALUES ('8', 'minigame', '小游戏', '1', '0', null);
INSERT INTO `mcw_category` VALUES ('9', 'mojang', 'Mojang', '2', '0', null);
INSERT INTO `mcw_category` VALUES ('10', 'netease', '网易', '2', '0', null);
INSERT INTO `mcw_category` VALUES ('11', 'microsoft', '微软', '2', '0', null);
INSERT INTO `mcw_category` VALUES ('12', 'world', '地图', '4', '0', null);
INSERT INTO `mcw_category` VALUES ('13', 'skin', '皮肤', '4', '0', null);
INSERT INTO `mcw_category` VALUES ('14', 'resources_pack', '资源包', '4', '0', null);
INSERT INTO `mcw_category` VALUES ('15', 'datapack', '数据包', '4', '0', null);
INSERT INTO `mcw_category` VALUES ('16', 'mod', '模组', '4', '0', null);
INSERT INTO `mcw_category` VALUES ('17', 'modpack', '整合包', '4', '0', null);
INSERT INTO `mcw_category` VALUES ('18', 'servermod', '服务端插件', '4', '0', null);
INSERT INTO `mcw_category` VALUES ('19', 'serverpack', '服务端整合包', '4', '0', null);
INSERT INTO `mcw_category` VALUES ('20', 'accessories', '周边', '4', '0', null);
INSERT INTO `mcw_category` VALUES ('21', 'literature', '文学', '20', '0', null);
INSERT INTO `mcw_category` VALUES ('22', 'illustration', '插画', '20', '0', null);
INSERT INTO `mcw_category` VALUES ('23', 'journal', '期刊', '20', '0', null);
INSERT INTO `mcw_category` VALUES ('24', 'model', '模型', '20', '0', null);
INSERT INTO `mcw_category` VALUES ('25', 'software', '软件', '4', '0', null);
INSERT INTO `mcw_category` VALUES ('26', 'launcher', '启动器', '25', '0', null);
INSERT INTO `mcw_category` VALUES ('27', 'client_tool', '客户端工具', '25', '0', null);
INSERT INTO `mcw_category` VALUES ('28', 'server_tool', '服务端工具', '25', '0', null);
INSERT INTO `mcw_category` VALUES ('29', 'auxiliary_software', '辅助软件', '25', '0', null);
INSERT INTO `mcw_category` VALUES ('30', 'support_library', '运行环境/支持库', '25', '0', null);
INSERT INTO `mcw_category` VALUES ('31', 'server', '服务器', '1', '0', null);
INSERT INTO `mcw_category` VALUES ('32', 'shaderpacks', '光影', '16', '0', null);
INSERT INTO `mcw_category` VALUES ('33', 'ind_platform', '游戏发布平台', '1', '0', '');
INSERT INTO `mcw_category` VALUES ('34', 'java_edition', 'Java版', '33', '0', null);
INSERT INTO `mcw_category` VALUES ('35', 'bedrock_edition', '基岩版', '33', '0', null);
INSERT INTO `mcw_category` VALUES ('36', 'news', '新闻', '1', '0', null);
INSERT INTO `mcw_category` VALUES ('37', 'team', '组织团队', '1', '0', null);

-- ----------------------------
-- Table structure for mcw_web
-- ----------------------------
DROP TABLE IF EXISTS `mcw_web`;
CREATE TABLE `mcw_web` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(64) DEFAULT NULL COMMENT '本地化键名',
  `name` varchar(64) DEFAULT NULL COMMENT '网站名称',
  `website` varchar(512) DEFAULT NULL COMMENT '网页地址',
  `description` varchar(512) DEFAULT NULL COMMENT '描述',
  `category` varchar(512) DEFAULT NULL COMMENT '分类列表',
  `state` int(3) DEFAULT '1' COMMENT '网站状态',
  `weight` int(11) DEFAULT '0' COMMENT '权重',
  `lang` varchar(512) DEFAULT NULL COMMENT '语言',
  PRIMARY KEY (`id`),
  KEY `w_state` (`state`),
  CONSTRAINT `w_state` FOREIGN KEY (`state`) REFERENCES `mcw_webstate` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mcw_web
-- ----------------------------
INSERT INTO `mcw_web` VALUES ('1', 'minecraft', 'Minecraft 官方网站', 'https://www.minecraft.net/', 'Minecraft官方购买与下载网站', '2,4,9,34,35', '1', '65535', 'en,zh_CN');
INSERT INTO `mcw_web` VALUES ('2', '', '我的世界中国版官方网站', 'http://mc.163.com/', '由网易代理的我的世界中国版', '2,4,10', '1', '10000', 'zh_CN');
INSERT INTO `mcw_web` VALUES ('3', '', 'Minecraft Wiki', 'https://minecraft.fandom.com/', 'Minecraft百科全书', '6,34,35', '1', '6000', 'en,zh,zh_CN,zh_TW,cs,de,el,es,fr,hu,it,ja,ko,nl,pl,pt,ru,th,tr,uk');
INSERT INTO `mcw_web` VALUES ('4', '', 'Minecraft Wiki B站镜像', 'https://wiki.biligame.com/mc/', 'Minecraft Wiki在哔哩哔哩游戏百科上的镜像', '6,34,35', '1', '2500', 'zh_CN');
INSERT INTO `mcw_web` VALUES ('5', '', '我的世界中文论坛（MCBBS）', 'https://www.mcbbs.net/', '最大的Minecraft中文玩家交流论坛', '3,4,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,31,34,35,36', '1', '5000', 'zh_CN');
INSERT INTO `mcw_web` VALUES ('6', '', '网易我的世界论坛', 'https://mc.netease.com/', '我的世界中国版官方论坛', '2,3,10', '1', '4000', 'zh_CN');
INSERT INTO `mcw_web` VALUES ('7', '', 'Minecraft 官方论坛', 'https://www.minecraftforum.net/', 'Minecraft官方玩家交流论坛', '2,3,9', '1', '3800', 'en');
INSERT INTO `mcw_web` VALUES ('8', '', 'Mojang 漏洞追踪器', 'https://bugs.mojang.com/', '向Mojang提交漏洞', '2,9,34,35', '1', '100', 'en');
INSERT INTO `mcw_web` VALUES ('9', '', 'MC模组百科', 'https://www.mcmod.cn/', '最大的Minecraft中文MOD百科', '6,34', '1', '4000', 'zh_CN');
INSERT INTO `mcw_web` VALUES ('10', '', 'Minecraft插件百科', 'https://mineplugin.org/', '关于Minecraft服务端插件的百科', '6,34', '1', '1000', 'zh_CN');
INSERT INTO `mcw_web` VALUES ('11', '', '我的世界玩家社区Wiki', 'http://wiki.biligame.com/mcplayer/', '关于Minecraft玩家社区贡献内容的百科', '6,34,35', '1', '600', 'zh_CN');
INSERT INTO `mcw_web` VALUES ('12', '', '巴哈姆特 Minecraft讨论版', 'https://forum.gamer.com.tw/A.php?bsn=18673', '在巴哈姆特上建立的Minecraft版块', '3', '1', '10', 'zh_TW');
INSERT INTO `mcw_web` VALUES ('13', '', '百度贴吧 minecraft吧', 'https://tieba.baidu.com/f?kw=minecraft', '在百度贴吧上建立的Minecraft版块', '3', '1', '1000', 'zh_CN');
INSERT INTO `mcw_web` VALUES ('14', '', 'Planet Minecraft Community', 'https://www.planetminecraft.com/', '一个国外的Minecraft资源社区', '3,4,12,13,14,15,16,31,34,35', '1', '800', 'en');
INSERT INTO `mcw_web` VALUES ('15', '', '数据包 - datapack.space', 'https://datapack.space/', '全球数据包索引库', '4,15,34', '1', '0', 'en,zh_CN');
INSERT INTO `mcw_web` VALUES ('16', '', 'LittleSkin', 'https://littlesk.in/', '快速、可靠的公益 Minecraft 皮肤站', '4,13,34', '1', '0', 'zh_CN');
INSERT INTO `mcw_web` VALUES ('17', '', '红石皮肤站', 'https://mcskin.cn/', '免费，快速，可靠的皮肤站', '4,13,34', '1', '0', 'zh_CN');
INSERT INTO `mcw_web` VALUES ('18', '', 'MineChest 箱子菜单配置编辑器', 'https://minechest.cn/', '这个工具可以帮助您快速生成 ChestCommands 插件的配置文件', '5,34', '1', '0', 'zh_CN');
INSERT INTO `mcw_web` VALUES ('19', '', 'Minecraft Sounds', 'https://o.xbottle.top/mcsounds/', 'Minecraft音效资源下载', '5', '1', '0', 'zh_CN');
INSERT INTO `mcw_web` VALUES ('20', '', 'CB Creator', 'https://www.mcmod.cn/tools/cbcreator/', '功能强大的在线全命令生成器', '5,34', '1', '0', 'zh_CN');
INSERT INTO `mcw_web` VALUES ('21', '', '2M域名获取工具', 'https://2m.pub/', '公益、免费、简单的Minecraft短域名获取工具', '5', '1', '0', 'zh_CN');
INSERT INTO `mcw_web` VALUES ('22', '', 'MCVersions', 'https://mcversions.net/', '查找和下载Minecraft', '4', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('23', '', 'OptiFine', 'https://optifine.net/', 'Minecraft高清修复补丁官方网站', '4', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('24', '', 'OptiFine CN', 'https://optifine.cn/', 'Minecraft高清修复补丁国内镜像网站', '4', '1', '0', 'zh_CN');
INSERT INTO `mcw_web` VALUES ('25', '', 'GMCT 我的世界命令生成器', 'https://mc.metamo.cn/gmct/', '一款整合了多种功能的命令生成器', '5,34', '1', '0', 'zh_CN');
INSERT INTO `mcw_web` VALUES ('26', '', '我的世界战利品表生成器 - 甘小蔗', 'https://mc.metamo.cn/tool/loottable/', '一款用于生成我的世界战利品表的生成器', '5,34', '1', '0', 'zh_CN');
INSERT INTO `mcw_web` VALUES ('27', '', 'Bugjang 状态监视器', 'https://bugjang.uuuu.work/', '可视化的 Mojang API 状态监器', '5', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('28', '', 'Minecraft Tools', 'https://minecraft.tools/', '我的世界工具箱', '5', '1', '0', 'en,de,es,fr,it,ru');
INSERT INTO `mcw_web` VALUES ('29', '', 'Minecraft UNICODE Font Texture Genterator Online', 'https://codehz.github.io/minecraft-unicode-font-texture-generator-online/', '在线高清字体资源包生成器', '5,14,34', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('30', '', 'Minecraft Skinavatar', 'http://minecraftskinavatar.com/', '通过正版皮肤生成头像', '5', '0', '0', 'en,zh_CN');
INSERT INTO `mcw_web` VALUES ('31', '', '繁星若尘皮肤站（Starrymc Minecraft Skin）', 'https://skin.jingqingg.com/', '免费的服务器外置登录和皮肤站', '4,13,34', '1', '0', 'zh_CN');
INSERT INTO `mcw_web` VALUES ('32', '', '我的世界粒子画生成器', 'https://www.mcadmin.cn/tools/particle-painter/', '在Minecraft中以不同色粒子排列来重绘你的图片', '4,13', '1', '0', 'zh_CN,zh_TW');
INSERT INTO `mcw_web` VALUES ('33', '', '最MC论坛', 'http://www.zuimc.com/', '一个汇集各种Minecraft资源、服务器与腐竹及玩家的MC论坛', '3,4,12,13,16,17,18,19,31,36', '1', '0', 'zh_CN');
INSERT INTO `mcw_web` VALUES ('34', '', 'NovaSkin', 'http://minecraft.novaskin.me/', '在线编辑皮肤和生成预览图', '5', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('35', '', 'Minecraft Dungeons', 'https://www.minecraftdungeons.net/', '我的世界地下城官方网站', '2,4,9', '1', '0', 'en,zh_CN');
INSERT INTO `mcw_web` VALUES ('36', '', 'Minecraft Feedback', 'https://feedback.minecraft.net/', '这里可以提交Minecraft反馈建议', '2,9', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('37', '', 'Minecraft Help', 'https://help.minecraft.net/', '获取Minecraft有关的帮助与客服咨询', '2,9', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('38', '', 'Minecraft: Education Edition', 'https://education.minecraft.net/', 'Minecraft教育版官方网站', '2,4,9', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('39', '', 'Minecraft - Twitch', 'https://www.twitch.tv/Minecraft', 'Minecraft官方在Twitch上的频道', '2,9', '1', '0', 'en,zh_CN');
INSERT INTO `mcw_web` VALUES ('40', '', 'Minecraft - YouTube', 'https://youtube.com/Minecraft', 'Minecraft官方在YouTube上的频道', '2,9', '1', '0', 'en,zh_CN');
INSERT INTO `mcw_web` VALUES ('41', '', 'Minecraft - Twitter', 'https://twitter.com/Minecraft', 'Minecraft官方在Twitter上的账号', '2,9', '1', '0', 'en,zh_CN');
INSERT INTO `mcw_web` VALUES ('42', '', 'Advancements', 'https://advancements.thedestruc7i0n.ca/', 'Minecraft进度生成器', '5,34', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('43', '', 'Spu Performs Updating', 'https://spu.spgoding.com/', '将Minecraft旧版命令升级到新版命令', '5,34', '1', '0', 'en,zh_CN');
INSERT INTO `mcw_web` VALUES ('44', '', '获取玩家UUID - Mojang API', 'https://api.mojang.com/users/profiles/minecraft/Notch', '使用官方的API在地址中传入玩家名称获取玩家UUID', '2,9,34', '1', '0', '');
INSERT INTO `mcw_web` VALUES ('45', '', 'Minecraft - CurseForge', 'https://www.curseforge.com/minecraft/', '在CurseForge上建立的Minecraft资源网站', '4,12,14,16,17,18,32,34,35', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('46', '', 'McStatus 我的世界服务器社区', 'https://www.mcstatus.cn/', '一个服务器社区兼服务器状态贴图系统', '5,31,34', '1', '0', 'zh_CN');
INSERT INTO `mcw_web` VALUES ('47', '', 'Minecraft Apps', 'https://www.chunkbase.com/apps/', '一个Minecraft多功能工具箱', '5', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('48', '', 'Biome Finder - Minecraft Apps', 'https://www.chunkbase.com/apps/biome-finder', '通过种子查询生物群系生成', '5', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('49', '', 'Slime Finder - Minecraft Apps', 'https://www.chunkbase.com/apps/slime-finder', '通过种子查询史莱姆区块生成', '5', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('50', '', 'Village Finder - Minecraft Apps', 'https://www.chunkbase.com/apps/village-finder', '通过种子查询村庄生成', '5', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('51', '', 'Dungeon Finder - Minecraft Apps', 'https://www.chunkbase.com/apps/dungeon-finder', '通过种子查询地牢生成', '5', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('52', '', 'Stronghold Finder - Minecraft Apps', 'https://www.chunkbase.com/apps/stronghold-finder', '通过种子查询要塞（末地传送门）生成', '5', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('53', '', 'Mansion Finder - Minecraft Apps', 'https://www.chunkbase.com/apps/mansion-finder', '通过种子查询林地府邸生成', '5', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('54', '', 'Ocean Monument Finder - Minecraft Apps', 'https://www.chunkbase.com/apps/ocean-monument-finder', '通过种子查询海底神殿生成', '5', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('55', '', 'Pillager Outpost Finder - Minecraft Apps', 'https://www.chunkbase.com/apps/pillager-outpost-finder', '通过种子查询掠夺者前哨站生成', '5', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('56', '', 'Mineshaft Finder - Minecraft Apps', 'https://www.chunkbase.com/apps/mineshaft-finder', '通过种子查询废弃矿井生成', '5', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('57', '', 'Ruined Portal Finder - Minecraft Apps', 'https://www.chunkbase.com/apps/ruined-portal-finder', '通过种子查询废弃传送门生成', '5', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('58', '', 'Jungle Temple Finder - Minecraft Apps', 'https://www.chunkbase.com/apps/jungle-temple-finder', '通过种子查询丛林神庙生成', '5', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('59', '', 'Desert Temple Finder - Minecraft Apps', 'https://www.chunkbase.com/apps/desert-temple-finder', '通过种子查询沙漠神殿生成', '5', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('60', '', 'Witch Hut Finder - Minecraft Apps', 'https://www.chunkbase.com/apps/witch-hut-finder', '通过种子查询女巫小屋生成', '5', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('61', '', 'Buried Treasure Finder - Minecraft Apps', 'https://www.chunkbase.com/apps/buried-treasure-finder', '通过种子查询埋藏的宝藏生成', '5', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('62', '', 'Shipwreck Finder - Minecraft Apps', 'https://www.chunkbase.com/apps/shipwreck-finder', '通过种子查询沉船生成', '5', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('63', '', 'Igloo Finder - Minecraft Apps', 'https://www.chunkbase.com/apps/igloo-finder', '通过种子查询雪屋生成', '5', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('64', '', 'Ocean Ruin Finder - Minecraft Apps', 'https://www.chunkbase.com/apps/ocean-ruin-finder', '通过种子查询海底废墟生成', '5', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('65', '', 'Fossil Finder - Minecraft Apps', 'https://www.chunkbase.com/apps/fossil-finder', '通过种子查询化石生成', '5', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('66', '', 'Ravine Finder - Minecraft Apps', 'https://www.chunkbase.com/apps/ravine-finder', '通过种子查询峡谷生成', '5', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('67', '', 'End City Finder - Minecraft Apps', 'https://www.chunkbase.com/apps/endcity-finder', '通过种子查询末地城生成', '5', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('68', '', 'Nether Fortress Finder - Minecraft Apps', 'https://www.chunkbase.com/apps/nether-fortress-finder', '通过种子查询下界要塞生成', '5', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('69', '', 'Bastion Remnant Finder - Minecraft Apps', 'https://www.chunkbase.com/apps/bastion-remnant-finder', '通过种子查询堡垒遗迹生成', '5', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('70', '', 'End Gateway Finder - Minecraft Apps', 'https://www.chunkbase.com/apps/end-gateway-finder', '通过种子查询末地折跃门生成', '5', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('71', '', 'Seed Map - Minecraft Apps', 'https://www.chunkbase.com/apps/seed-map', '通过种子查询世界生成概况', '5', '1', '0', 'en');
INSERT INTO `mcw_web` VALUES ('72', '', 'BakaXL 启动器', 'https://www.bakaxl.com/', '新一代崩坏Minecraft启动器', '25,26', '1', '0', 'zh_CN');
INSERT INTO `mcw_web` VALUES ('73', '', 'BakaXL User Community', 'https://bbs.bakaxl.com/', 'BakaXL启动器官方论坛', '3,25,26', '1', '0', 'zh_CN');
INSERT INTO `mcw_web` VALUES ('74', '', 'Minecraft九州风云社区', 'https://zhuiyimc.top/', '一个以社区为中心的交流论坛', '3,4', '1', '0', 'zh_CN');

-- ----------------------------
-- Table structure for mcw_webstate
-- ----------------------------
DROP TABLE IF EXISTS `mcw_webstate`;
CREATE TABLE `mcw_webstate` (
  `id` int(3) NOT NULL,
  `key` varchar(64) NOT NULL COMMENT '本地化键名',
  `name` varchar(64) DEFAULT NULL COMMENT '状态名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mcw_webstate
-- ----------------------------
INSERT INTO `mcw_webstate` VALUES ('0', 'unknown', '未知');
INSERT INTO `mcw_webstate` VALUES ('1', 'normal', '正常');
INSERT INTO `mcw_webstate` VALUES ('2', 'close', '关闭');
INSERT INTO `mcw_webstate` VALUES ('3', 'move', '迁移');
