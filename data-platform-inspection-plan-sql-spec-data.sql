CREATE TABLE `data_platform_inspection_plan_spec_data`
(
	`InspectionPlantBusinessPartner`       int(12) NOT NULL,
	`InspectionPlant`  			 	       varchar(4) NOT NULL,
	`InspectionPlan`                       int(16) NOT NULL,
	`InspectionPlanGroup`                  int(4) NOT NULL,
	`InspectionPlanInternalVersion`        int(4) NOT NULL,
    `SpecType`                             varchar(6) NOT NULL,
    `SpecTypeUpperSpecLimit`               float(10) DEFAULT NULL,
    `SpecTypeLowerSpecLimit`               float(10) DEFAULT NULL,
    `SpecTypeHeatNumber`                   float(10) DEFAULT NULL,
    `SpecTypeUnit`                         varchar(3) DEFAULT NULL,
	`ValidityStartDate`              	   date NOT NULL,
	`ValidityEndDate`                	   date NOT NULL,
    `CreationDate`                         date DEFAULT NULL,
	`CreationTime`                         time DEFAULT NULL,
    `LastChangeDate`                       date DEFAULT NULL,
	`LastChangeTime`                       time DEFAULT NULL,
    `IsMarkedForDeletion`                  tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`InspectionPlantBusinessPartner`, `InspectionPlant`, `InspectionPlan`, `InspectionPlanGroup`, `InspectionPlanInternalVersion`, `SpecType`),

    CONSTRAINT `DPFMInspectionPlanSpecData_fk` FOREIGN KEY (`InspectionPlantBusinessPartner`, `InspectionPlant`, `InspectionPlan`, `InspectionPlanGroup`, `InspectionPlanInternalVersion`) REFERENCES `data_platform_inspection_plan_header_data`(`InspectionPlantBusinessPartner`, `InspectionPlant`, `InspectionPlan`, `InspectionPlanGroup`, `InspectionPlanInternalVersion`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;