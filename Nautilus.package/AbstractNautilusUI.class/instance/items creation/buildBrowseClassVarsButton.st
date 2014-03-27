buildBrowseClassVarsButton
	^(PluggableButtonMorph
		on: self 
		getState: #isAClassSelected
		action: #browseClassVars
		label: #showClassVarsButtonLabel)  
		extent: 24@24; 
		setBalloonText: 'Show class variables';
		yourself
