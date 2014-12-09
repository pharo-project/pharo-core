testAddNil
	self deny: (table includesKey: nil).
	self should: [ table at: nil put: 'nil' ] raise: Error.
	self deny: (table includesKey: nil) = 'nil'.