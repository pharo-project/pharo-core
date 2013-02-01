change set
setCurrentChangeSet: aChangeSet

	| old |
	old := ChangeSet current. 
	ChangeSet newChanges: aChangeSet.
	SystemAnnouncer uniqueInstance announce: (CurrentChangeSetChanged new old: old; new: aChangeSet ; yourself).
	