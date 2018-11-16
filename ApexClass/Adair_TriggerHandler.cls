public {{ with_or_without_sharing }} class {{ api_name }} extends TriggerHandler
{

  /** Cached Records */
  // @TestVisible
  // private static CacheObjectExample cachedObjectExample;
  /** End Cached Records */

  static {
    // cachedObjectExample = new CacheObjectExample();
  }

  /**
   * Trigger data is available statically as Trigger.new, Trigger.old, Trigger.
   *    Trigger.newMap, and Trigger.oldMap. However, these values are stored
   *    as generic SObjects and must be caste to the correct SObject for this
   *    handler. Examples:
   *
   * @example ````apex
   * @example New {{ sobject_system_name }} List
   * ````apex
   * {{ sobject_system_name }}[] new{{ sobject_camel_case_label }}s = ({{ sobject_system_name }}[]) Trigger.new;
   * ````
   *
   * @example New {{ sobject_system_name }} Map
   * ````apex
   * Map<Id, {{ sobject_system_name }}> new{{ sobject_camel_case_label }}Map = (Map<Id, {{ sobject_system_name }}>) Trigger.newMap;
   * ````
   *
   * @example Old {{ sobject_system_name }} List
   * ````apex
   * {{ sobject_system_name }}[] old{{ sobject_camel_case_label }}s = ({{ sobject_system_name }}[]) Trigger.new;
   * ````
   *
   * @example Old {{ sobject_system_name }} Map
   * ````apex
   * Map<Id, {{ sobject_system_name }}> old{{ sobject_camel_case_label }}Map = (Map<Id, {{ sobject_system_name }}>) Trigger.newMap;
   * ````
   */

  public override void beforeInsert () {
    {{ sobject_system_name }}[] new{{ sobject_camel_case_label }}s = ({{ sobject_system_name }}[]) Trigger.new;
    Map<Id, {{ sobject_system_name }}> new{{ sobject_camel_case_label }}Map = (Map<Id, {{ sobject_system_name }}>) Trigger.newMap;
  }

  public override void beforeUpdate () {
    {{ sobject_system_name }}[] new{{ sobject_camel_case_label }}s = ({{ sobject_system_name }}[]) Trigger.new;
    Map<Id, {{ sobject_system_name }}> new{{ sobject_camel_case_label }}Map = (Map<Id, {{ sobject_system_name }}>) Trigger.newMap;
    {{ sobject_system_name }}[] old{{ sobject_camel_case_label }}s = ({{ sobject_system_name }}[]) Trigger.old;
    Map<Id, {{ sobject_system_name }}> old{{ sobject_camel_case_label }}Map = (Map<Id, {{ sobject_system_name }}>) Trigger.oldMap;
  }

  public override void beforeDelete () {
    {{ sobject_system_name }}[] old{{ sobject_camel_case_label }}s = ({{ sobject_system_name }}[]) Trigger.old;
    Map<Id, {{ sobject_system_name }}> old{{ sobject_camel_case_label }}Map = (Map<Id, {{ sobject_system_name }}>) Trigger.oldMap;
  }

  public override void afterInsert () {
    {{ sobject_system_name }}[] new{{ sobject_camel_case_label }}s = ({{ sobject_system_name }}[]) Trigger.new;
    Map<Id, {{ sobject_system_name }}> new{{ sobject_camel_case_label }}Map = (Map<Id, {{ sobject_system_name }}>) Trigger.newMap;
  }

  public override void afterUpdate () {
    {{ sobject_system_name }}[] new{{ sobject_camel_case_label }}s = ({{ sobject_system_name }}[]) Trigger.new;
    Map<Id, {{ sobject_system_name }}> new{{ sobject_camel_case_label }}Map = (Map<Id, {{ sobject_system_name }}>) Trigger.newMap;
    {{ sobject_system_name }}[] old{{ sobject_camel_case_label }}s = ({{ sobject_system_name }}[]) Trigger.old;
    Map<Id, {{ sobject_system_name }}> old{{ sobject_camel_case_label }}Map = (Map<Id, {{ sobject_system_name }}>) Trigger.oldMap;
  }

  public override void afterDelete () {
    {{ sobject_system_name }}[] old{{ sobject_camel_case_label }}s = ({{ sobject_system_name }}[]) Trigger.old;
    Map<Id, {{ sobject_system_name }}> old{{ sobject_camel_case_label }}Map = (Map<Id, {{ sobject_system_name }}>) Trigger.oldMap;
  }

  public override void undelete () {
    {{ sobject_system_name }}[] new{{ sobject_camel_case_label }}s = ({{ sobject_system_name }}[]) Trigger.new;
    Map<Id, {{ sobject_system_name }}> new{{ sobject_camel_case_label }}Map = (Map<Id, {{ sobject_system_name }}>) Trigger.newMap;
  }



  @TestVisible
  class CacheObjectExample extends CacheStore
  {
    protected override Object fetcher () {
      return new Lead[] {};
    }

    public Lead[] getAll () {
      return (Lead[])this.get();
    }
  }

  public class {{ api_name }}Exception extends Exception {}

}
