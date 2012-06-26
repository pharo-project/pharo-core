tests - DictionaryIndexAccessing
testAtError
	"self run: #testAtError"
	
	| dict keyNotIn keyIn |
	dict := self nonEmpty .
	keyNotIn  := self keyNotIn .
	keyIn := dict keys anyOne.
	
	self shouldnt: [ dict at: keyIn  ] raise: Error.
	
	self should: [ dict at: keyNotIn  ] raise: Error.
	
	