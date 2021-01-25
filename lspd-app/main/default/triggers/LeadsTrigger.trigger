trigger LeadsTrigger on Lead(before insert, before update) {
    fflib_SObjectDomain.triggerHandler(Leads.class);
}
