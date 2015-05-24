visitNode: aNode
	methodBuilder mapToNode: aNode.
	aNode hasMetalink
		ifTrue: [ 
			aNode beforeHooks do: [ :hook | self visitNode: hook ].
			super visitNode: aNode.
			aNode afterHooks do: [ :hook | self visitNode: hook ] ]
		ifFalse: [ super visitNode: aNode ].
	methodBuilder popMap