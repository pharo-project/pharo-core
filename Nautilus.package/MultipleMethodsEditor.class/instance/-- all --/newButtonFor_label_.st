newButtonFor: e label: label
	| model |

	model := MultipleMethodsEditorButtonModel
		on: self
		label: label
		target: e.
		
	^ PluggableButtonMorph
		on: model
		getState: #state
		action: #action
		label: #label