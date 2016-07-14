trigger {{ api_name }} on {{ sobject_system_name }} (after delete, after insert, after undelete, after update, before delete, before insert, before update)
{
    /**
     *  Use the methods below to send Trigger data to the Trigger Handler Class.
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
    }

}