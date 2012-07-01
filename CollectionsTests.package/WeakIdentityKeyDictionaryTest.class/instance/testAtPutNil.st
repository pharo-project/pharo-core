errors - specific behavior
testAtPutNil
	"self run: #testAtPut"
	"self debug: #testAtPut"
	
	| dict keyIn |
	dict := self nonEmpty .
	keyIn := dict keys anyOne.
	
	"WeakIdentityKeyDictionary seems to not accept nil key :"
	"dict at: nil put: 'new'.
	self assert: (dict at: nil) = 'new'."
	
	dict at: keyIn  put: nil.
	self assert: (dict at: keyIn ) isNil.
	
	dict at: self keyNotIn put: nil.
	self assert: ( dict at: self keyNotIn ) isNil.
	
	"dict at: nil put: nil.
	self assert: (dict at: nil) isNil."