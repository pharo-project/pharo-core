formatArray: anArrayNode
	(anArrayNode statements reject: [ :each | each className = 'RBLiteralValueNode' ])
		ifEmpty: [ 
			anArrayNode statements
				do: [ :each | 
					self visitNode: each.
					(self isLineTooLong: each value asString)
						ifTrue: [ 
							codeStream nextPut: $..
							self newLine ]
						ifFalse: [ codeStream nextPutAll: '. ' ] ] ]
		ifNotEmpty: [ self formatSequenceNodeStatementsFor: anArrayNode ]