settingsOn: aBuilder
	<systemsettings>
	
	(aBuilder group: #refactoring)
		label: 'Refactoring Engine';
		description: 'Settings related to the refactoring tools';
		with: [
			(aBuilder pickOne: #formatterClass)
				label: 'Formatter';
				domainValues: (RBProgramNodeVisitor allSubclasses
					select: [ :each | each canUnderstand: #format: ]) ]