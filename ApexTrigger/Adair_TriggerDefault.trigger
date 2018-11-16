trigger {{ api_name }} on {{ sobject_system_name }} (
  before insert,
  // after insert,
  before update
  // after update,
  // before delete,
  // after delete,
  // after undelete,
) {

  // This should be paired with a class which extends TriggerHandler:
  // `{{ api_name }}Handler()`
  // new {{ api_name }}Handler().run();
}
