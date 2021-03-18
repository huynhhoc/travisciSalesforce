public class UpsertCountryQueueable implements Queueable, Database.AllowsCallouts {

    public void execute(QueueableContext context) {
        List<Country__c> upsertList = HelperCountrySync.insertNew();
        System.debug('Start: bat dau upsert country .......');
        Database.upsert(upsertList, false);
        System.debug('End: upsert country .........');
    }
}