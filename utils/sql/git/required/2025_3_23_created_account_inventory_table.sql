-- quarm.account_inventory definition

CREATE TABLE `account_inventory` (
  `id` int(11) NOT NULL DEFAULT 0,
  `slotid` mediumint(7) unsigned NOT NULL DEFAULT 0,
  `itemid` int(11) unsigned DEFAULT 0,
  `charges` smallint(3) unsigned DEFAULT 0,
  `custom_data` text DEFAULT NULL,
  `serialnumber` int(10) NOT NULL DEFAULT 0,
  `initialserial` tinyint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`,`slotid`),
  KEY `charid` (`id`) USING BTREE,
  KEY `itemid` (`itemid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;