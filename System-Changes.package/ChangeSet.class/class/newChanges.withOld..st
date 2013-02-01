current changeset
newChanges: aChangeSet withOld: old
	"Set the system ChangeSet to be the argument, aChangeSet."

	SystemAnnouncer uniqueInstance unsubscribe: old.
	current := aChangeSet.
	
	SystemAnnouncer uniqueInstance private weak
		on: ClassRemoved send: #classRemoved: to: aChangeSet;
		on: ClassAdded send: #classAdded: to: aChangeSet;
		on: ClassCommented send: #classCommented: to: aChangeSet;
		on: ClassRenamed send: #classRenamed: to: aChangeSet;
		on: ClassReorganized send: #classReorganized: to: aChangeSet;
		on: ClassRecategorized send: #classRecategorized: to: aChangeSet;
		on: ClassModifiedClassDefinition send: #classModified: to: aChangeSet.
	
	SystemAnnouncer uniqueInstance private weak
		on: MethodAdded send: #methodAdded: to: aChangeSet;
		on: MethodModified send: #methodModified: to: aChangeSet;
		on: MethodRemoved send: #methodRemoved: to: aChangeSet;
		on: MethodRecategorized  send: #methodRecategorized: to: aChangeSet.
		
	
	SystemAnnouncer uniqueInstance announce: (CurrentChangeSetChanged new old: old; new: aChangeSet ; yourself).
	