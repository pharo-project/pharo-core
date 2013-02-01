current changeset
newChanges: aChangeSet 
	"Set the system ChangeSet to be the argument, aChangeSet.  Tell the current project that aChangeSet is now its change set.  When called from Project enter:, the setChangeSet: call is redundant but harmless; when called from code that changes the current-change-set from within a project, it's vital"

	| old |
	old := self current.
	SystemAnnouncer uniqueInstance unsubscribe: current.
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
	