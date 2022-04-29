@RestResource(urlMapping='/bussinesCars/*')
global with sharing class REST_bussinesCars{
 
    @HttpGet
    global static Lead getLead(){ 
     List<car__c> cr = new List<car__c>();
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String leadId = req.requestURI.substring(req.requestURI.lastindexOf('/')+1);
  
         lead result =[SELECT Id, Name, lastName,LookupCar__r.Name
          FROM Lead 
          WHERE Id=: leadId];

          
         return result; 
     	
        }   
       
        @HttpPost
        global static void postCar(String nameCar, Decimal taxCar, integer downpaymentCar, integer priceCar){
           //Tax__c ,  Down_Payment__c , Price__c , name
           lead l=null;
           l=[SELECT id, name FROM Lead].get(0);
           car__c ct = new car__c();
               ct.name=nameCar;
               ct.Tax__c=taxCar ;
               ct.lookupLead__c=ct.id;
               ct.Down_Payment__c=downpaymentCar;
               ct.Price__c=priceCar;
           
           insert ct;
         

        }
  
}