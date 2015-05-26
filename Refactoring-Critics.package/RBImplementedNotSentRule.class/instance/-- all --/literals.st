literals
	"return all 'message sends' in the systed and cache them"

	literals ifNil: [
		literals := IdentitySet new.

		Smalltalk specialSelectors do: [:sel |
			sel isSymbol ifTrue: [ literals add: sel ] ].
		SystemNavigation default allMethods do: [ :meth |
			meth literals do: [ :lit | self addLiteral: lit ] ] ].
	
	^ literals 