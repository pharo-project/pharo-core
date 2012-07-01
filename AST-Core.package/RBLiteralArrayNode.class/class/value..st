instance creation
value: aValue 
	^(self new)
		startPosition: nil
			contents: (aValue asArray collect: [:each | RBLiteralNode value: each])
			stopPosition: nil
			isByteArray: aValue class ~~ Array;
		yourself