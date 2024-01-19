CREATE TABLE `data_platform_inspection_plan_spec_detail_data`
(
	`InspectionPlan`                       int(16) NOT NULL,
    `SpecType`                             varchar(100) NOT NULL,
    `UpperLimitValue`                      float(10) NOT NULL,
    `LowerLimitValue`                      float(10) NOT NULL,
    `StandardValue`                        float(10) NOT NULL,
    `SpecTypeUnit`                         varchar(3) NOT NULL,
    `Formula`                              varchar(1000) DEFAULT NULL,
    `CreationDate`                         date NOT NULL,
    `LastChangeDate`                       date NOT NULL,
    `IsMarkedForDeletion`                  tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`InspectionPlan`, `SpecType`),

    CONSTRAINT `DPFMInspectionPlanSpecDetailData_fk` FOREIGN KEY (`InspectionPlan`) REFERENCES `data_platform_inspection_plan_header_data` (`InspectionPlan`),
    CONSTRAINT `DPFMInspectionPlanSpecDetailDataSpecTypeUnit_fk` FOREIGN KEY (`SpecTypeUnit`) REFERENCES `data_platform_quantity_unit_quantity_unit_data` (`QuantityUnit`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
