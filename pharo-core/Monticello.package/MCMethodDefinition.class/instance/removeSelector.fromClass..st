installing
removeSelector: aSelector fromClass: aClass
	"Safely remove the given selector from the target class.
	Be careful not to remove the selector when it has wondered
	to another package."
	| newCategory |
	newCategory := aClass organization categoryOfElement: aSelector.
	newCategory ifNotNil:[
		"If moved to and fro extension, ignore removal"
		(category beginsWith: '*') = (newCategory beginsWith: '*') ifFalse:[^self].
		"Check if moved between different extension categories"
		((category beginsWith: '*') and:[category ~= newCategory]) ifTrue:[^self]].
	aClass removeSelector: aSelector.
