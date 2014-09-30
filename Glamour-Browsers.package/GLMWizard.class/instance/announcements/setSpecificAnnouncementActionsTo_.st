setSpecificAnnouncementActionsTo: aRenderer

	self specificAnnouncementActions keysAndValuesDo: [:anAnnouncementClass :aSymbol |
		self on: anAnnouncementClass send: aSymbol to: aRenderer.
		]