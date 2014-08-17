settingsOn: aBuilder
	<systemsettings>
	
	(aBuilder group: #refactoring)
		label: 'Refactoring Engine';
		parent: #codeBrowsing; 
		description: 'Settings related to the refactoring tools';
		with: [
			(aBuilder pickOne: #formatterClass)
				label: 'Formatter';
				target: self;
				domainValues: (RBProgramNodeVisitor allSubclasses
					select: [ :each | each canUnderstand: #format: ]) ]