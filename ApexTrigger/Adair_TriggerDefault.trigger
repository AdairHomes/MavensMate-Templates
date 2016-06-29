trigger {{ api_name }} on {{ sobject_system_name }} (after delete, after insert, after undelete, after update, before delete, before insert, before update)
{
    /**
     *  The methods contained within this trigger are meant only as a quick-use
     *  reference. Rather than actually calling a method named "onBeforeInsert",
     *  a method with an appropriately descriptive name should be created in the
     *  Trigger Handler Class.  Use the methods contained only to reference which
     *  Trigger data is available to send to the Handler.
     */

    // Instantiate {{ api_name }}Handler for {{ sobject_system_name }}
    {{ api_name }}Handler triggerHandler = new {{ api_name }}Handler();

    // Before (Insert, Update, Delete)
    if (Trigger.isBefore) {
        // Before All (Insert, Update, Delete)
            // ...
        // Before Insert
        if (Trigger.isInsert) {
            triggerHandler.onBeforeInsert(Trigger.new);
        }
        // Before Update
        if (Trigger.isUpdate) {
            triggerHandler.onBeforeUpdate(Trigger.old, Trigger.new, Trigger.newMap);
        }
        // Before Delete
        if (Trigger.isDelete) {
            triggerHandler.onBeforeDelete(Trigger.old, Trigger.oldMap);
        }
        // Before Insert or Update
        if (Trigger.isInsert || Trigger.isUpdate) {
            // ...
        }
    }

    // After (Insert, Update, Delete, Undelete)
    if (Trigger.isAfter) {
        // After All (Insert, Update, Delete, Undelete)
            // ...
        // After Insert
        if (Trigger.isInsert) {
            triggerHandler.onAfterInsert(Trigger.new);
            // Any Asynchronous calls
            {{ api_name }}Handler.onAfterInsertAsync(Trigger.newMap.keySet());
        }
        // After Update
        if (Trigger.isUpdate) {
            triggerHandler.onAfterUpdate(Trigger.old, Trigger.new, Trigger.newMap);
            // Any Asynchronous calls
            {{ api_name }}Handler.onAfterUpdateAsync(Trigger.newMap.keySet());
        }
        // After Delete
        if (Trigger.isDelete) {
            triggerHandler.onAfterDelete(Trigger.old, Trigger.oldMap);
            // Any Asynchronous calls
            {{ api_name }}Handler.onAfterDeleteAsync(Trigger.oldMap.keySet());
        }
        // After UnDelete
        if (Trigger.isUnDelete) {
            triggerHandler.onUnDelete(Trigger.new);
        }
        // After Insert or Update
        if (Trigger.isInsert || Trigger.isUpdate) {
            // ...
        }
    }

}