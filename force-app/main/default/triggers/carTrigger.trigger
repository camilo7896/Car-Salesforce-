trigger carTrigger on car__c (before insert, before update, after insert) {

    if(trigger.isBefore && (trigger.isInsert || trigger.isUpdate)){
        // Full_Price
        carTriggerHelper.handleCars(trigger.new);
        // leassing
        carTriggerHelper.handleCarsSum(Trigger.new);

    }


}