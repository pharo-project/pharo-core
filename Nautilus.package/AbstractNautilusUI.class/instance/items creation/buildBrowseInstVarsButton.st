buildBrowseInstVarsButton
	^(PluggableButtonMorph
		on: self 
		getState: #isAClassSelected
		action: #browseInstVars
		label: #showInstanceVarsButtonLabel)  
		extent: 24@24; 
		setBalloonText: 'Show instance variables';				
		yourself
