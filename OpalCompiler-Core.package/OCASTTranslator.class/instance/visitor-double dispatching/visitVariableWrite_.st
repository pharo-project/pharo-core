visitVariableWrite: aNode
	aNode hasMetalink
		ifTrue: [ 
			aNode preambles do: [ :pre | pre ifNotNil: [self visitNode: pre] ].
			aNode beforeHooks do: [ :hook | self visitNode: hook ].
			super visitNode: aNode.
			aNode afterHooks do: [ :hook | self visitNode: hook ] ] 

