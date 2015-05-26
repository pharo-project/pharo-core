removeSelector: aSelector fromClass: aClass
	"Safely remove the given selector from the target class.
	Be careful not to remove the selector when it has wandered
	to another package, but remove the category if it is empty."

	| newCategory |
	newCategory := aClass organization categoryOfElement: aSelector.
	newCategory
		ifNotNil: [ 
			"If moved to and fro extension, ignore removal"
			(category beginsWith: '*') = (newCategory beginsWith: '*')
				ifFalse: [ ^ self ].	"Check if moved between different extension categories"
			((category beginsWith: '*') and: [ category ~= newCategory ])
				ifTrue: [ ^ self ] ].
	aClass removeSelector: aSelector.
	aClass organization removeProtocolIfEmpty: category