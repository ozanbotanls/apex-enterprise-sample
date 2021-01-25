public with sharing class Leads extends ApplicationSObjectDomain implements ILeads {
    public static ILeads newInstance(List<Lead> records) {
        return (ILeads) Application.Domain.newInstance(records);
    }

    public static ILeads newInstance(Set<Id> recordIds) {
        return (ILeads) Application.Domain.newInstance(recordIds);
    }

    public Leads(List<Lead> records) {
        super(records);

        // don't enforce CRUD security for Lead records
        this.Configuration.disableTriggerCRUDSecurity();
    }

    public class Constructor implements fflib_SObjectDomain.IConstructable {
        public fflib_SObjectDomain construct(List<SObject> sObjectList) {
            return new Leads(sObjectList);
        }
    }

    public override void onBeforeUpdate(Map<Id, SObject> existingRecords) {
        for (Lead lead : (List<Lead>) getChangedRecords(new Set<String>{ 'LastName' })) {
            lead.Company = 'Ozan Meyhane';
        }
    }

    public interface ILeads extends IApplicationSObjectDomain {
    }
}
