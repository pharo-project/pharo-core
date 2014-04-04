buildToggleButton

	^ (PluggableButtonMorph
			on: self 
			getState: #toggleButtonState
			action: #toggleButtonAction
			label: #toggleButtonLabel)
			getEnabledSelector: #toggleButtonEnabled;
			hResizing: #spaceFill;
			vResizing: #shrinkWrap;
			enabled: (self model selectedClass notNil);
			yourself