rootsOfGroup: aGroup

	| classes |
	self browsedEnvironment isSystem
		ifTrue: [ classes := aGroup elements ]
		ifFalse: [ classes := aGroup elements intersection: self model classes ].

	^ classes select: [:each |
		(classes includes: each superclass) not]