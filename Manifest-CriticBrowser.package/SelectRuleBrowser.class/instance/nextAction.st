private
nextAction
	|rules|
	
	self delete.
	
	rules := 	selectedModel getRoots.
	rules do: [ :each | 
		each leaves
			do: [ :leave | 
				(selectRule anySatisfy: [ :r | r = leave ])
					ifFalse: [ each removeRule: leave]]].
				
		rules := rules select: [ :each | 
				each rules isEmpty not].
					
			 				
	CriticRulesBrowser openOnRule: (RBCompositeLintRule new name: 'selected Rules'; rules: rules) onEnvironment: environment