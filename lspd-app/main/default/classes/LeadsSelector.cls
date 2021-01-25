public with sharing class LeadsSelector extends ApplicationSObjectSelector implements ILeadsSelector {
    public static ILeadsSelector newInstance() {
        return (ILeadsSelector) Application.Selector.newInstance(Lead.SObjectType);
    }
    public Schema.sObjectType getSObjectType() {
        return Lead.SObjectType;
    }

    // unless you put this all standard fields are to be added automatically
    public override List<Schema.SObjectField> getSObjectFieldList() {
        return new List<Schema.SObjectField>{ Lead.Id, Lead.Name };
    }

    private List<Schema.SObjectField> getAdditionalSObjectFieldList() {
        return new List<Schema.SObjectField>{};
    }

    public List<Lead> selectById(Set<Id> idSet) {
        return (List<Lead>) selectSObjectsById(idSet == null ? new Set<Id>() : idSet);
    }

    public List<Lead> selectByName(Set<String> nameSet) {
        return Database.query(newQueryFactory().setCondition(Lead.Name + ' in :nameSet').toSOQL());
    }

    public List<Lead> selectByOwnerId(Set<Id> ownerIds) {
        fflib_QueryFactory qf = newQueryFactory();
        qf.setCondition('Lead.Owner.Id in :ownerIds');
        return Database.query(qf.toSOQL());
    }
}
