CREATE TABLE `data_platform_inspection_plan_component_composition_data`
(
		`InspectionPlanGroup`            			int(12) NOT NULL,
		`InspectionPlan`                 			int(4) NOT NULL,
		`InspectionPlanInternalVersion`  			varchar(8) NOT NULL,
	    `ComponentCompositionTypeGroup`             int(12) NOT NULL,
	    `ComponentCompositionTypeInternalID`        int(4) NOT NULL,
		`ValidityStartDate`              			date NOT NULL,
		`ValidityEndDate`                			date NOT NULL,
	    `ComponentCompositionType`                  varchar(6) DEFAULT NULL,
	    `ComponentCompositionTypeUpperSpecLimit`    float(10) DEFAULT NULL,
	    `ComponentCompositionTypeLowerSpecLimit`    float(10) DEFAULT NULL,
	    `ComponentCompositionTypeHeatNumber`        float(10) DEFAULT NULL,
        `ComponentCompositionTypeUnit`              varchar(3) DEFAULT NULL,
        `ComponentCompositionText`                  varchar(200) DEFAULT NULL,
		`CreationDate`                   			date DEFAULT NULL,
		`LastChangeDate`                 			date DEFAULT NULL,
		`IsMarkedForDeletion`                       tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`InspectionPlanGroup`, `InspectionPlan`, `InspectionPlanInternalVersion`, `ComponentCompositionTypeGroup`, `ComponentCompositionTypeInternalID`, `ValidityStartDate`, `ValidityEndDate`),

    CONSTRAINT `DPFMInspectionPlanComponentCompositionData_fk` FOREIGN KEY (`InspectionPlanGroup`, `InspectionPlan`, `InspectionPlanInternalVersion`) REFERENCES `data_platform_inspection_plan_header_data`(`InspectionPlanGroup`, `InspectionPlan`, `InspectionPlanInternalVersion`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
