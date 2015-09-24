initialize

	| wrappingBlock selectedRulesChildrenBlock rulesToSelectChildrenBlock |
	super initialize.
	toSelectModel := self instantiate: TreeModel.
	selectedModel := self instantiate: TreeModel.
	selectRule := Set new.
	selectedRulesChildrenBlock := [:rule | 
		rule isComposite 
			ifTrue: [rule rules select: [ :r |
					(selectRule anySatisfy:  [ :sr | sr = r ]) or: [ r isComposite ] ]]
			 ifFalse: [{}]]. 
	rulesToSelectChildrenBlock := [ :rule | 
		rule isComposite 
			ifTrue: [rule rules select: [ :r |
					(selectRule anySatisfy: [ :sr | sr = r ]) not or: [ r isComposite ]]]
			 ifFalse: [{}] ]. 

	toSelectModel childrenBlock: rulesToSelectChildrenBlock.
	selectedModel childrenBlock: selectedRulesChildrenBlock.
	wrappingBlock := [ :rule | rule name ].	
	toSelectModel displayBlock: wrappingBlock.
	selectedModel displayBlock: wrappingBlock.