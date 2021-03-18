public with sharing class CountryHandler {
    public List<Country__c> lstCountries{get;set;}
    public CountryHandler(){
        getCountryList();
    }
    public void getCountryList(){
        String countryName = ApexPages.currentPage().getParameters().get('CountryName');
        String sQuery = 'SELECT Id, Name__c, Capital__c FROM Country__c';
        if(countryName !=null && countryName!=''){
            sQuery+=' WHERE Name__c LIKE \'%' + countryName + '%\'';
        }
        System.debug(sQuery);
        lstCountries=Database.query(sQuery);
    }
 }