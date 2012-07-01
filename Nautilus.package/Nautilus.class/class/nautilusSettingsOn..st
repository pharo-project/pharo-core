settings
nautilusSettingsOn: aBuilder
	<systemsettings>
	
	(aBuilder group: #Nautilus)
		target: self;
		label: 'Nautilus' translated;
		description: 'Settings related to the browser' translated;
		with: [
			(aBuilder setting: #openOnGroups)
				label: 'Open the browser on groups ?' translated;
				description: 'If true, Nautilus will show groups when opened' translated ];
		with: [
			(aBuilder pickOne: #commentPosition)
				label: 'Position of the comment pane:' translated;
				target: self;
				default: self defaultCommentPosition;
				order: 1;
				domainValues: self commentPositions];
		with: [
			(aBuilder setting: #showHierarchy)
				label: 'Show hierarchy by default ?' translated;
				description: 'If false, Nautilus will show a flat list of classes' translated ];
		with: [
			(aBuilder setting: #historyMaxSize)
				label: 'Set the max size of the navigation history' translated;
				description: ('By default, the value is ', self defaultMaxSize printString) translated ];
		with: [
			(aBuilder setting: #switchClassesAndPackages)
				label: 'Switch lists when opening on a class ?' translated;
				description: 'Default value: false' translated ];
		with: [
			(aBuilder setting: #warningLimit)
				label: 'Set the warning limit of source code pane' translated;
				description: 'By default, the value is 350
Put a negative value to disable' translated ]