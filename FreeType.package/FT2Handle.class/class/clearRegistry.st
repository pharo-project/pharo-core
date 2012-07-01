system startup
clearRegistry
	Registry ifNotNil: 
			[:r |
			r finalizeValues.
			r do: [:k | k ifNotNil: [k beNull] ]].
	Registry := nil.
	KnownHandles := nil