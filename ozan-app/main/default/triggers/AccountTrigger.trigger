trigger AccountTrigger on Account(before insert) {
    TriggerInjector.handle(Account.getSObjectType(), new TriggerInjector.TriggerHandlerFieldSetContext());
}
