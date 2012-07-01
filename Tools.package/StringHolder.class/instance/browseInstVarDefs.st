*Tools-Traits
browseInstVarDefs 

	| cls |
	cls := self selectedClassOrMetaClass.
	(cls notNil and: [cls isTrait not])
		ifTrue: [self systemNavigation browseInstVarDefs: cls]