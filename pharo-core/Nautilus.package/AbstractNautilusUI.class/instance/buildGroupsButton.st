items creation
buildGroupsButton
	| button |
	button := (PluggableButtonMorph
			on: self 
			getState: #groupsButtonState
			action: #groupsButtonAction
			label: #groupsButtonLabel) hResizing: #spaceFill; vResizing: #shrinkWrap.
	self setGlobalShorcutsTo: button.
	^ button