query
bottomContext
	"Return the last context (the first context invoked) in my sender chain"

	^ self findContextSuchThat: [:c | c sender isNil]