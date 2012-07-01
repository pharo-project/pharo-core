enumerating
collect: collectBlock thenSelect: selectBlock
    " Utility method to improve readability.
	Do not create the intermediate collection."

    | newCollection |

    newCollection := self copyEmpty.
    firstIndex to: lastIndex do:[: index | 
		| newElement |
		newElement := collectBlock value: ( array at: index ).
		( selectBlock value: newElement ) 
			ifTrue:[ newCollection addLast: newElement. ]
    ].
    ^ newCollection