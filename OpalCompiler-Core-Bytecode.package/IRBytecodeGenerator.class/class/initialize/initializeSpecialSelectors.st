initializeSpecialSelectors
	"Create a map from specialSelector -> bytecode offset from sendAdd (the first one)"

	| array |
	SpecialSelectors := IdentityDictionary new.
	array := self specialSelectorsArray.  "Smalltalk specialObjectsArray at: 24"
	1 to: array size by: 2 "skip numArgs" do: [:i |
		SpecialSelectors at: (array at: i) put: i - 1 / 2].
