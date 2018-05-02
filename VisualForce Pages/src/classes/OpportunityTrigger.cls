public class OpportunityTrigger {
    
    public static void CheckOpportunity(List<Opportunity> opps){
        Double totalAmount=0;
        for(Opportunity opp1: [Select Amount from Opportunity where createdDate=Today AND createdbyId= :UserInfo.getUserId()]){
            totalAmount+=opp1.Amount;
        }
        
        for(Opportunity opp2 : opps){
            totalAmount+=opp2.Amount;
            if(totalAmount > 100000){
                opp2.addError('You have Exceeded your Daily Limit of 100,000k.');
            }
        }
    }

}