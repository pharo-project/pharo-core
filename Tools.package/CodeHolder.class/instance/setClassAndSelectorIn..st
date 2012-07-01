misc
setClassAndSelectorIn: csBlock
	"Evaluate csBlock with my selected class and and selector as its arguments; provide nil arguments if I don't have a method currently selected"

	| aName |
	(aName := self selectedMessageName)
		ifNil:
			[csBlock value: nil value: nil]
		ifNotNil:
			[csBlock value: self selectedClassOrMetaClass value: aName]
