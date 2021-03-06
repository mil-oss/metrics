-- *********************************************************************
-- Update Database Script
-- *********************************************************************
-- Change Log: changelog.groovy
-- Ran at: 5/30/12 8:17 PM

-- Liquibase version: 2.0.1
-- *********************************************************************

-- Create Database Lock Table
CREATE TABLE `DATABASECHANGELOGLOCK` (`ID` INT NOT NULL, `LOCKED` TINYINT(1) NOT NULL, `LOCKGRANTED` DATETIME, `LOCKEDBY` VARCHAR(255), CONSTRAINT `PK_DATABASECHANGELOGLOCK` PRIMARY KEY (`ID`)) ENGINE=InnoDB;

INSERT INTO `DATABASECHANGELOGLOCK` (`ID`, `LOCKED`) VALUES (1, 0);

-- Lock Database
-- Create Database Change Log Table
CREATE TABLE `DATABASECHANGELOG` (`ID` VARCHAR(63) NOT NULL, `AUTHOR` VARCHAR(63) NOT NULL, `FILENAME` VARCHAR(200) NOT NULL, `DATEEXECUTED` DATETIME NOT NULL, `ORDEREXECUTED` INT NOT NULL, `EXECTYPE` VARCHAR(10) NOT NULL, `MD5SUM` VARCHAR(35), `DESCRIPTION` VARCHAR(255), `COMMENTS` VARCHAR(255), `TAG` VARCHAR(255), `LIQUIBASE` VARCHAR(20), CONSTRAINT `PK_DATABASECHANGELOG` PRIMARY KEY (`ID`, `AUTHOR`, `FILENAME`)) ENGINE=InnoDB;

-- Changeset changelog_5.0.0.groovy::5.0.0-1::owf::(Checksum: 3:d0ed4813812e9adb341ba2d8e50427da)
-- Creating metric table
CREATE TABLE `metric` (`id` BIGINT AUTO_INCREMENT  NOT NULL, `version` BIGINT NOT NULL, `component` VARCHAR(200) NOT NULL, `component_id` VARCHAR(255) NOT NULL, `instance_id` VARCHAR(255) NOT NULL, `metric_time` VARCHAR(255) NOT NULL, `metric_type_id` VARCHAR(255) NOT NULL, `site` VARCHAR(255) NOT NULL, `user_agent` VARCHAR(255) NOT NULL, `user_id` VARCHAR(255) NOT NULL, `user_name` VARCHAR(255) NOT NULL, `widget_data` VARCHAR(255), CONSTRAINT `metricPK` PRIMARY KEY (`id`)) ENGINE=InnoDB;

INSERT INTO `DATABASECHANGELOG` (`AUTHOR`, `COMMENTS`, `DATEEXECUTED`, `DESCRIPTION`, `EXECTYPE`, `FILENAME`, `ID`, `LIQUIBASE`, `MD5SUM`, `ORDEREXECUTED`) VALUES ('owf', 'Creating metric table', NOW(), 'Create Table', 'EXECUTED', 'changelog_5.0.0.groovy', '5.0.0-1', '2.0.1', '3:d0ed4813812e9adb341ba2d8e50427da', 1);

-- Changeset changelog_5.0.0.groovy::5.0.0-2::owf::(Checksum: 3:fc5ad69bb5039167b4172b1dc69e9fc3)
CREATE TABLE `owf_group` (`id` BIGINT AUTO_INCREMENT  NOT NULL, `version` BIGINT NOT NULL, `automatic` TINYINT(1) NOT NULL, `description` VARCHAR(255), `email` VARCHAR(255), `name` VARCHAR(200) NOT NULL, `status` VARCHAR(8) NOT NULL, CONSTRAINT `owf_groupPK` PRIMARY KEY (`id`)) ENGINE=InnoDB;

INSERT INTO `DATABASECHANGELOG` (`AUTHOR`, `COMMENTS`, `DATEEXECUTED`, `DESCRIPTION`, `EXECTYPE`, `FILENAME`, `ID`, `LIQUIBASE`, `MD5SUM`, `ORDEREXECUTED`) VALUES ('owf', '', NOW(), 'Create Table', 'EXECUTED', 'changelog_5.0.0.groovy', '5.0.0-2', '2.0.1', '3:fc5ad69bb5039167b4172b1dc69e9fc3', 2);

-- Changeset changelog_5.0.0.groovy::5.0.0-3::owf::(Checksum: 3:776f3e5531c86c55dd34757827469ecf)
CREATE TABLE `owf_group_people` (`group_id` BIGINT NOT NULL, `person_id` BIGINT NOT NULL) ENGINE=InnoDB;

