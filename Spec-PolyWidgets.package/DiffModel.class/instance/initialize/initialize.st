initialize

	super initialize.
	
	leftTextHolder := '' asValueHolder.
	rightTextHolder := '' asValueHolder.
	contextClassHolder := nil asValueHolder.
		
	leftTextHolder whenChangedDo: [ :newText |
		 self widget ifNotNil: [:w | w srcText: newText; updateText ] ].
	
	rightTextHolder whenChangedDo: [ :newText | 
		self widget ifNotNil: [:w | w dstText: newText; updateText ] ].

	contextClassHolder whenChangedDo: [ :newClass | 
		self widget ifNotNil: [:w | w contextClass: newClass; updateText ] ].
	
	showOptions := true asValueHolder.
	showOptions whenChangedDo: [ :aBoolean | aBoolean
			ifTrue: [ self changed: #addOptions ]
			ifFalse: [ self changed: #removeOptions ] ]