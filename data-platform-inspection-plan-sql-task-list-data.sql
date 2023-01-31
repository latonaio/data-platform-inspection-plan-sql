CREATE TABLE `data_platform_inspection_plan_task_list_data`
(
	`InspectionPlanGroup`                    int(12) NOT NULL,
	`InspectionPlan`                         int(4) NOT NULL,
	`InspectionPlanInternalVersion`          varchar(8) NOT NULL,
    `InspectionPlanTaskListGroup`            varchar(8) NOT NULL,
    `InspectionPlanTaskList`                 varchar(2) NOT NULL,
    `InspectionPlanTaskListInternalVersion`  varchar(3) NOT NULL,
	`ValidityStartDate`                      date NOT NULL,
	`ValidityEndDate`                        date NOT NULL,
    `TaskListDesc`                           varchar(40) DEFAULT NULL,
    `TaskListUsage`                          varchar(3) DEFAULT NULL,
    `TaskListStatus`                         varchar(3) DEFAULT NULL,
    `ResponsiblePlannerGroup`                varchar(3) DEFAULT NULL,
    `MinimumLotSizeQuantity`                 float(15) DEFAULT NULL,
    `MaximumLotSizeQuantity`                 float(15) DEFAULT NULL,
    `TaskListUnit`                           varchar(3) DEFAULT NULL,
    `TaskListText`                           varchar(200) DEFAULT NULL,
    `CreationDate`                           date DEFAULT NULL,
    `LastChangeDate`                         date DEFAULT NULL,
    `IsMarkedForDeletion`                    tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`InspectionPlanGroup`, `InspectionPlan`, `InspectionPlanInternalVersion`, `InspectionPlanInternalVersion`, `InspectionPlanTaskList`,`InspectionPlanTaskListInternalVersion`, `ValidityStartDate`, `ValidityEndDate`),

    CONSTRAINT `DPFMInspectionPlanTaskListData_fk` FOREIGN KEY (`InspectionPlanGroup`, `InspectionPlan`, `InspectionPlanInternalVersion`) REFERENCES `data_platform_inspection_plan_header_data`(`InspectionPlanGroup`, `InspectionPlan`, `InspectionPlanInternalVersion`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
