constructLookupNodeFor: aString in: aRBBlockNode 
	| argumentNode |
	argumentNode := RBLiteralNode literalToken: (RBLiteralToken 
						value: aString
						start: nil
						stop: nil).
	^RBMessageNode 
		receiver: (RBVariableNode named: 'self')
		selector: #lookupMatchFor:in:
		arguments: (Array with: argumentNode with: aRBBlockNode arguments last)