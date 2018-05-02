public class UserInputFromVisualForce {

    public Integer firstValue {set;get;}
    public Integer secondValue {set;get;}
    public Integer resultValue{set;get;}
    
    public void submit(){
        resultValue=firstValue+secondValue;
    }
    public void reset(){
        firstValue=null;
        secondValue=null;
        resultValue=null;
    }
}