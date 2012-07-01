private
valid

	self selectedGroup
		ifNotNil: [:group | self groupManager add: self elementsToAdd into: group ]