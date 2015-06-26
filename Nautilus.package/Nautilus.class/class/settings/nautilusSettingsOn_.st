nautilusSettingsOn: aBuilder
	<systemsettings>
	(aBuilder group: #codeBrowsing) 
		label: 'Code Browsing';
		description: 'All settings concerned with code browsing look''n feel';
		with: [	
	(aBuilder group: #Nautilus)
		target: self;
		label: 'Nautilus Browser';
		parent: #codeBrowsing; 
		description: 'Settings related to the browser';
		with: [
			(aBuilder setting: #showGroupsOnTop)
				parent: #Nautilus;
				target: self;
				label: 'Show groups on top ?';
				description: 'If true, Nautilus will show groups on top of package pane'.
			(aBuilder setting: #openOnGroups)
				label: 'Open the browser on groups ?';
				description: 'If true, Nautilus will show groups when opened' .
			(aBuilder setting: #sortHierarchically)
				label: 'Show hierarchy by default ?';
				description: 'If false, Nautilus will show a flat list of classes'.
			(aBuilder setting: #historyMaxSize)
				label: 'Set the max size of the navigation history' ;
				description: ('By default, the value is ', self defaultMaxSize printString).
			(aBuilder setting: #switchClassesAndPackages)
				label: 'Switch lists when opening on a class ?';
				description: 'Default value: false'.
			(aBuilder setting: #warningLimit)
				label: 'Set the warning limit of source code pane';
				description: 'By default, the value is 350
Put a negative value to disable'.
			(aBuilder setting: #emptyCommentWarning)
				label: 'Enable/disable warning for empty comments';
				description: 'Enable/disable the warning for empty comments. CAUTION! To have comments in your classes is highly recomended'. 
			(aBuilder setting: #populateMethodList)
				label: 'Populate the method list at opening ?';
				default: self defaultPopulateMethodList;
				description: 'If true, the browser may be a bit slower to open on big classes. If false, you will need an extra click to access a method'.
			(aBuilder setting: #useOldStyleKeys)
				label: 'Use old style keys ?';
				description: 'If true, the browser will use the old style keys (This is highly non-recommended, you will lose a lot of cool access keys)'.
			(aBuilder setting: #useExperimentalFastTable)
				label: 'Use EXPERIMENTAL fast table ?';
				description: 'If true, the browser will use the currently experimental FTTableMorph to show list panels'.
			(aBuilder setting: #showDebugMenus)
				label: 'Show DEBUG menu?';
				description: 'If true, the browser will show DEBUG entries in all menus for debugging Nautilus itself'.
				]]