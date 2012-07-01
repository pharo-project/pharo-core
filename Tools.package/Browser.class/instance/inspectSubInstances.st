message functions
inspectSubInstances
	"Inspect all instances of the selected class and all its subclasses  1/26/96 sw"

	| aClass |
	((aClass := self selectedClassOrMetaClass) isNil or: [aClass isTrait])
		ifFalse: [
			aClass := aClass theNonMetaClass.
			aClass inspectSubInstances].
