public {{ with_or_without_sharing }} class {{ api_name }}Handler
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
    public {{ api_name }}Handler () { }

    // Before Methods
    public void onBeforeInsert (List<{{ sobject_system_name }}> new{{ api_name }}s)
    {

    }

    public void onBeforeUpdate (List<{{ sobject_system_name }}> old{{ api_name }}s, List<{{ sobject_system_name }}> updated{{ api_name }}s, Map<Id, {{ sobject_system_name }}> {{ sobject_system_name }}Map)
    {

    }

    public void onBeforeDelete (List<{{ sobject_system_name }}> {{ api_name }}sToDelete, Map<Id, {{ sobject_system_name }}> {{ sobject_system_name }}Map)
    {

    }

    // After Methods
    public void onAfterInsert (List<{{ sobject_system_name }}> new{{ api_name }}s)
    {

    }

    public void onAfterUpdate (List<{{ sobject_system_name }}> old{{ api_name }}s, List<{{ sobject_system_name }}> updated{{ api_name }}s, Map<Id, {{ sobject_system_name }}> {{ sobject_system_name }}Map)
    {

    }

    public void onAfterDelete (List<{{ sobject_system_name }}> deleted{{ api_name }}s, Map<Id, {{ sobject_system_name }}> {{ sobject_system_name }}Map)
    {

    }

    public void onUndelete (List<{{ sobject_system_name }}> restored{{ api_name }}s)
    {

    }

    // Asynchronous Future Calls
    @future public static void onAfterInsertAsync(Set<Id> new{{ sobject_system_name }}Ids)
    {

    }

    @future public static void onAfterUpdateAsync (Set<Id> updated{{ sobject_system_name }}Ids)
    {

    }

    @future public static void onAfterDeleteAsync (Set<Id> deleted{{ sobject_system_name }}Ids)
    {

    }

}