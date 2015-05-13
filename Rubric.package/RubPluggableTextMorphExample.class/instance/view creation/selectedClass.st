selectedClass
	| cls |
	cls := (Smalltalk at: (self selectedClassName ifNil: [ ^ nil ]) asSymbol ifAbsent: [ ^self ]) theNonMetaClass.
	^ self classIsMeta ifTrue: [ cls class ] ifFalse: [ cls ]
	