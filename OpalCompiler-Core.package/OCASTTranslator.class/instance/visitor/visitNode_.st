visitNode: aNode
	methodBuilder mapToNode: aNode.
	aNode hasMetalink
		ifTrue: [ 
			aNode beforeLinks do: [ :link | self visitNode: (link hook parent: aNode) ].
			super visitNode: aNode.
			aNode afterLinks do: [ :link | self visitNode: (link hook parent: aNode) ] ]
		ifFalse: [ super visitNode: aNode ].
	methodBuilder popMap