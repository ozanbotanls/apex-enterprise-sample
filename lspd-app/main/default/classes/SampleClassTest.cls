@isTest
public class SampleClassTest {
    @isTest
    static void mockSample() {
        fflib_ApexMocks mocks = new fflib_ApexMocks();
        SampleClass smpCls = (SampleClass) mocks.mock(SampleClass.class);

        mocks.startStubbing();
        mocks.when(smpCls.calculateAmount()).thenReturn(10);
        mocks.stopStubbing();

        Test.startTest();
        Integer returnVal = new SampleClass().calculateAmount();
        Test.stopTest();

        System.assertEquals(10, returnVal);
    }
}
