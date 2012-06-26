tests - fixture
test0FixtureIncludeTest
	| elementIn |
	self 
		shouldnt: [ self nonEmpty ]
		raise: Error.
	self deny: self nonEmpty isEmpty.
	self 
		shouldnt: [ self elementNotIn ]
		raise: Error.
	elementIn := true.
	self nonEmpty 
		detect: [ :each | each = self elementNotIn ]
		ifNone: [ elementIn := false ].
	self assert: elementIn = false.
	self 
		shouldnt: [ self anotherElementNotIn ]
		raise: Error.
	elementIn := true.
	self nonEmpty 
		detect: [ :each | each = self anotherElementNotIn ]
		ifNone: [ elementIn := false ].
	self assert: elementIn = false.
	self 
		shouldnt: [ self collection ]
		raise: Error.
	"self shouldnt: [self collectionInForIncluding  ] raise: Error."
	"collectionIn:=false.
	index:=1.
	1 to: self nonEmpty size do:
		[:i|
		collectionIn = false
			ifTrue:[(self nonEmpty at:i)=(self collectionInForIncluding at:index)
				ifTrue:[
					index=self collectionInForIncluding 
						ifTrue:[collectionIn := true].					
					index:=index+1.]
				ifFalse:[index:=1].			
				]
		].
	self assert: collectionIn=true."
	self 
		shouldnt: [ self empty ]
		raise: Error.
	self assert: self empty isEmpty.
	self 
		shouldnt: [ self collectionOfFloat ]
		raise: Error.
	self collectionOfFloat do: [ :each | self assert: each class = Float ].
	self 
		shouldnt: [ self elementInForIncludesTest ]
		raise: Error.
	elementIn := true.
	self nonEmpty 
		detect: [ :each | each = self elementInForIncludesTest ]
		ifNone: [ elementIn := false ].
	self assert: elementIn = true