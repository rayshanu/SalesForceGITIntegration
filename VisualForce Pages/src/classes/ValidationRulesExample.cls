public class ValidationRulesExample {
    public String name{set;get;}
    public Integer age{set;get;}
    public void submit(){
        
        if(name!=Null && name!='' && age>0){
            ApexPages.Message msg=new ApexPages.Message(ApexPages.Severity.CONFIRM,'Data Saves Successfully');
            ApexPages.addMessage(msg);
        }
        else{
            if(name =='' || name==Null){
            ApexPages.Message msg1=new ApexPages.Message(ApexPages.Severity.ERROR,'Name is must value');
            ApexPages.addMessage(msg1);
        }
        if(age==Null || age==0 ){
            ApexPages.Message msg2=new ApexPages.Message(ApexPages.Severity.Error,'Enter the Age');
            ApexPages.addMessage(msg2);
        }
        }
        
        
    }
}