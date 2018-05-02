global class BatchContactUpdate implements Database.Batchable<sObject>{
    
    global  Database.QueryLocator start(Database.BatchableContext BC){
        System.debug('The Start Method has been Called.');
        String query='Select id,Name from Contact';
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext BC, List<Account> scope){
        System.debug('The Execute Method has been Called.');
        for(Account c:scope ){
            c.Site=c.Site+'***';
        }
        update scope;
    }
    
    global void finish(Database.BatchableContext BC){
        System.debug('The Finish Method has been Called.');
    }

}