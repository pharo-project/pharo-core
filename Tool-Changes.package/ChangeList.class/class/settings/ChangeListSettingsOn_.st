ChangeListSettingsOn: aBuilder 
	<systemsettings>  
	(aBuilder group: #codeBrowsing) 
		label: 'Code browsing' translated;
		description: 'All settings concerned with code browsing look''n feel' translated;
		with: [	
			(aBuilder group: #ChangeSorter)
				label: 'Change sorter' translated;
				description: 'Change sorter specific settings' translated;
				with: [
					(aBuilder setting: #mustCheckForSlips)
						target: ChangeSet;
						label: 'Check for slips' translated;
						description: 'If true, then whenever you file out a change set, it is checked for ''slips'' and if any are found, you are so informed and given a chance to open a browser on them' translated.
					(aBuilder setting: #diffsInChangeList)
						target: self;
						label: 'Show Diffs in ChangeList' translated;
						description: 'If true, ChangeList browsers and Versions browsers will open up by default showing differences, i.e. revealing the differences between successive versions or between the in-memory code and the code on disk' translated;
						with: [
						]]]