INSERT INTO `DATABASECHANGELOG` (`AUTHOR`, `COMMENTS`, `DATEEXECUTED`, `DESCRIPTION`, `EXECTYPE`, `FILENAME`, `ID`, `LIQUIBASE`, `MD5SUM`, `ORDEREXECUTED`) VALUES ('owf', '', NOW(), 'Create Table', 'EXECUTED', 'changelog_5.0.0.groovy', '5.0.0-3', '2.0.1', '3:776f3e5531c86c55dd34757827469ecf', 3);

-- Changeset changelog_5.0.0.groovy::5.0.0-4::owf::(Checksum: 3:2c576dc94d7a28be9508a8ed6ff861ac)
CREATE TABLE `person` (`id` BIGINT AUTO_INCREMENT  NOT NULL, `version` BIGINT NOT NULL, `description` VARCHAR(255), `email` VARCHAR(255), `email_show` TINYINT(1) NOT NULL, `enabled` TINYINT(1) NOT NULL, `last_login` TIMESTAMP, `prev_login` TIMESTAMP, `user_real_name` VARCHAR(200) NOT NULL, `username` VARCHAR(200) NOT NULL, CONSTRAINT `personPK` PRIMARY KEY (`id`), UNIQUE (`username`)) ENGINE=InnoDB;

INSERT INTO `DATABASECHANGELOG` (`AUTHOR`, `COMMENTS`, `DATEEXECUTED`, `DESCRIPTION`, `EXECTYPE`, `FILENAME`, `ID`, `LIQUIBASE`, `MD5SUM`, `ORDEREXECUTED`) VALUES ('owf', '', NOW(), 'Create Table', 'EXECUTED', 'changelog_5.0.0.groovy', '5.0.0-4', '2.0.1', '3:2c576dc94d7a28be9508a8ed6ff861ac', 4);

-- Changeset changelog_5.0.0.groovy::5.0.0-5::owf::(Checksum: 3:8e1b2277e0aa08f40ef04493d798b010)
CREATE TABLE `role` (`id` BIGINT AUTO_INCREMENT  NOT NULL, `version` BIGINT NOT NULL, `authority` VARCHAR(255) NOT NULL, `description` VARCHAR(255) NOT NULL, CONSTRAINT `rolePK` PRIMARY KEY (`id`), UNIQUE (`authority`)) ENGINE=InnoDB;

INSERT INTO `DATABASECHANGELOG` (`AUTHOR`, `COMMENTS`, `DATEEXECUTED`, `DESCRIPTION`, `EXECTYPE`, `FILENAME`, `ID`, `LIQUIBASE`, `MD5SUM`, `ORDEREXECUTED`) VALUES ('owf', '', NOW(), 'Create Table', 'EXECUTED', 'changelog_5.0.0.groovy', '5.0.0-5', '2.0.1', '3:8e1b2277e0aa08f40ef04493d798b010', 5);

-- Changeset changelog_5.0.0.groovy::5.0.0-6::owf::(Checksum: 3:e33bfaaeab763096aa90a8483a2e2127)
CREATE TABLE `role_people` (`role_id` BIGINT NOT NULL, `person_id` BIGINT NOT NULL) ENGINE=InnoDB;

INSERT INTO `DATABASECHANGELOG` (`AUTHOR`, `COMMENTS`, `DATEEXECUTED`, `DESCRIPTION`, `EXECTYPE`, `FILENAME`, `ID`, `LIQUIBASE`, `MD5SUM`, `ORDEREXECUTED`) VALUES ('owf', '', NOW(), 'Create Table', 'EXECUTED', 'changelog_5.0.0.groovy', '5.0.0-6', '2.0.1', '3:e33bfaaeab763096aa90a8483a2e2127', 6);

-- Changeset changelog_5.0.0.groovy::5.0.0-7::owf::(Checksum: 3:80e84375f463faef757e5184c1a8c11d)
ALTER TABLE `owf_group_people` ADD PRIMARY KEY (`group_id`, `person_id`);

INSERT INTO `DATABASECHANGELOG` (`AUTHOR`, `COMMENTS`, `DATEEXECUTED`, `DESCRIPTION`, `EXECTYPE`, `FILENAME`, `ID`, `LIQUIBASE`, `MD5SUM`, `ORDEREXECUTED`) VALUES ('owf', '', NOW(), 'Add Primary Key', 'EXECUTED', 'changelog_5.0.0.groovy', '5.0.0-7', '2.0.1', '3:80e84375f463faef757e5184c1a8c11d', 7);

-- Changeset changelog_5.0.0.groovy::5.0.0-8::owf::(Checksum: 3:d5d8393560daec118b4ec2ee8fa2c369)
ALTER TABLE `role_people` ADD PRIMARY KEY (`role_id`, `person_id`);

