private
performSearches: aSearchCollection on: aNode 
	| value |
	1 to: aSearchCollection size
		do: 
			[:i | 
			value := (aSearchCollection at: i) performOn: aNode.
			value notNil 
				ifTrue: 
					[self foundMatch.
					^value]].
	^nil