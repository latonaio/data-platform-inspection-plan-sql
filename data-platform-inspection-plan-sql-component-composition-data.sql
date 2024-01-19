CREATE TABLE `data_platform_inspection_plan_component_composition_data`
(
	`InspectionPlan`                                int(16) NOT NULL,
    `ComponentCompositionType`                      varchar(6) NOT NULL,
    `ComponentCompositionUpperLimitInPercent`       float(10) NOT NULL,
    `ComponentCompositionLowerLimitInPercent`       float(10) NOT NULL,
    `ComponentCompositionStandardValueInPercent`    float(10) NOT NULL,
	`CreationDate`                       			date NOT NULL,
	`LastChangeDate`                     			date NOT NULL,
	`IsMarkedForDeletion`                           tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`InspectionPlan`, `ComponentCompositionType`),

    CONSTRAINT `DPFMInspectionPlanComponentCompositionData_fk` FOREIGN KEY (`InspectionPlan`) REFERENCES `data_platform_inspection_plan_header_data` (`InspectionPlan`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
