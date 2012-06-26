class functions
addAllMethodsToCurrentChangeSet
	"Add all the methods in the selected class or metaclass to the current change set.  You ought to know what you're doing before you invoke this!"

	| aClass |
	(aClass := self selectedClassOrMetaClass) ifNotNil:
		[aClass selectorsDo:
			[:sel |
				ChangeSet current adoptSelector: sel forClass: aClass].
		self changed: #annotation]
