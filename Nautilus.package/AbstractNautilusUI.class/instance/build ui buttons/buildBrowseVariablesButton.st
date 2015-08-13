buildBrowseVariablesButton
	^ (PluggableButtonMorph
		on: self
		getState: #browseVariablesButtonState
		action: #browseVariablesButtonAction
		label: #browseVariablesButtonLabel)
		getEnabledSelector: #browseVariablesButtonEnabled;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		enabled: self selectedClass notNil;
		yourself