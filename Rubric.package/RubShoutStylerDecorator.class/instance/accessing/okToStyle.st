okToStyle
	^ self shoutIsAvailable and: [ self shoutEnabled and: [ self shoutAboutToStyle: self ] ]