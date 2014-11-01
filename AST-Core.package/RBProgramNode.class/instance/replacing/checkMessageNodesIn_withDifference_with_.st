checkMessageNodesIn: aNode withDifference: anInteger with: anotherNode
	anotherNode children
		do: [ :each | 
			each isMessage
				ifTrue: [ 
					self checkMessageNodesIn: aNode withDifference: anInteger with: each.
					(each stop >= aNode stop and: [ each ~= aNode ])
						ifTrue: [ each selectorParts do: [ :eachPart | eachPart sourcePointer: eachPart start + anInteger ] ] ]
				ifFalse: [ 
					(each stop >= aNode stop and: [ each ~= aNode ])
						ifTrue: [ each start: each start + anInteger ] ] ]