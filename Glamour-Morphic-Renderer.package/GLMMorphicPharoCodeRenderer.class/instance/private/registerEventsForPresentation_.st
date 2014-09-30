registerEventsForPresentation: aPresentation

	super registerEventsForPresentation: aPresentation.
	aPresentation on: GLMSelectCurrentLine send: #selectLine to: self.
	aPresentation on: GLMEvaluateSelection send: #actOnEvaluateSelection: to: self.
	aPresentation on: GLMCompileText send: #actOnCompileText: to: self.
	aPresentation on: GLMDebugSelection send: #debugSelection to: self.
	aPresentation on: GLMProfileSelection send: #profileSelection to: self.
	aPresentation on: GLMPrintSelection send: #evaluateAndPopPrintSelection to: self
	