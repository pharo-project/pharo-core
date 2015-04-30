visitClassReferenceNode: aNode
	| style |
	style := #globalVar.
	Smalltalk
		at: aNode name asSymbol
		ifAbsent: [ 
			(Smalltalk hasBindingThatBeginsWith: aNode name asSymbol)
				ifTrue: [ style := #incompleteIdentifier ]
				ifFalse: [ style := #invalid ] ].
			
	self addStyle: style attribute: (TextClassLink className: aNode name asSymbol) forNode: aNode