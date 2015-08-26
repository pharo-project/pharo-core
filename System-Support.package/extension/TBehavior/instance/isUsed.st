isUsed
	self isMeta ifTrue: [ ^true ].
	(self isTrait and: [ self traitUsers isNotEmpty ]) ifTrue: [ ^true ].
	(self subclasses notEmpty or: [ self inheritsFrom: TestCase ])
		ifTrue: [ ^ true ].
	^SystemNavigation new isUsedClass: self