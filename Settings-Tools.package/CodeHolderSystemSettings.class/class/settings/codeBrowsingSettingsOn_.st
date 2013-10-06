codeBrowsingSettingsOn: aBuilder 
	<systemsettings>  
	(aBuilder group: #codeBrowsing) 
		label: 'Code browsing' translated;
		target: CodeHolder;
		description: 'All settings concerned with code browsing look''n feel' translated;
		with: [	
			(aBuilder setting: #browseWithPrettyPrint) 
				order: 1;
				label: 'Pretty print' translated;
		 		description: 'If checked then browsers automatically format their code' translated.
			(aBuilder setting: #showAnnotationPane) 
				label: 'Show annotation pane' translated;
		 		description: 'If checked then the annotation pane is shown in browsers; it is dynamically updated with useful informations about the code which is currently browsed' translated.
			(aBuilder group: #ChangeSorter)
				label: 'Change sorter' translated;
				description: 'Change sorter specific settings' translated;
				with: [
					(aBuilder setting: #mustCheckForSlips)
						target: ChangeSet;
						label: 'Check for slips' translated;
						description: 'If true, then whenever you file out a change set, it is checked for ''slips'' and if any are found, you are so informed and given a chance to open a browser on them' translated.
					(aBuilder setting: #diffsInChangeList)
						label: 'Exhibits differences' translated;
						description: 'If true, ChangeList browsers and Versions browsers will open up by default showing differences, i.e. revealing the differences between successive versions or between the in-memory code and the code on disk' translated;
						with: [
							(aBuilder setting: #diffsWithPrettyPrint)
								label: 'Pretty print differences' translated;
								description: 'If true, displays of source code differences will be pretty-printed first' translated]]]