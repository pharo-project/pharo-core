model: anObject

	model := anObject.
	self registerToAnnouncements.
	model when: #historyChanged send: #historyChanged to: self.
	anObject selectedPackage ifNotNil: [:e | packagesSelection at: e put: true ].
	anObject selectedGroup ifNotNil: [:p | groupsSelection at: p put: true ].
	anObject selectedClass ifNotNil: [:p | self classWidget selectClass: p].