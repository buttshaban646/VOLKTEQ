trigger AccountTrigger on Account (after insert) {
    // Create a new Contact for each new Account
    List<Contact> newContacts = new List<Contact>();
    for (Account acc : Trigger.new) {
        Contact con = new Contact(FirstName = 'New', LastName = 'Contact', AccountId = acc.Id);
        newContacts.add(con);
    }
    //
    insert newContacts;
    //shabanDevelop
    //Account acc = new Account();
}