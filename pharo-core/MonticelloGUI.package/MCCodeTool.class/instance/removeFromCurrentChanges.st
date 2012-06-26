menus
removeFromCurrentChanges
	"Tell the changes mgr to forget that the current msg was changed."

	ChangeSet current removeSelectorChanges: self selectedMessageName 
			class: self selectedClassOrMetaClass.
	self changed: #annotations