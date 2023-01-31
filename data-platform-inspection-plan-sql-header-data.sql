CREATE TABLE `data_platform_inspection_plan_header_data`
(
		`InspectionPlanGroup`            int(12) NOT NULL,
		`InspectionPlan`                 int(4) NOT NULL,
		`InspectionPlanInternalVersion`  varchar(8) NOT NULL,
		`ValidityStartDate`              date NOT NULL,
		`ValidityEndDate`                date NOT NULL,
		`InspectionPlanText`  			 varchar(200) DEFAULT NULL,
		`CreationDate`                   date DEFAULT NULL,
		`LastChangeDate`                 date DEFAULT NULL,
		`IsMarkedForDeletion`            tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`InspectionPlanGroup`, `InspectionPlan`, `InspectionPlanInternalVersion`, `ValidityStartDate`, `ValidityEndDate`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;