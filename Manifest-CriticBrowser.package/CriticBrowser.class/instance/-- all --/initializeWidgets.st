initializeWidgets
	
	title := 'Critic Browser'.

	self instantiateModels: #(
		rulesModel TreeModel
		resetButton  ButtonModel 
		logButton ButtonModel ).
	
	self setLogButton.
	self setResetButton.
	 
	criticModel := SingleCodeCriticResultList new.
	rulesModel childrenBlock: [ :rule | 
		rule isComposite 
			ifTrue: [ rule rules ]
			ifFalse: [ #() ]]. 

	rulesModel displayBlock: [ :rule | self stringMorphForRule: rule ].
	
	rulesModel menu: [ :aMenu :shifted | self menu: aMenu shifted: shifted ].	
	
	self focusOrder
		add: rulesModel;
		add: criticModel