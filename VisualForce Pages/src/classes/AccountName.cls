public class AccountName{

List<Account> act = [select Name , Type from Account];
public List<Account> getact(){

return act;

}

}