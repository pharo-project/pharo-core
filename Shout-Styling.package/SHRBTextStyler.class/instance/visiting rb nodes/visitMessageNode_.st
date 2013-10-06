visitMessageNode: aMessageNode 
	 | style link |
	style := #keyword.
	
	(Symbol findInterned: aMessageNode selector asString ) ifNil: [ 
		(Symbol thatStartsCaseSensitive:aMessageNode selector asString skipping: nil) isNil
								ifTrue: [style := #undefinedKeyword]
								ifFalse: [style := #incompleteKeyword]].
	
		
	link := TextMethodLink selector: aMessageNode selector.
	aMessageNode selectorParts do: [ :token|
		self 
			addStyle: style
			attribute: link
			forNode: token ]. 
		
	(aMessageNode isCascaded not or: [aMessageNode isFirstCascaded]) 
		ifTrue: [self visitNode: aMessageNode receiver].
	aMessageNode arguments do: [:each | self visitNode: each]