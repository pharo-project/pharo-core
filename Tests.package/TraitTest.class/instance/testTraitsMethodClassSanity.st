testing
testTraitsMethodClassSanity
	"self debug: #testTraitsMethodClassSanity"
	
	(Smalltalk globals allTraits gather: #users) asSet do: [ :each |
		each selectorsDo: [ :selector |
			self should: [ (each >> selector) methodClass == each ] ] ]