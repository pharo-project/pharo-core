errors - specific behavior
testAtPutNil
	"self run: #testAtPut"
	"self debug: #testAtPut"
	
	| aDict keyIn |
	aDict := self nonEmpty .
	keyIn := aDict keys anyOne.
	
	"WeakIdentityKeyDictionary seems to not accept nil key :"
	"dict at: nil put: 'new'.
	self assert: (dict at: nil) = 'new'."
	
	aDict at: keyIn  put: nil.
	self assert: (aDict at: keyIn ) isNil.
	
	aDict at: self keyNotIn put: nil.
	self assert: ( aDict at: self keyNotIn ) isNil.
	
	"dict at: nil put: nil.
	self assert: (dict at: nil) isNil."