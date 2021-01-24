trigger LeadTrigger on Lead(before update) {
    TriggerInjector.handle(Lead.getSObjectType(), new TriggerInjector.TriggerHandlerFieldSetContext());
}
