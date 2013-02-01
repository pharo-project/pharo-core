initialization
initializeWidgets
	
	title := 'Critic Browser'.
	
	rulesModel := self instantiate: TreeModel.
	criticModel := CriticBrowser new.
		
	rulesModel childrenBlock: [:rule | 
		rule isComposite 
			ifTrue: [rule 	rules.]
			 ifFalse: [{}]
		
	]. 

		
	rulesModel menu: [:a :b | self menu: a shifted: b ].
	
	self initRuleWrappingBlock.
	