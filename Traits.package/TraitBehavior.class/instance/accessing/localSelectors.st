localSelectors
	"Return a set of selectors defined locally.
	The instance variable is lazily initialized. If it is nil then there
	are no non-local selectors"

	^ self basicLocalSelectors isNil
		ifTrue: [self selectors asSet]
		ifFalse: [self basicLocalSelectors].