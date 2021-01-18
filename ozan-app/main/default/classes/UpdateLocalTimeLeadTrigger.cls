public with sharing class UpdateLocalTimeLeadTrigger extends TriggerInjector.TriggerHandler {
    public override void handle(TriggerInjector.TriggerHandlerContext ctx) {
        for (Lead lead : (List<Lead>) Trigger.new) {
            if (lead.LastName != ((Lead) Trigger.oldMap.get(lead.Id)).LastName) {
                lead.Description = String.valueOf(Date.today().addDays(5));
            }
        }
    }
}
