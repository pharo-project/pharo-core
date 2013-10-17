testAtPutNil
	"self run: #testAtPut"
	"self debug: #testAtPut"
	
	| aDictionary keyIn |
	aDictionary := self nonEmpty .
	keyIn := aDictionary keys anyOne.
	
	aDictionary at: nil put: 'new'.
	self assert: (aDictionary at: nil) = 'new'.
	
	aDictionary at: keyIn  put: nil.
	self assert: (aDictionary at: keyIn ) isNil.
	
	aDictionary at: self keyNotIn put: nil.
	self assert: ( aDictionary at: self keyNotIn ) isNil.
	
	aDictionary at: nil put: nil.
	self assert: (aDictionary at: nil) isNil.