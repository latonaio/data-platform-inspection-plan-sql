CREATE TABLE `data_platform_inspection_plan_header_doc_data`
(
  `InspectionPlan`                 int(16) NOT NULL,
  `DocType`                        varchar(100) NOT NULL,
  `DocVersionID`                   int(4) NOT NULL,
  `DocID`                          varchar(100) NOT NULL,
  `FileExtension`                  varchar(20) NOT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,
  `FilePath`                       varchar(1000) DEFAULT NULL,
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,
  
    PRIMARY KEY (`InspectionPlan`, `DocType`, `DocVersionID`, `DocID`),
    
    CONSTRAINT `DataPlatformInspectionPlanHeaderDocData_fk` FOREIGN KEY (`InspectionPlan`) REFERENCES `data_platform_inspection_plan_header_data` (`InspectionPlan`),
    CONSTRAINT `DataPlatformInspectionPlanHeaderDocDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`),
    CONSTRAINT `DataPlatformInspectionPlanHeaderDocDataDocIssuerBusinessPartner_fk` FOREIGN KEY (`DocIssuerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
