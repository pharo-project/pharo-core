differatorSettingsOn: aBuilder 
	<systemsettings>
	(aBuilder group: #differator) 
		label: 'Differator' translated;
		parent: #codeBrowsing; 
		description: 'All settings concerned with the differator' translated;
		with: [	
			(aBuilder setting: #ignoreLineEndings) 
				label: 'Ignore line endings' translated;
				target: self;
		 		description: 'When selected, line ending differences will be ignored ' translated];
		with: [  
		(aBuilder setting: #diffsWithPrettyPrint)
				target: self;	
				label: 'Pretty print differences' translated;
				description: 'If true, displays of source code differences will be pretty-printed first' translated
		]