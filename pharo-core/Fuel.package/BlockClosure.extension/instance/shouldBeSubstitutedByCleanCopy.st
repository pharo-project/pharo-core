*Fuel
shouldBeSubstitutedByCleanCopy
	"The 'self sender isNil not' is just to avoid an infinitive loop for the substitution. As you can see, the copy of this closure has a cleaned outer context (see #cleanOuterContext) and such context has a nil sender (see #cleanCopy)"
	^ self isClean and: [ self sender isNil not ]