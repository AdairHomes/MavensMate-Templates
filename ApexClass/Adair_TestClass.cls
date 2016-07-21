@isTest
private class {{ api_name }}
{

    /**
     *  Single Method Tests - Method names should be formatted as: `[Subject Method Name]_Method`. Tests within this
     *  region should test only a single method and should include a variety of inputs to verify the accuracy of the
     *  returned value.
     */

    @isTest // theNameOfTheSubjectMethod
    static void theNameOfTheSubjectMethod_Method ()
    {
        /* ... Method-specific setup ... */
        Test.startTest();
        /* ... Run tests with assertions to test theNameOfTheSubjectMethod() ... */
        Test.stopTest();
    }

    /**
     *  Multiple Method Tests - Method names should describe method group and should end in `_MultiMethod ()`. Tests
     *  within this region should be testing more than one method. The tested methods should be related in some way. An
     *  example of this would be a chain of methods which use each other to return different types of data to requester.
     */

    @isTest // method1, method2, method3
    static void aNameThatDescribesTheMethodGroup_Method ()
    {
        /* ... Method-specific setup ... */
        Test.startTest();
        /* ... Run tests with assertions to test method1(), method2() and method3() ... */
        Test.stopTest();
    }

    /**
     *  Process Tests - Method names should describe the process and end in `_Process ()`. Tests within this region
     *  should be testing a process or series of processes. This is where most trigger process tests should be
     *  contained.
     */

    @isTest
    static void somethingThatDescribesTheProcess_Method ()
    {
        /* ... Method-specific setup ... */
        Test.startTest();
        /* ... Run a series of tests for the process being tested (insert, update, and delete records, etc.) ... */
        Test.stopTest();
    }

    /**
     *  Initialize / Test Setup - This should not be confused with the test class's constructor method. This method is
     *  called before each `@isTest` method is run and is. If there are any records which need to be pulled or classes
     *  that must be instantiated prior to every test method, the related code should be contained within this
     *  `@testSetup` method.
     */

    @testSetup
    static void initialize ()
    {}

    /**
     *  Static Helper Methods - These helper methods may be used by any and all test methods. Please note that they must
     *  begin with the `static` designation in order to be called by the test methods.
     */

    static Boolean exampleHelperMethod ()
    {
        return true;
    }

}