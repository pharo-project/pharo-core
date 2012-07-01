testing
includesChangeRecord: aChangeRecord
	^ aChangeRecord methodClass notNil and:
		[self
			includesMethodCategory: aChangeRecord category
			ofClass: aChangeRecord methodClass]