public class EmailClass {
 
    public static void sendingEmail(){
        Messaging.SingleEmailMessage singleEmail=new Messaging.SingleEmailMessage();
        List<String>  myList=new List<String>{'chandramouliray@gmail.com'};
        singleEmail.setToAddresses(myList);
        singleEmail.setSubject('Practise of Sending email in Night.');
        singleEmail.setPlainTextBody('Hi This is Very Confidential and Super Cool.');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[]{singleEmail});
    }
}