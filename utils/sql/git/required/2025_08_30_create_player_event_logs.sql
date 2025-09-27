CREATE TABLE IF NOT EXISTS `player_event_logs` (
  `id`              BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_id`      INT UNSIGNED    NOT NULL DEFAULT 0,
  `character_id`    INT UNSIGNED    NOT NULL DEFAULT 0,
  `zone_id`         SMALLINT UNSIGNED NOT NULL DEFAULT 0,
  `instance_id`     INT UNSIGNED    NOT NULL DEFAULT 0,
  `x`               FLOAT           NOT NULL DEFAULT 0,
  `y`               FLOAT           NOT NULL DEFAULT 0,
  `z`               FLOAT           NOT NULL DEFAULT 0,
  `heading`         FLOAT           NOT NULL DEFAULT 0,
  `event_type_id`   INT UNSIGNED    NOT NULL,
  `event_type_name` VARCHAR(64)     NOT NULL,
  -- Use LONGTEXT for broad MariaDB compatibility (JSON also fine if your server supports it)
  `event_data`      LONGTEXT        NULL,
  `etl_table_id`    INT UNSIGNED    NOT NULL DEFAULT 0,
  `created_at`      DATETIME        NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `event_created_at` (`event_type_id`, `created_at`),
  KEY `zone_id` (`zone_id`),
  KEY `character_id_zone_id` (`character_id`, `zone_id`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
