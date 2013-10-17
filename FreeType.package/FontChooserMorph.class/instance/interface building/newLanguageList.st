newLanguageList
	| answer |
	answer := PluggableListMorph
		on: self 
		list: #languages
		selected: #languageIndex
		changeSelected: #languageIndex:.
	answer	
			color: Color white;
			borderInset;
			vResizing: #spaceFill;
			hResizing: #spaceFill.
	^answer