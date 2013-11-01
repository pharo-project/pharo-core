configurationListMenu: aMenu
	aMenu target: self.
	aMenu title:  'Configuration'.
	self selectedConfiguration ifNotNil: [ 
		
		aMenu add: 'Install configuration' action: #installConfiguration.
		self selectedConfigurationClass isNil 
			ifTrue:  [ aMenu add: 'Load configuration' action: #loadConfiguration ]
			ifFalse: [ aMenu add: 'Browse configuration class' action: #browseConfiguration ].	
		aMenu addLine ].
		
	aMenu	
		add: 'Switch Repository' action: #switchRepository;
		add: 'Refresh' action: #refreshRepository.	
	^aMenu