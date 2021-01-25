public interface ILeadsSelector extends IApplicationSObjectSelector {
    List<Lead> selectById(Set<Id> idSet);
    List<Lead> selectByName(Set<String> nameSet);
    List<Lead> selectByOwnerId(Set<Id> ownerIds);
}
