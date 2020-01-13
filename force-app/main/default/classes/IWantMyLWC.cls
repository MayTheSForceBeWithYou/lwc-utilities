public with sharing class IWantMyLWC {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts(){
        return [
            SELECT Id, Name, Industry
            FROM Account
        ];
    }
    
    @AuraEnabled(cacheable=true)
    public static List<Object> getIndustryOptions(){
        // Turn picklist values for Account.Industry field into
        // [
        //     {
        //          'label': 'picklist label 1',
        //          'value': 'picklist value 1'
        //     },
        //     {
        //          'label': 'picklist label 2',
        //          'value': 'picklist value 2'
        //     }
        //  ]
        List<Map<String, String>> industryOptions = new List<Map<String, String>>();
        DescribeFieldResult fldDesc = Account.Industry.getDescribe();
        return industryOptions;
    }
}