public with sharing class UpdateLocalTimeAccountTrigger extends TriggerInjector.TriggerHandler {
    public override void handle(TriggerInjector.TriggerHandlerContext ctx) {
        for (Account acc : (List<Account>) Trigger.new) {
            acc.Description = String.valueOf(Date.today());
        }
    }
}
