public with sharing class Country {
    private final Country__c country;
    public String idCountry {get;set;}
    public Country(){
        idCountry = Apexpages.currentPage().getParameters().get('id');
        List<Country__c> countries = [SELECT Id, Name__c FROM Country__c
                    WHERE Id =: idCountry];
        System.debug('countries: ' + countries);
        if (!countries.isEmpty()){
            country = countries[0];
        }
        System.debug('country: ' + country);
    }
    public Country__c getCountry(){
        return country;
    }
    public Pagereference save(){
        try{
            if (country != null){
                System.debug('Update country: ' + country);
                update country;
            }
        }catch(DmlException e){
            System.debug('Error: ' + e.getMessage());
        }
        return null;
    }
}