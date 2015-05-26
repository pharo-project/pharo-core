newAllButton
	
	| model |
	model := MultipleMethodsEditorAllButtonModel on: self.
	
	^ PluggableButtonMorph
			on: model
			getState: #state
			action: #action
			label: #label