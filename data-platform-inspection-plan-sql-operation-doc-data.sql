CREATE TABLE `data_platform_inspection_plan_operation_doc_data`
(
  `InspectionPlan`                 int(16) NOT NULL,
  `Operations`                     int(16) NOT NULL,
  `OperationsItem`                 int(6) NOT NULL,
  `OperationID`                    int(4) NOT NULL,
  `DocType`                        varchar(100) NOT NULL,
  `DocVersionID`                   int(4) NOT NULL,
  `DocID`                          varchar(100) NOT NULL,
  `FileExtension`                  varchar(20) NOT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,
  `FilePath`                       varchar(1000) DEFAULT NULL,
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,
  
    PRIMARY KEY (`InspectionPlan`, `Operations`, `OperationsItem`, `OperationID`, `DocType`, `DocVersionID`, `DocID`),
    
    CONSTRAINT `DPFMInspectionPlanOperationDocData_fk` FOREIGN KEY (`InspectionPlan`, `Operations`, `OperationsItem`, `OperationID`) REFERENCES `data_platform_inspection_plan_operation_data` (`InspectionPlan`, `Operations`, `OperationsItem`, `OperationID`),
    CONSTRAINT `DPFMInspectionPlanOperationDocDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`),
    CONSTRAINT `DPFMInspectionPlanOperationDocDataDocIssuerBusinessPartner_fk` FOREIGN KEY (`DocIssuerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
