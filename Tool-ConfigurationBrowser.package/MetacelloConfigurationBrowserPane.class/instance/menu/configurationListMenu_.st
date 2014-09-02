configurationListMenu: aMenu
	aMenu target: self.
	aMenu title:  'Configuration'.
	self selectedConfiguration ifNotNil: [ 
		
		aMenu add: 'Install Stable Version' action: #installConfiguration.
		self selectedConfigurationClass isNil 
			ifTrue:  [ aMenu add: 'Load Configuration' action: #loadConfiguration ]
			ifFalse: [ aMenu add: 'Browse Configuration Class' action: #browseConfiguration ].	
		aMenu addLine ].		 	
	aMenu	
		add: 'Switch Repository' action: #switchRepository;
		add: 'Add Repository' action: #addRepository;
		addLine;
		add: 'Refresh' action: #refreshRepository.	
	^aMenu