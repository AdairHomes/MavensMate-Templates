public with sharing class {{ api_name }}
{

  private final SObject mySObject;

  // The extension constructor initializes the private member
  // variable mySObject by using the getRecord method from the standard
  // controller.
  public {{ api_name }} (ApexPages.StandardController stdController) {
    this.mySObject = (SObject)stdController.getRecord();
  }

  public String getRecordName () {
    return 'Hello ' + (String)mySObject.get('name') + ' (' + (Id)mySObject.get('Id') + ')';
  }

}
