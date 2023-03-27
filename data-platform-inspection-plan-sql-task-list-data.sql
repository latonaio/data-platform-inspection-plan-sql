CREATE TABLE `data_platform_inspection_plan_task_list_data`
(
	`InspectionPlantBusinessPartner`       int(12) NOT NULL,
	`InspectionPlant`  			 	       varchar(4) NOT NULL,
	`InspectionPlan`                       int(16) NOT NULL,
	`InspectionPlanGroup`                  int(4) NOT NULL,
	`InspectionPlanInternalVersion`        int(4) NOT NULL,
    `InspectionPlanTaskList`               varchar(2) NOT NULL,
    `TaskListDesc`                         varchar(40) DEFAULT NULL,
    `TaskListUsage`                        varchar(3) DEFAULT NULL,
    `TaskListStatus`                       varchar(3) DEFAULT NULL,
    `MinimumLotSizeQuantity`               float(15) DEFAULT NULL,
    `MaximumLotSizeQuantity`               float(15) DEFAULT NULL,
    `TaskListUnit`                         varchar(3) DEFAULT NULL,
	`ValidityStartDate`                    date NOT NULL,
	`ValidityEndDate`                      date NOT NULL,
    `CreationDate`                         date DEFAULT NULL,
    `Creationtime`                         date DEFAULT NULL,
    `LastChangeDate`                       date DEFAULT NULL,
    `LastChangetime`                       time DEFAULT NULL,
    `IsMarkedForDeletion`                  tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`InspectionPlantBusinessPartner`, `InspectionPlant`, `InspectionPlan`, `InspectionPlanGroup`, `InspectionPlanInternalVersion`, `InspectionPlanTaskList`),

    CONSTRAINT `DPFMInspectionPlanTaskListData_fk` FOREIGN KEY (`InspectionPlantBusinessPartner`, `InspectionPlant`, `InspectionPlan`, `InspectionPlanGroup`, `InspectionPlanInternalVersion`) REFERENCES `data_platform_inspection_plan_header_data` (`InspectionPlantBusinessPartner`, `InspectionPlant`, `InspectionPlan`, `InspectionPlanGroup`, `InspectionPlanInternalVersion`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
