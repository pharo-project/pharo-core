dataSourceUpdated: announcement
	tableModel ifNotNil: [ self unsubscribeDataSource: tableModel ].
	tableModel := announcement newDataSource.
	self installActionsOnModel: tableModel fromPresentation: tableModel glamourPresentation.
	self initializeAnnouncementForDataSource