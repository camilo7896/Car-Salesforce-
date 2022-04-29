public class carTriggerHelper {
  
    // Save the result in the Full Price field
    public static void handleCars(List<car__c> newcar){
        for(car__c e : newCar){
     e.Full_Price__c= e.Price__c + (e.Tax__c*e.Price__c/100);
         }
    }
    // Save the result in the Leasing field
    public static void handleCarsSum(List<car__c> newcar){
        for(car__c b : newCar){
     b.Leasing__c= ((b.Price__c + b.Tax__c)-b.Down_Payment__c)/84;
         }
    }
}