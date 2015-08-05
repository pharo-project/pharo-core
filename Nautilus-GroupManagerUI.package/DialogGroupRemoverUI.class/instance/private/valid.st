valid
	self selectedGroup ifNotNil: [ :group | self groupManager remove: self elementsToRemove from: group ]