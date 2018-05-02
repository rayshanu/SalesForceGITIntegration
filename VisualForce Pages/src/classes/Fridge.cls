public class Fridge {
    
    public String modelNumber;
    public Integer numberInStock;
    
    //Declaring a constructor without parameter
    public void Fridge(){
        modelNumber='LG';
        numberInStock=100;
    }
    
    //Declaring a constructors with Parameters
    public Fridge(String theModelNumber,Integer theNumberInStock){
        modelNumber=theModelNumber;
        numberInStock=theNumberInStock;
    }
    
    public void setModelNumber(String theModelNumber){         
        modelNumber=theModelNumber;
    }
    
   //Declaring a Static variable
   public static Integer stockThreshold=5;
    
   //Declaring a variable as Final
   public static final Integer STOCK_THRESHOLD=10;
    
   //Decalring a static method
    public static void toDebug(Fridge newFridge){
        System.debug('Model Number :' +newFridge.modelNumber);
        system.debug('Number in Stock : ' +newFridge.numberInStock);
        } 
    
   
}