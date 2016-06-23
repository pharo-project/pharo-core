during: aBlock
	self check ifTrue: [ ^nil ].
	self on.
	^aBlock ensure: [ self off. ]
	