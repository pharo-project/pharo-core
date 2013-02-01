protocol
nextAction
	| rules rbRule|
	self delete.
	
	rules := selectedModel getRoots.
	rules
		do: [ :each | 
			each leaves
				do: [ :leave | 
					(selectRule anySatisfy: [ :r | r = leave ])
						ifFalse: [ each removeRule: leave ] ] ].
	rules := rules select: [ :each | each rules isEmpty not ].
	rbRule := (RBCompositeLintRule new
				name: self defaultRulesRootName;
				rules: rules).
				
	CriticWorkspace current
		rule: rbRule;
		environment: environment.
	
	CriticBrowser
		openOnWorkspace: CriticWorkspace current.