removeClassFromGroup

	self selectedClasses do: [:class | 
		[ 	self groupsManager removeClass: class theNonMetaClass from: self selectedGroup.
			self updateClassView ] fork ].
	self 
		selectedClass: nil;
		updateClassView.