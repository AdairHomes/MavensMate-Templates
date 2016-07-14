public {{ with_or_without_sharing }} class {{ api_name }}
{

    /**
     *  In order to be consistent and increase readability in the future, please
     *  use the trigger methods below to then call the private methods at the
     *  bottom of this class.
     *
     *  Note: When calling a static method, you do not need to rely on the
     *  Trigger to pass the Trigger data into the method. The Trigger methods
     *  are available directly through the `Trigger.*` methods.
     */

    // Initialize
    public {{ api_name }} () { }

    // Before Methods
    public Void onBeforeInsert (List<{{ sobject_system_name }}> new{{ sobject_camel_case_label }}s)
    {

    }

    public Void onBeforeUpdate (List<{{ sobject_system_name }}> old{{ sobject_camel_case_label }}s, List<{{ sobject_system_name }}> updated{{ sobject_camel_case_label }}s, Map<Id, {{ sobject_system_name }}> new{{ sobject_camel_case_label }}Map)
    {

    }

    public Void onBeforeDelete (List<{{ sobject_system_name }}> {{ sobject_camel_case_label }}sToDelete, Map<Id, {{ sobject_system_name }}> old{{ sobject_camel_case_label }}Map)
    {

    }

    // After Methods
    public Void onAfterInsert (List<{{ sobject_system_name }}> new{{ sobject_camel_case_label }}s)
    {

    }

    public Void onAfterUpdate (List<{{ sobject_system_name }}> old{{ sobject_camel_case_label }}s, List<{{ sobject_system_name }}> updated{{ sobject_camel_case_label }}s, Map<Id, {{ sobject_system_name }}> new{{ sobject_camel_case_label }}Map)
    {

    }

    public Void onAfterDelete (List<{{ sobject_system_name }}> deleted{{ sobject_camel_case_label }}s, Map<Id, {{ sobject_system_name }}> old{{ sobject_camel_case_label }}Map)
    {

    }

    public Void onUndelete (List<{{ sobject_system_name }}> restored{{ sobject_camel_case_label }}s)
    {

    }

    // Asynchronous Future Calls
    @future public static Void onAfterInsertAsync(Set<Id> new{{ sobject_camel_case_label }}Ids)
    {

    }

    @future public static Void onAfterUpdateAsync (Set<Id> updated{{ sobject_camel_case_label }}Ids)
    {

    }

    @future public static Void onAfterDeleteAsync (Set<Id> deleted{{ sobject_camel_case_label }}Ids)
    {

    }

    /**
     *  Private Methods
     */

    private Boolean archiveOldHomeSites (Integer numberOfMonths)
    {
        // Archive old Home sites older than `numberOfMonths`
    }

}