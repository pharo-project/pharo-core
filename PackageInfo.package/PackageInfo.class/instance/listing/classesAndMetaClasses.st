classesAndMetaClasses
	"Return a Set with all classes and metaclasses belonging to this package"

	| baseClasses result |
	baseClasses := self classes.
	result := (Set new: baseClasses size * 2) 
		addAll: baseClasses;
		yourself.
	baseClasses do: [ :c | 
		result add: c classSide].
	^result
