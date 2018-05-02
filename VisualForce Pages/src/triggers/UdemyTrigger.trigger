trigger UdemyTrigger on Lead (before insert,before update) {
    
    for(Lead lead : Trigger.new ){
        if(lead.MobilePhone==Null || lead.MobilePhone==''){
           if(lead.Fax==Null || lead.Fax==''){
            lead.addError('Fax Filed is Mandatory.');
        } 
        }
        
    }

}