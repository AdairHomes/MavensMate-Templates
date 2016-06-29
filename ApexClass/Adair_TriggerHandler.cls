public {{ WithSharing }} class {{ SObjectCamelCaseLabel }}Handler
{
    /**
     *  The methods contained within this class are meant only as a quick-use
     *  reference. Rather than actually creating a method named
     *  "onBeforeInsert", a method with an appropriately descriptive name should
     *  be created to be used by a trigger. Use the methods contained only to
     *  reference which Trigger data is available to the Handler.
     *
     *  Note: When calling a static method, you do not need to rely on the
     *  Trigger to pass the Trigger data into the method. The Trigger methods
     *  are available directly through the `Trigger.*` methods.
     */

    // Initialize
    public {{ SObjectCamelCaseLabel }}Handler () { }

    // Before Methods
    public void onBeforeInsert (List<{{ SObjectName }}> new{{ SObjectCamelCaseLabel }}s)
    {

    }

    public void onBeforeUpdate (List<{{ SObjectName }}> old{{ SObjectCamelCaseLabel }}s, List<{{ SObjectName }}> updated{{ SObjectCamelCaseLabel }}s, Map<Id, {{ SObjectName }}> {{ SObjectName }}Map)
    {

    }

    public void onBeforeDelete (List<{{ SObjectName }}> {{ SObjectCamelCaseLabel }}sToDelete, Map<Id, {{ SObjectName }}> {{ SObjectName }}Map)
    {

    }

    // After Methods
    public void onAfterInsert (List<{{ SObjectName }}> new{{ SObjectCamelCaseLabel }}s)
    {

    }

    public void onAfterUpdate (List<{{ SObjectName }}> old{{ SObjectCamelCaseLabel }}s, List<{{ SObjectName }}> updated{{ SObjectCamelCaseLabel }}s, Map<Id, {{ SObjectName }}> {{ SObjectName }}Map)
    {

    }

    public void onAfterDelete (List<{{ SObjectName }}> deleted{{ SObjectCamelCaseLabel }}s, Map<Id, {{ SObjectName }}> {{ SObjectName }}Map)
    {

    }

    public void onUndelete (List<{{ SObjectName }}> restored{{ SObjectCamelCaseLabel }}s)
    {

    }

    // Asynchronous Future Calls
    @future public static void onAfterInsertAsync(Set<Id> new{{ SObjectName }}Ids)
    {

    }

    @future public static void onAfterUpdateAsync (Set<Id> updated{{ SObjectName }}Ids)
    {

    }

    @future public static void onAfterDeleteAsync (Set<Id> deleted{{ SObjectName }}Ids)
    {

    }

}