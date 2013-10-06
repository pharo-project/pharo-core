moveClassFrom: src to: dest

	self checkThatSidesDiffer: [^ self].
	(self okToChange and: [ src selectedClass notNil])
		ifFalse: [ ^ false ].

	self copyClassFrom: src to: dest.
	src forgetClass