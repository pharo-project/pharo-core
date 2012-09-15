message functions
inspectSubInstances
	"Inspect all instances of the selected class and all its subclasses"

	| aClass |
	((aClass := self selectedClassOrMetaClass) isNil or: [aClass isTrait])
		ifFalse: [
			aClass := aClass theNonMetaClass.
			aClass inspectSubInstances].
