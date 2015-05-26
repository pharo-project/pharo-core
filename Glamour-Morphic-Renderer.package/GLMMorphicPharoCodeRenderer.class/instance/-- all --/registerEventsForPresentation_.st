registerEventsForPresentation: aPresentation

	super registerEventsForPresentation: aPresentation.
	aPresentation on: GLMSelectCurrentLine send: #selectLine to: self.
	aPresentation on: GLMEvaluateSelection send: #actOnEvaluateSelection: to: self.
	aPresentation on: GLMHighlightAndEvaluate send: #actOnHighlightAndEvaluate: to: self.
	aPresentation on: GLMCompileText send: #actOnCompileText: to: self.
	aPresentation on: GLMDebugSelection send: #debugHighlightedText to: self.
	aPresentation on: GLMProfileSelection send: #profileHighlightedText to: self.
	aPresentation on: GLMPrintSelection send: #evaluateAndPopPrintHighlight to: self
	