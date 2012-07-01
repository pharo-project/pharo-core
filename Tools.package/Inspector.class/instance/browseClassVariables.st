menu commands
browseClassVariables
	"Browse the class variables of the selected class. 2/5/96 sw"
	| cls |
	cls := self selectedClass.
	(cls notNil and: [cls isTrait not])
		ifTrue: [self systemNavigation  browseClassVariables: cls]
