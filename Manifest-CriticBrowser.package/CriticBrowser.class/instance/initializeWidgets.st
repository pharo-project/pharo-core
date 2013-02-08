initialization
initializeWidgets
	
	title := 'Critic Browser'.
	rulesModel := self instantiate: TreeModel.
	self instantiateModels: #(
		rulesModel TreeModel
		resetButton  ButtonModel 
		logButton ButtonModel ).
	
	
	self setLogButton.
	self setResetButton.
	 
	criticModel := SingleRuleCriticBrowser new.
	rulesModel childrenBlock: [:rule | 
		rule isComposite 
			ifTrue: [ rule rules ]
			ifFalse: [ #() ]]. 

	rulesModel menu: [:a :b | self menu: a shifted: b ].	
	self initializeDisplayBlockForRules.
	
	self focusOrder
		add: rulesModel;
		add: criticModel