public with sharing class carController {
    Account acc;
     
    public carController () {
      acc = [SELECT Id, Name FROM Account
               WHERE Id =: ApexPages.currentPage().getParameters().get('id')];    
    }
     
    public Account getAccount () {
      return acc;
    }
}