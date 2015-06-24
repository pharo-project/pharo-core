isVisible
	^ searchField notNil and: [ self table submorphs includes: searchField ]