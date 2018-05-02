public class SearchInterfaceApexCode {
    
    String keyword;
    List<Account> results;
    
    public String getKeyword(){
        return keyword;
    }
    
    public List<Account> getresults(){
        return results;
    }
    
    public void setKeyword(String input){
        keyword=input;
    }
    
    public PageReference search_now(){
        results=(List<Account>)[FIND : keyword IN ALL FIELDS RETURNING ACCOUNT(Name,Type,Industry,Fax)][0];
        return null;
    }

}