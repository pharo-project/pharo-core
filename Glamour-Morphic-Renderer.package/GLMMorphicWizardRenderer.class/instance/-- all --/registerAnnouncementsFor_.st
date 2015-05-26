registerAnnouncementsFor: aBrowser
	aBrowser 
		on: GLMPaneRemoved send: #actOnPaneRemoved: to: self.
	aBrowser 
		on: GLMPaneAdded send: #actOnPaneAdded: to: self.
	aBrowser 
		on: GLMPaneReplaced send: #actOnPaneReplaced: to: self.
	aBrowser 
		on: GLMBrowserClosed send: #actOnBrowserClosed: to: self.