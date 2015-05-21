visitNode: aNode
	methodBuilder mapToNode: aNode.
	aNode hasMetalink
		ifTrue: [ 
			aNode beforeLinks do: [ :link | self visitNode: (link hookOn: aNode) ].
			super visitNode: aNode.
			aNode afterLinks do: [ :link | self visitNode: (link hookOn: aNode) ] ]
		ifFalse: [ super visitNode: aNode ].
	methodBuilder popMap