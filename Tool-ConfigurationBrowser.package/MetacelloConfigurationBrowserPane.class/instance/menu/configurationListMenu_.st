configurationListMenu: aMenu
	aMenu target: self.
	aMenu addTitle:  'Configuration'.
	self selectedConfiguration ifNotNil: [ 
		
		aMenu add: 'Install Stable Version' selector: #installConfiguration.
		self selectedConfigurationClass isNil 
			ifTrue:  [ aMenu add: 'Load Configuration' selector: #loadConfiguration ]
			ifFalse: [ aMenu add: 'Browse Configuration Class' selector: #browseConfiguration ].	
		aMenu addLine ].		 	
	aMenu	
		add: 'Switch Repository' selector: #switchRepository;
		add: 'Add Repository' selector: #addRepository;
		addLine;
		add: 'Refresh' selector: #refreshRepository.	
	^aMenu