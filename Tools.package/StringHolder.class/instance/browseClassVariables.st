*Tools-Traits
browseClassVariables
	"Browse the class variables of the selected class."
	| cls |
	cls := self selectedClass.
	(cls notNil and: [cls isTrait not])
		ifTrue: [self systemNavigation  browseClassVariables: cls]
