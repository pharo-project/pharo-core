calculateSourceInterval: aNode
	| replaceDifference methodNode |
	(aNode selectorParts first isNotNil and: [ self selectorParts first isNotNil ])
		ifTrue: [ 
			aNode sourcePointer: self start.
			aNode comments: self comments.
			aNode selectorParts first stop: aNode start + (self calculateInnerCommentsSize: aNode) + aNode formattedCode size - 1.
			replaceDifference := aNode selectorParts first stop - self selectorParts first stop.
			methodNode := aNode method.
			methodNode body isSequence
				ifTrue: [ 
					methodNode statements
						do: [ :each | 
							(each stop >= aNode stop and: [ each ~= aNode ])
								ifTrue: [ 
									each selectorParts first
										ifNotNil: [ each selectorParts first sourcePointer: each selectorParts first start + replaceDifference ] ] ] ] ]