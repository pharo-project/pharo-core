terminateButtonAction

	self externalTerminateButtonAction value: self entity.
	self announce: (GLMBrowserClosed new)
		