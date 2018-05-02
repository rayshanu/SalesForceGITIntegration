trigger OpportunityCheckTrigger on Opportunity (before insert) {
        OpportunityTrigger.CheckOpportunity(Trigger.new);
}