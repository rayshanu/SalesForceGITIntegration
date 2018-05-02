trigger CreatingContactWhenAccountisCreated on Account (before insert) {
    
    Contact con=new Contact();
    con.LastName=trigger.new[0].name;
    con.Phone=trigger.new[0].Phone;
    con.Description=trigger.new[0].Description;
    
    
    
    insert con;

}