INSERT INTO `DATABASECHANGELOG` (`AUTHOR`, `COMMENTS`, `DATEEXECUTED`, `DESCRIPTION`, `EXECTYPE`, `FILENAME`, `ID`, `LIQUIBASE`, `MD5SUM`, `ORDEREXECUTED`) VALUES ('owf', '', NOW(), 'Add Primary Key', 'EXECUTED', 'changelog_5.0.0.groovy', '5.0.0-8', '2.0.1', '3:d5d8393560daec118b4ec2ee8fa2c369', 8);

-- Changeset changelog_5.0.0.groovy::5.0.0-9::owf::(Checksum: 3:ccbd0718a11721db8399e3cb503f4728)
CREATE UNIQUE INDEX `username_unique_1334248717317` ON `person`(`username`);

INSERT INTO `DATABASECHANGELOG` (`AUTHOR`, `COMMENTS`, `DATEEXECUTED`, `DESCRIPTION`, `EXECTYPE`, `FILENAME`, `ID`, `LIQUIBASE`, `MD5SUM`, `ORDEREXECUTED`) VALUES ('owf', '', NOW(), 'Create Index', 'EXECUTED', 'changelog_5.0.0.groovy', '5.0.0-9', '2.0.1', '3:ccbd0718a11721db8399e3cb503f4728', 9);

-- Changeset changelog_5.0.0.groovy::5.0.0-10::owf::(Checksum: 3:e71e770a683270a84881275f7e5b84f1)
CREATE UNIQUE INDEX `authority_unique_1334248717321` ON `role`(`authority`);

INSERT INTO `DATABASECHANGELOG` (`AUTHOR`, `COMMENTS`, `DATEEXECUTED`, `DESCRIPTION`, `EXECTYPE`, `FILENAME`, `ID`, `LIQUIBASE`, `MD5SUM`, `ORDEREXECUTED`) VALUES ('owf', '', NOW(), 'Create Index', 'EXECUTED', 'changelog_5.0.0.groovy', '5.0.0-10', '2.0.1', '3:e71e770a683270a84881275f7e5b84f1', 10);

-- Changeset changelog_5.0.0.groovy::5.0.0-11::owf::(Checksum: 3:4d31aea5bd1733c9e178001830e77e67)
ALTER TABLE `owf_group_people` ADD CONSTRAINT `FK28113703B197B21` FOREIGN KEY (`group_id`) REFERENCES `owf_group` (`id`);

INSERT INTO `DATABASECHANGELOG` (`AUTHOR`, `COMMENTS`, `DATEEXECUTED`, `DESCRIPTION`, `EXECTYPE`, `FILENAME`, `ID`, `LIQUIBASE`, `MD5SUM`, `ORDEREXECUTED`) VALUES ('owf', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'changelog_5.0.0.groovy', '5.0.0-11', '2.0.1', '3:4d31aea5bd1733c9e178001830e77e67', 11);

-- Changeset changelog_5.0.0.groovy::5.0.0-12::owf::(Checksum: 3:d67714cb20092581a9533ccf13321f44)
ALTER TABLE `owf_group_people` ADD CONSTRAINT `FK2811370C1F5E0B3` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`);

INSERT INTO `DATABASECHANGELOG` (`AUTHOR`, `COMMENTS`, `DATEEXECUTED`, `DESCRIPTION`, `EXECTYPE`, `FILENAME`, `ID`, `LIQUIBASE`, `MD5SUM`, `ORDEREXECUTED`) VALUES ('owf', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'changelog_5.0.0.groovy', '5.0.0-12', '2.0.1', '3:d67714cb20092581a9533ccf13321f44', 12);

-- Changeset changelog_5.0.0.groovy::5.0.0-13::owf::(Checksum: 3:8dd1b72247c987acb86dd51984dd500d)
ALTER TABLE `role_people` ADD CONSTRAINT `FK28B75E78C1F5E0B3` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`);

INSERT INTO `DATABASECHANGELOG` (`AUTHOR`, `COMMENTS`, `DATEEXECUTED`, `DESCRIPTION`, `EXECTYPE`, `FILENAME`, `ID`, `LIQUIBASE`, `MD5SUM`, `ORDEREXECUTED`) VALUES ('owf', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'changelog_5.0.0.groovy', '5.0.0-13', '2.0.1', '3:8dd1b72247c987acb86dd51984dd500d', 13);

-- Changeset changelog_5.0.0.groovy::5.0.0-14::owf::(Checksum: 3:dc986d30fe40d96c2e4c1d479a1b9d20)
ALTER TABLE `role_people` ADD CONSTRAINT `FK28B75E7870B353` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

INSERT INTO `DATABASECHANGELOG` (`AUTHOR`, `COMMENTS`, `DATEEXECUTED`, `DESCRIPTION`, `EXECTYPE`, `FILENAME`, `ID`, `LIQUIBASE`, `MD5SUM`, `ORDEREXECUTED`) VALUES ('owf', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'changelog_5.0.0.groovy', '5.0.0-14', '2.0.1', '3:dc986d30fe40d96c2e4c1d479a1b9d20', 14);
