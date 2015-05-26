visitClassReferenceNode: aNode


	Smalltalk 
		at: aNode name asSymbol 
		ifAbsent: [ self 
			addStyle: #invalid
			attribute: (TextClassLink className: aNode name asSymbol )
			forNode: aNode.
			^self
		 ]. 
	self 
		addStyle: #globalVar
		attribute: (TextClassLink className: aNode name asSymbol )
		forNode: aNode	 