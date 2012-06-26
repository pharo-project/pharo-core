items creation
buildGroupsButton

	^ (PluggableButtonMorph
			on: self 
			getState: #groupsButtonState
			action: #groupsButtonAction
			label: #groupsButtonLabel) hResizing: #spaceFill; vResizing: #shrinkWrap