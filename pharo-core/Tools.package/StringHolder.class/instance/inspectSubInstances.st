*Tools
inspectSubInstances
	"Inspect all instances of the selected class and all its subclasses"

	| aClass |
	(aClass := self selectedClassOrMetaClass) ifNotNil: [
		aClass theNonMetaClass inspectSubInstances].
