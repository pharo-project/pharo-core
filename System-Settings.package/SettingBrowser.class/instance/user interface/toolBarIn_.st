toolBarIn: aMorph 
	| toolBar |
	toolBar := aMorph newToolbar: {
	aMorph
		newButtonFor: self
		getState: nil
		action: #expandAll
		arguments: nil
		getEnabled: nil
		label: 'Expand all' translated
		help: 'Expand all tree nodes' translated.
	aMorph newToolSpacer.
	aMorph newToolSpacer.
	aMorph newLabel: 'Search for: ' translated.
	(SearchMorph
				on: self
				list: #searchedTextList
				selected: #searchedText
				changeSelected: #changeSearchedText:
				useIndex: false 
				addToList: #addToSearchedTextList:
				class: String
				getEnabled: nil) hResizing: #spaceFill; 
				ghostText: 'Hit return to accept' translated.
	aMorph
			newCheckboxFor: self
			getSelected: #regexpSearch
			setSelected: #regexpSearch:
			getEnabled: nil
			label: 'Regexp' 
			help: 'Filter according to a regular expression' translated.
	aMorph newToolSpacer.	
	aMorph newToolSpacer.
	(aMorph
				newButtonFor: self
				getState: nil
				action: #choosePackagesIn:
				arguments: {aMorph}
				getEnabled: nil
				label: 'Choose packages' translated 
				help: 'Select packages' translated).
	(aMorph
				newButtonFor: self
				getState: nil
				action: #exportSettings
				arguments: nil
				getEnabled: nil
				label: 'Export Settings' translated 
				help: 'Export the current settings using StartupPreferences' translated).
	aMorph newToolSpacer}.
	^ toolBar