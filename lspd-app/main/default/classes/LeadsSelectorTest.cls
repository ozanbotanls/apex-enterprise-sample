@isTest
public class LeadsSelectorTest {
    @isTest
    static void testLeadSelector() {
        fflib_ApexMocks mocks = new fflib_ApexMocks();
        ILeadsSelector mockLeadSelector = (ILeadsSelector) mocks.mock(ILeadsSelector.class);

        String testByName = 'OzanMock';

        mocks.startStubbing();
        mocks.when(mockLeadSelector.sObjectType()).thenReturn(Lead.SObjectType);
        List<Lead> mockedLeads = new List<Lead>{ new Lead(LastName = 'OzanMock'), new Lead(LastName = 'OzanMock') };
        mocks.when(mockLeadSelector.selectByName(new Set<String>{ testByName })).thenReturn(mockedLeads);
        mocks.stopStubbing();
        Application.Selector.setMock(mockLeadSelector);

        Test.startTest();
        List<Lead> lds = LeadsSelector.newInstance().selectByName(new Set<String>{ testByName });
        Test.stopTest();

        System.assertEquals(2, lds.size(), 'there are 2 mocked leads');
    }
}
// insert new List<Lead>{
//     new Lead(FirstName = 'Ozan', LastName = 'Botan', Company = 'OSF'),
//     new Lead(FirstName = 'Ozan', LastName = 'Botan', Company = 'LSPD')
// };
// Test.startTest();
// List<Lead> lds = LeadsSelector.newInstance().selectByName(new Set<String>{ 'Ozan Botan' });
// Test.stopTest();
