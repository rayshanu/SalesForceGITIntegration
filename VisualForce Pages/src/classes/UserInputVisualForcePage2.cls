public class UserInputVisualForcePage2 {
    
    public String title {set;get;}
    public String name {set;get;}
    public String selected {set;get;}
    public void submit(){
        if(selected=='Noida'){
           title=name + 'Mouli you have selected : Noida';
        }else{
            title=name + 'You have Selected : ' +selected;
        }
    
    }

}