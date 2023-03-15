 @IsTest
public with sharing class TestAccountTrigger {
    @isTest
    static void testAccountTrigger() {
        // Create a new Account and verify that a Contact is created
        Account testAccount = new Account(Name = 'Test Account');
        insert testAccount;
        List<Contact> contacts = [SELECT Id FROM Contact WHERE AccountId = :testAccount.Id];
        System.assertEquals(1, contacts.size());
    }
}
