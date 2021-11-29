public with sharing class AccountSearch {

    @AuraEnabled(cacheable=true)
    public static List<Account> searchAccounts(String search) {
        String key = search + '%';
        return [SELECT Id, Name FROM Account WHERE Name Like :key LIMIT 5];
    }
}