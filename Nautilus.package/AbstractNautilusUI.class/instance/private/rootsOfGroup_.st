rootsOfGroup: aGroup
	| classes |
	classes := self browsedEnvironment isSystem
		ifTrue: [ aGroup elements ]
		ifFalse: [ aGroup elements intersection: self model classes ].
	^ classes reject: [ :each | classes includes: each superclass ]