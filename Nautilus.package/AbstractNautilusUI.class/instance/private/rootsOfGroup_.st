rootsOfGroup: aGroup
	| classes |
	self browsedEnvironment isSystem
		ifTrue: [ classes := aGroup elements ]
		ifFalse: [ classes := aGroup elements intersection: self model classes ].
	^ classes reject: [ :each | classes includes: each superclass ]