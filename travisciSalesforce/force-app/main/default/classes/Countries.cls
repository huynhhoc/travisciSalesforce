public with sharing class Countries {
    String sortOrder;
    public Countries(){
        this.sortOrder = null;
    }
    public List<Country__c> getCountries() {
        List<Country__c> countries = null;
        if (this.sortOrder == null){
            countries = [SELECT Id, Name__c, Capital__c, Region__c FROM Country__c limit 10];
        }else{
            countries = [SELECT Id, Name__c, Capital__c, Region__c
                        FROM Country__c
                        ORDER BY Name__c
                        LIMIT 10];
        }
        return countries;
    }
    public void sortByFirstName() {
        this.sortOrder = 'Name';

    }
    public Pagereference redirectCountry(){
        System.debug('redirect id. ');
        String id = Apexpages.currentPage().getParameters().get('id');
        Pagereference pg = new Pagereference('apex/Country?id=a092v00003Ki25G');
        if (pg == null){
            return null;
        }
        System.debug('redirect id. ' + id);
        pg.setRedirect(true);
        return pg;
    }
    public Pagereference redirectCountry(String id){
        System.debug('redirect id: ' + id);
        Pagereference pg = new Pagereference('apex/Country?id='+Id);
        if (pg == null){
            return null;
        }
        pg.setRedirect(true);
        return pg;
    }
}