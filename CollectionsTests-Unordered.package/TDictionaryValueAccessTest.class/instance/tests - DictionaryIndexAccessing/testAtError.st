testAtError
	"self run: #testAtError"
	
	| dict nonExistantKey keyIn |
	dict := self nonEmpty .
	nonExistantKey  := self keyNotIn .
	keyIn := dict keys anyOne.
	
	self shouldnt: [ dict at: keyIn  ] raise: Error.
	
	self should: [ dict at: nonExistantKey  ] raise: Error.
	
	