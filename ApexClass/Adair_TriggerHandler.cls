public {{ with_or_without_sharing }} class {{ api_name }}
{

    /**
     *  Initialize / Constructor Method
     */
    public {{ api_name }} ()
    {}

    /**
     *  Before Trigger Methods
     */

    // Before Insert
    public Void onBeforeInsert (List<{{ sobject_system_name }}> new{{ sobject_camel_case_label }}s)
    {}
    // Before Update
    public Void onBeforeUpdate (List<{{ sobject_system_name }}> old{{ sobject_camel_case_label }}s, List<{{ sobject_system_name }}> updated{{ sobject_camel_case_label }}s, Map<Id, {{ sobject_system_name }}> new{{ sobject_camel_case_label }}Map)
    {}
    // Before Delete
    public Void onBeforeDelete (List<{{ sobject_system_name }}> old{{ sobject_camel_case_label }}sToDelete, Map<Id, {{ sobject_system_name }}> old{{ sobject_camel_case_label }}Map)
    {}

    /**
     *  After Trigger Methods
     */

    // After Insert
    public Void onAfterInsert (List<{{ sobject_system_name }}> new{{ sobject_camel_case_label }}s)
    {}
    // After Update
    public Void onAfterUpdate (List<{{ sobject_system_name }}> old{{ sobject_camel_case_label }}s, List<{{ sobject_system_name }}> updated{{ sobject_camel_case_label }}s, Map<Id, {{ sobject_system_name }}> new{{ sobject_camel_case_label }}Map)
    {}
    // After Delete
    public Void onAfterDelete (List<{{ sobject_system_name }}> deleted{{ sobject_camel_case_label }}s, Map<Id, {{ sobject_system_name }}> old{{ sobject_camel_case_label }}Map)
    {}

    /**
     *  Undelete Trigger Method
     */

    // Undelete
    public Void onUndelete (List<{{ sobject_system_name }}> restored{{ sobject_camel_case_label }}s)
    {}

    /**
     *  Asynchronous Trigger Methods
     */

    // Asynchronous Future Call - After Insert
    @future public static Void onAfterInsertAsync(Set<Id> new{{ sobject_camel_case_label }}Ids)
    {}
    // Asynchronous Future Call - After Update
    @future public static Void onAfterUpdateAsync (Set<Id> updated{{ sobject_camel_case_label }}Ids)
    {}
    // Asynchronous Future Call - After Delete
    @future public static Void onAfterDeleteAsync (Set<Id> deleted{{ sobject_camel_case_label }}Ids)
    {}

    /**
     *  Private Methods - This section contains all private methods which should be used by the trigger methods above.
     *  Trigger code should be contained within these classes rather than directly within the methods above.
     */

    private Boolean exampleHelperMethod ()
    {
        return true;
    }

}