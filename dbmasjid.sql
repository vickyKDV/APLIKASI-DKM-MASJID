/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100129
 Source Host           : localhost:3306
 Source Schema         : dbmasjid

 Target Server Type    : MySQL
 Target Server Version : 100129
 File Encoding         : 65001

 Date: 03/05/2018 19:52:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_kas_masjid
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kas_masjid`;
CREATE TABLE `tbl_kas_masjid`  (
  `id_kas` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `ket` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pemasukan` decimal(18, 0) NULL DEFAULT 0,
  `pengeluaran` decimal(18, 0) NULL DEFAULT 0,
  `user` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_kas`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_kas_masjid
-- ----------------------------
INSERT INTO `tbl_kas_masjid` VALUES (1, '2018-05-03', 'Tes Kas Jum\'at', 100000, 0, '');
INSERT INTO `tbl_kas_masjid` VALUES (2, '2018-05-05', 'TES EDIT', 1000000, 0, '');
INSERT INTO `tbl_kas_masjid` VALUES (4, '2018-05-06', 'KOTAK AMAL PARKIRAN', 100000, 0, '');
INSERT INTO `tbl_kas_masjid` VALUES (5, '2018-05-03', 'TEST', 1000000, 0, '');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id_user` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `username` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(75) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `level` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');
INSERT INTO `tbl_user` VALUES (2, 'ado', 'ado', '421359a899e6aeb972c11a26fb52ad15', 'operator');

-- ----------------------------
-- View structure for v_kas
-- ----------------------------
DROP VIEW IF EXISTS `v_kas`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `v_kas` AS SELECT
a.id_kas,
a.tanggal,
a.ket,
a.pemasukan,
a.pengeluaran,
a.pemasukan - a.pengeluaran as total_kas,
a.`user`
FROM
tbl_kas_masjid AS a ;

SET FOREIGN_KEY_CHECKS = 1;
