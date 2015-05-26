model: anObject

	model := anObject.
	self registerToAnnouncements.
	model when: #historyChanged send: #historyChanged to: self.
	anObject selectedPackage ifNotNil: [:e | self packageWidget selectPackage: e].
	anObject selectedGroup ifNotNil: [:p | self packageWidget selectGroup:p].
	anObject selectedClass ifNotNil: [:p | self classWidget selectClass: p].