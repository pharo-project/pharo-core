message functions
inspectInstances
	"Inspect all instances of the selected class.  1/26/96 sw"

	| myClass |
	((myClass := self selectedClassOrMetaClass) isNil or: [myClass isTrait])
		ifFalse: [myClass theNonMetaClass inspectAllInstances]
