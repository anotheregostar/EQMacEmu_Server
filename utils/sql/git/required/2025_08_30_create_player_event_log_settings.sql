CREATE TABLE IF NOT EXISTS `player_event_log_settings` (
  `event_type_id`       INT UNSIGNED    NOT NULL,
  `event_type_name`     VARCHAR(64)     NOT NULL,
  `is_enabled`          TINYINT(1)      NOT NULL DEFAULT 0,
  `retention_hours`     INT UNSIGNED    NOT NULL DEFAULT 168,  -- one week
  `process_in_queryserv` TINYINT(1)     NOT NULL DEFAULT 0,    -- 0 = process in world
  `discord_webhook_id`  INT UNSIGNED    DEFAULT NULL,
  PRIMARY KEY (`event_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
