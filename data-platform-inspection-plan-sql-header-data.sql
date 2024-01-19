CREATE TABLE `data_platform_inspection_plan_header_data`
(
	`InspectionPlan`                 int(16) NOT NULL,
	`InspectionPlantBusinessPartner` int(12) NOT NULL,
	`InspectionPlant`  			 	 varchar(4) NOT NULL,
	`Product`  			 			 varchar(40) DEFAULT NULL,
    `ValidityStartDate`              date DEFAULT NULL,
    `ValidityEndDate`                date DEFAULT NULL,
	`ProductSpecification`		 	 varchar(200) DEFAULT NULL,
	`InspectionSpecification`		 varchar(200) DEFAULT NULL,
	`InspectionPlanHeaderText`		 varchar(200) DEFAULT NULL,
  	`CertificateAuthorityChain`      varchar(2000) DEFAULT NULL,
  	`UsageControlChain`              varchar(2000) DEFAULT NULL,
	`CreationDate`                   date NOT NULL,
	`LastChangeDate`                 date NOT NULL,
	`IsMarkedForDeletion`            tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`InspectionPlan`),

    CONSTRAINT `DPFMInspectionPlanHeaderData_fk` FOREIGN KEY (`InspectionPlantBusinessPartner`, `InspectionPlant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`),
    CONSTRAINT `DPFMInspectionPlanHeaderDataProduct_fk` FOREIGN KEY (`Product`, `InspectionPlantBusinessPartner`, `InspectionPlant`) REFERENCES `data_platform_product_master_quality_data` (`Product`, `BusinessPartner`, `Plant`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
