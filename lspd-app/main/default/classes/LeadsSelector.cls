public with sharing class LeadsSelector extends ApplicationSObjectSelector implements ILeadsSelector {
    public Schema.sObjectType getSObjectType() {
        return Lead.SObjectType;
    }

    public override List<Schema.SObjectField> getSObjectFieldList() {
        return new List<Schema.SObjectField>{ Lead.Id, Lead.Name };
    }

    private List<Schema.SObjectField> getAdditionalSObjectFieldList() {
        return new List<Schema.SObjectField>{};
    }

    public List<Lead> selectById(Set<Id> idSet) {
        return (List<Lead>) selectSObjectsById(idSet == null ? new Set<Id>() : idSet);
    }

    public interface ILeadsSelector extends IApplicationSObjectSelector {
        List<Lead> selectById(Set<Id> idSet);
    }
}
