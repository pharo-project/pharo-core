private
newButtonFor: e value: buttonValue label: label
	| model |

	model := MultipleMethodsEditorButtonModel
		on: self
		value: buttonValue
		label: label
		target: e.
		
	^ PluggableButtonMorph
		on: model
		getState: #state
		action: #action
		label: #label