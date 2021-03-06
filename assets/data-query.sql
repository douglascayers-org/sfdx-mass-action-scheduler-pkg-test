/*
 * Join the lines of this query together onto one line
 * and use it with the Salesforce CLI requery data.
 *
 * sfdx force:data:tree:export -u ALIAS -d assets/data -q "QUERY"
 */

SELECT
    Id,
    Name,
    OwnerId,
    dca_mass_action__Active__c,
    dca_mass_action__Batch_Size__c,
    dca_mass_action__Description__c,
    dca_mass_action__DeveloperName__c,
    dca_mass_action__Last_Run_Completed_Date__c,
    dca_mass_action__Last_Run_Completed_With_Errors__c,
    dca_mass_action__Named_Credential__c,
    dca_mass_action__Schedule_Cron__c,
    dca_mass_action__Schedule_DayOfMonth__c,
    dca_mass_action__Schedule_DayOfWeek__c,
    dca_mass_action__Schedule_Frequency__c,
    dca_mass_action__Schedule_HourOfDay__c,
    dca_mass_action__Schedule_MinuteOfHour__c,
    dca_mass_action__Schedule_MonthOfYear__c,
    dca_mass_action__Schedule_SecondOfMinute__c,
    dca_mass_action__Source_Apex_Class__c,
    dca_mass_action__Source_List_View_ID__c,
    dca_mass_action__Source_Report_Column_Name__c,
    dca_mass_action__Source_Report_ID__c,
    dca_mass_action__Source_SOQL_Query__c,
    dca_mass_action__Source_Type__c,
    dca_mass_action__Target_Action_Name__c,
    dca_mass_action__Target_Apex_Script__c,
    dca_mass_action__Target_SObject_Type__c,
    dca_mass_action__Target_Type__c,
    (
        SELECT
            Id,
            dca_mass_action__Source_Field_Name__c,
            dca_mass_action__Target_Field_Name__c
        FROM
            dca_mass_action__Mass_Action_Mappings__r
    ),
    (
        SELECT
            Id,
            dca_mass_action__Job_ID__c,
            dca_mass_action__Message__c,
            dca_mass_action__Long_Message__c,
            dca_mass_action__Submitted_Date__c,
            dca_mass_action__Total_Batches__c,
            dca_mass_action__Processed_Batches__c,
            dca_mass_action__Failed_Batches__c
        FROM
            dca_mass_action__Mass_Action_Logs__r
    )
FROM
    dca_mass_action__Mass_Action_Configuration__c