installing
unload
	| previousVersion |
	self isOverrideMethod ifTrue: [previousVersion := self scanForPreviousVersion].
	previousVersion
		ifNil: [self actualClass ifNotNil:[:class| self removeSelector: selector fromClass: class]]
		ifNotNil: [previousVersion fileIn] 