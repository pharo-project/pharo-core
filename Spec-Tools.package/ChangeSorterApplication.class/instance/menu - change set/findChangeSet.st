findChangeSet

	| set |
	set := self model findChangeSetIn: self changeSets.
	changesListModel setSelectedItem: set.