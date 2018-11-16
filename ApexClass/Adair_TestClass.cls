@isTest(isParallel=true)
private class {{ api_name }}
{

  /**
   * Static variables should only be used for variables which are needed in
   * every test method.  The code in the static block runs before each
   * test method which could be combersome if records are being modified.
   *
   * When records need to be built for testing, it is best to use the
   * `initialize()` method at the bottom of this class.  This method is
   * called only once, before running methods. The database is then rolled
   * back between each test method so that each method gets a clean slate
   * with the initialized values.
   */
  private static String stringVar;

  static {
    stringVar = 'Hello World!';
  }

  /**
   * Single Method Tests
   *
   * Method names should start with `method_`, followed by the name of the
   * method. Tests within this region should test only a single method and
   * should include a variety of inputs to verify the accuracy of the returned
   * value.
   *
   * The method name should be included in a comment next to the `@isTest
   * annotation.
   */
  @isTest // theNameOfTheSubjectMethod
  static void method_theNameOfTheSubjectMethod () {

    // Test-method specific setup goes here

    Test.startTest();

    // Run tests with assertions for theNameOfTheSubjectMethod()

    Test.stopTest();
  }

  /**
   * Multiple Method Tests
   *
   * Method names should start with `methods_`, followed by a name which the
   * methods contained within the group. Tests within this region should be
   * testing more than one method. The tested methods should be related in some
   * way. An example of this would be a chain of methods which use each other to
   * return different types of data to requester.
   *
   * A list of method names should be included in the comments next to the
   * `@isTest annotation.
   */
  @isTest // method1, method2, method3
  static void methods_aNameThatDescribesTheMethodGroup () {

    // Test-method specific setup goes here

    Test.startTest();

    // Run tests with assertions for method1(), method2() and method3()

    Test.stopTest();
  }

  /**
   * Process Tests
   *
   * Method names should start with `process_` and describe the process that is
   * being tested. Tests within this region should be testing a process or
   * series of processes. This is where most trigger process tests should be
   * contained.
   */
  @isTest
  static void process_somethingThatDescribesTheProcess () {

    // Test-method specific setup goes here

    Test.startTest();

    // Run a series of tests for the process being tested

    Test.stopTest();
  }

  /**
   * Private Helper Methods
   *
   * These helper methods may be used by any and all test methods in this class.
   * Please note that they must begin with the `static` designation in order to
   * be called by the test methods.
   */
  private static Boolean exampleHelperMethod () {
    return true;
  }

  /**
   * Initialize Method
   *
   * Use this method to setup new records that are needed for the various test
   * methods. This method runs only once, before running the individual test
   * methods. The database is rolled back prior to each test method so that each
   * method has access to a clean version of the records saved in the
   * `initialize()` method.
   */
  @TestSetup
  static void initialize () {

  }

}
