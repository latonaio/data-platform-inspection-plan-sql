CREATE TABLE `data_platform_inspection_plan_inspection_data`
(
	`InspectionPlan`                           int(16) NOT NULL,
	`Inspection`                               int(6) NOT NULL,
    `InspectionType`                           varchar(100) NOT NULL,
    `InspectionTypeValueUnit`                  varchar(3) DEFAULT NULL,
    `InspectionTypePlannedValue`               float(15) DEFAULT NULL,
    `InspectionTypeCertificateType`	           varchar(20) DEFAULT NULL,
    `InspectionTypeCertificateValueInText`     varchar(20) DEFAULT NULL,
    `InspectionTypeCertificateValueInQuantity` float(15) DEFAULT NULL,
    `InspectionPlanInspectionText`	           varchar(200) DEFAULT NULL,
	`CreationDate`                             date NOT NULL,
	`LastChangeDate`                           date NOT NULL,
	`IsMarkedForDeletion`                      tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`InspectionPlan`, `Inspection`),

    CONSTRAINT `DPFMInspectionPlanInspectionData_fk` FOREIGN KEY (`InspectionPlan`) REFERENCES `data_platform_inspection_plan_header_data` (`InspectionPlan`),
    CONSTRAINT `DPFMInspectionPlanInspectionDataInspectionTypeValueUnit_fk` FOREIGN KEY (`InspectionTypeValueUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`)
	
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
