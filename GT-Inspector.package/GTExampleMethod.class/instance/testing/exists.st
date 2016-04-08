exists
	^ self providerClass notNil
		and: [ self providerClass includesSelector: self selector ]