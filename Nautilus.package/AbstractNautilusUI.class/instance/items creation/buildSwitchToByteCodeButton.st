buildSwitchToByteCodeButton
	^(PluggableButtonMorph
		on: self 
		getState: #showByteCode
		action: #switchToByteCodeButton
		label: #showByteCodeButtonLabel)  extent: 24@24; 
		setBalloonText: 'Show byteCode';
		yourself
