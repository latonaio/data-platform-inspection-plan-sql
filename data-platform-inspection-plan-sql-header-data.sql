CREATE TABLE `data_platform_inspection_plan_header_data`
(
	`InspectionPlantBusinessPartner` int(12) NOT NULL,
	`InspectionPlant`  			 	 varchar(4) NOT NULL,
	`InspectionPlan`                 int(16) NOT NULL,
	`InspectionPlanGroup`            int(4) NOT NULL,
	`InspectionPlanInternalVersion`  int(4) NOT NULL,
	`ValidityStartDate`              date DEFAULT NULL,
	`ValidityEndDate`                date DEFAULT NULL,
	`Product`  			 			 varchar(40) DEFAULT NULL,
	`InspectionPlanText`  			 varchar(200) DEFAULT NULL,
	`CreationDate`                   date DEFAULT NULL,
	`LastChangeDate`                 date DEFAULT NULL,
	`IsMarkedForDeletion`            tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`InspectionPlantBusinessPartner`, `InspectionPlant`, `InspectionPlan`, `InspectionPlanGroup`, `InspectionPlanInternalVersion`),

    CONSTRAINT `DataPlatformInspectionPlanHeaderData_fk` FOREIGN KEY (`InspectionPlantBusinessPartner`, `InspectionPlant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`),
    CONSTRAINT `DataPlatformInspectionPlanHeaderDataProduct_fk` FOREIGN KEY (`Product`) REFERENCES `data_platform_product_master_general_data` (`Product`)
	
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
