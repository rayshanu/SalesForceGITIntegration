global class CreateAccountEmailService implements Messaging.InboundEmailHandler{
    global Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email, Messaging.InboundEnvelope envelope){
        String accName=email.fromAddress;
        String accDes=email.plainTextBody;
        String accInd=email.subject;
        Account con=new Account(Name=accName,Description=accDes,Industry=accInd);
        insert con;
        return null;
    }
}