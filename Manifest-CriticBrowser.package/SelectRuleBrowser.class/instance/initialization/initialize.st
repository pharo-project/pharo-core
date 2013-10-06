initialize

	| wrappingBlock childrenBlockS childrenBlockTS |
	super initialize.
	toSelectModel := self instantiate: TreeModel.
	selectedModel := self instantiate: TreeModel.
	selectRule := Set new.
	 childrenBlockS := [:rule | 
		rule isComposite 
			ifTrue: [rule rules select: [ :r |
					(selectRule anySatisfy:  [ :sr | sr = r ]) or: [ r isComposite ] ]]
			 ifFalse: [{}]]. 
	 childrenBlockTS := [ :rule | 
		rule isComposite 
			ifTrue: [rule rules select: [ :r |
					(selectRule anySatisfy: [ :sr | sr = r ]) not or: [ r isComposite ]]]
			 ifFalse: [{}] ]. 

	toSelectModel childrenBlock: childrenBlockTS.
	selectedModel childrenBlock: childrenBlockS.
	wrappingBlock := [ :rule | rule name ].	
	toSelectModel displayBlock: wrappingBlock.
	selectedModel displayBlock: wrappingBlock.