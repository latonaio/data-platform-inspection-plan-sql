CREATE TABLE `data_platform_inspection_plan_spec_data`
(
	    `InspectionPlanGroup`                  int(12) NOT NULL,
	    `InspectionPlan`                       int(4) NOT NULL,
	    `InspectionPlanInternalVersion`        varchar(8) NOT NULL,
	    `SpecTypeGroup`              		   int(12) NOT NULL,
	    `SpecTypeInternalID`         		   int(4) NOT NULL,
	    `SpecTypeInternalVersion`              varchar(8) NOT NULL,
		`ValidityStartDate`              	   date NOT NULL,
		`ValidityEndDate`                	   date NOT NULL,
	    `SpecType`                             varchar(6) DEFAULT NULL,
	    `SpecTypeUpperSpecLimit`               float(10) DEFAULT NULL,
	    `SpecTypeLowerSpecLimit`               float(10) DEFAULT NULL,
	    `SpecTypeHeatNumber`                   float(10) DEFAULT NULL,
	    `SpecTypeUnit`                         varchar(3) DEFAULT NULL,
        `SpecText`                             varchar(200) DEFAULT NULL,
        `CreationDate`                         date DEFAULT NULL,
        `LastChangeDate`                       date DEFAULT NULL,
        `IsMarkedForDeletion`                  tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`InspectionPlanGroup`, `InspectionPlan`, `InspectionPlanInternalVersion`, `SpecTypeGroup` `SpecTypeInternalID`, `SpecTypeInternalVersion`, `ValidityStartDate`, `ValidityEndDate`),

    CONSTRAINT `DPFMInspectionPlanSpecData_fk` FOREIGN KEY (`InspectionPlanGroup`, `InspectionPlan`, `InspectionPlanInternalVersion`) REFERENCES `data_platform_inspection_plan_header_data`(`InspectionPlanGroup`, `InspectionPlan`, `InspectionPlanInternalVersion`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;