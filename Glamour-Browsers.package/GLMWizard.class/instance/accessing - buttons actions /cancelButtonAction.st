cancelButtonAction

	self externalCancelButtonAction value: self entity.
	self announce: (GLMBrowserClosed new)		