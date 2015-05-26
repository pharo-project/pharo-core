classesComposedWithMe
	self isTrait
		ifTrue: [ ^ self traitUsers gather: [ :u | u classesComposedWithMe ] ]
		ifFalse: [ ^ {self} ]