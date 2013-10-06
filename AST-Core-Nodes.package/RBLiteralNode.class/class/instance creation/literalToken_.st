literalToken: aLiteralToken 
	^(aLiteralToken realValue class == Array 
		or: [aLiteralToken realValue class == ByteArray]) 
			ifTrue: 
				[RBLiteralArrayNode 
					startPosition: aLiteralToken start
					contents: (aLiteralToken value asArray 
							collect: [:each | RBLiteralNode literalToken: each])
					stopPosition: aLiteralToken stop
					isByteArray: aLiteralToken value class ~~ Array]
			ifFalse: [RBLiteralValueNode literalToken: aLiteralToken]