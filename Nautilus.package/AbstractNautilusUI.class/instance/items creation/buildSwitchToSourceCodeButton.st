buildSwitchToSourceCodeButton
	^ (PluggableButtonMorph
		on: self 
		getState: #showSource
		action: #switchToSourceCodeButton
		label: #showSourceCodeButtonLabel)  extent: 24@24; 
		setBalloonText: 'Show source code';
		yourself