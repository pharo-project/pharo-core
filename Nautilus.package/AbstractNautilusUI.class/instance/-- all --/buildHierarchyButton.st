buildHierarchyButton

	^ (PluggableButtonMorph
			on: self 
			getState: #hierarchyButtonState
			action: #hierarchyButtonAction
			label: #hierarchyButtonLabel)
			getEnabledSelector: #hierarchyButtonEnabled;
			hResizing: #spaceFill;
			vResizing: #shrinkWrap;
			enabled: (self model selectedClass notNil);
			yourself