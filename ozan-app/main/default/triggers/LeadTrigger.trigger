trigger LeadTrigger on Lead(before insert, before update) {
    TriggerInjector.handle(Lead.getSObjectType(), new TriggerInjector.TriggerHandlerFieldSetContext());
}
