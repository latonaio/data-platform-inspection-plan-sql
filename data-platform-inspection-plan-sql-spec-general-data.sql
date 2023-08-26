CREATE TABLE `data_platform_inspection_plan_spec_general_data`
(
	`InspectionPlan`                       int(16) NOT NULL,
    `HeatNumber`                           varchar(20) NOT NULL,
    `CreationDate`                         date NOT NULL,
    `LastChangeDate`                       date NOT NULL,
    `IsMarkedForDeletion`                  tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`InspectionPlan`),

    CONSTRAINT `DPFMInspectionPlanSpecGeneralData_fk` FOREIGN KEY (`InspectionPlan`) REFERENCES `data_platform_inspection_plan_header_data` (`InspectionPlan`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
