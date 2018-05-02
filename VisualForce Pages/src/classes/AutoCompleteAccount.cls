public class AutoCompleteAccount {
    public String selectedAccountId{get;set;}
    public boolean accountDetailVisible{get;set;}
    public Account selectedAccount{get;set;}
    public String chatterPost{get;set;}
    
    
    public void showAccountDetail(){
        selectedAccount=[Select Id,Name,Website,AccountNumber,Phone,Fax FROM Account WHERE Id = :selectedAccountId LIMIT 1];
        accountDetailVisible=true;
    }
}