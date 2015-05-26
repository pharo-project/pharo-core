testTraitsMethodClassSanity
	"self debug: #testTraitsMethodClassSanity"
	
	(Smalltalk globals allTraits gather: #traitUsers) asSet do: [ :each |
		each selectorsDo: [ :selector |
			self should: [ (each >> selector) methodClass == each ] ] ]