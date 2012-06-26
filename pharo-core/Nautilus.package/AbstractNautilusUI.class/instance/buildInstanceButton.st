items creation
buildInstanceButton

	^ (PluggableButtonMorph
			on: self 
			getState: #instanceButtonState
			action: #instanceButtonAction
			label: #instanceButtonLabel) hResizing: #spaceFill; vResizing: #shrinkWrap