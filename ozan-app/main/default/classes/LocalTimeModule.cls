public with sharing class LocalTimeModule extends di_Module {
    public override void configure() {
        bind(Lead.getSObjectType()).apex().sequence(10).to(UpdateLocalTimeLeadTrigger.class);
    }
}
