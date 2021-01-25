public with sharing class SampleClass {
    public static void doSample() {
        LeadsSelector.ILeadsSelector leadSelector = LeadsSelector.newInstance();

        List<Lead> leads = leadSelector.selectByName(new Set<String>{ 'Yasar Botan' });
        System.debug('retrieved leads selectByName ==>>>> ' + leads);

        List<Lead> leads1 = leadSelector.selectByOwnerId(new Set<Id>{ '00563000006kdAqAAI' });
        System.debug('retrieved leads1 selectByOwnerId ==>>>> ' + leads1);
    }

    public Integer calculateAmount() {
        return 15;
    }
}
