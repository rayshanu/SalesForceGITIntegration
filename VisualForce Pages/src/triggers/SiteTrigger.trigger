trigger SiteTrigger on Employment_Website__c (before insert,before update) {
    
    for(Employment_Website__c site:Trigger.new){
        if(site.Price_Per_Cost__c > site.Maximum_Budget__c){
            site.addError('Price Cannot exceed the Maximum Budget');
        }
    }

}