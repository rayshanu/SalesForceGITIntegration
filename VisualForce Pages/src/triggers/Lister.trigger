trigger Lister on Project__c (before insert,after update,after insert) {
     for(Project__c proj : Trigger.new){
         if(proj.Primary__c == True){
             Project_Line_Item__c primProject =new Project_Line_Item__c();
             primProject.Primary_POC__c=TRUE;
         }
      }
}