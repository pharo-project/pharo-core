testWithPoolDictionaries
	| newClass poolVar |
	
	newClass:= (RGFactory current createClassNamed: #Text)
						addPoolDictNamed: #TextConstants;
						yourself.

	self assert: (newClass poolDictionaries size = 1).
	self assert: (newClass poolDictNames size = 1).
	self assert: (newClass allPoolDictionaries size = 1).  "no hierarchy"
	self assert: (newClass allPoolDictNames size = 1).
	
	poolVar:= newClass poolDictNamed: #TextConstants.
	self assert: (poolVar notNil).
	self assert: (poolVar isPoolVariable).
	self assert: (poolVar isVariable).
	self assert: (poolVar parent = newClass).
	self assert: (poolVar parentName == newClass name).
	self assert: (poolVar realClass = Text).
	
	newClass withMetaclass.
	self assert: (newClass theMetaClass allPoolDictNames size = 1).
	
	newClass removePoolDictNamed: #TextConstants.
	self assert: (newClass poolDictionaries isEmpty).