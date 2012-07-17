arithmetic
= other 
	self == other ifTrue: [ ^ true ].
	(self species = other species) ifFalse: [ ^ false ].
	^ self asSeconds = other asSeconds and: [ self nanoSecond = other nanoSecond ]