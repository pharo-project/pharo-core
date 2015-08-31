isUsed
	self isMeta ifTrue: [ ^true ].
	(self isTrait and: [ self traitUsers isNotEmpty ]) ifTrue: [ ^true ].
	self subclasses notEmpty
		ifTrue: [ ^ true ].
	^SystemNavigation new isUsedClass: self