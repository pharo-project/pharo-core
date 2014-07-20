createInstVarAccessors
	"Create getters and setters for all inst vars defined at the level of the current class selection, except do NOT clobber or override any selectors already understood by the instances of the selected class"

	| aClass |
	(aClass := self selectedClassOrMetaClass) ifNotNil:
		[aClass instVarNames do: 
			[:aName | | setter newMessage |
				(aClass canUnderstand: aName asSymbol)
					ifFalse:
						[newMessage := aName, '

	^ ', aName.
						aClass compile: newMessage classified: 'accessing' notifying: nil].
				(aClass canUnderstand: (setter := aName, ':') asSymbol)
					ifFalse:
						[newMessage := setter, ' anObject

	', aName, ' := anObject'.
						aClass compile: newMessage classified: 'accessing' notifying: nil]]]