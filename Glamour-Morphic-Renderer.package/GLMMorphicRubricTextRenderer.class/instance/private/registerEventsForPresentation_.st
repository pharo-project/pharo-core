registerEventsForPresentation: aPresentation

	aPresentation on: GLMPresentationUpdated send: #actOnPresentationUpdated: to: self.
	aPresentation on: GLMContextChanged send: #actOnContextChanged: to: self.