registerEventsForPresentation: aPresentation

	super registerEventsForPresentation: aPresentation.
	
	aPresentation on: GLMVariableBindingsChanged send: #actOnVariableBindingsUpdated: to: self.
	aPresentation on: GLMVariableBindingsAccessRequest send: #actOnVariableBindingsAccessRequest: to: self.
	