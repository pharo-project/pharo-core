initializeWidgets
	
	title := 'Critic Browser'.

	self instantiateModels: #(
		rulesModel TreeModel
		resetButton  ButtonModel 
		logButton ButtonModel ).
	
	self setLogButton.
	self setResetButton.
	 
	criticModel := SingleRuleCriticBrowser new.
	rulesModel childrenBlock: [ :rule | 
		rule isComposite 
			ifTrue: [ rule rules ]
			ifFalse: [ #() ]]. 

	rulesModel displayBlock: [ :rule | self stringMorphForRule: rule ].
	
	rulesModel menu: [:a :b | self menu: a shifted: b ].	
	
	self focusOrder
		add: rulesModel;
		add: criticModel