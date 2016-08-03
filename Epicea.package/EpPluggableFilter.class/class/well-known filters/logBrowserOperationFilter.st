logBrowserOperationFilter
	^ self
		title: 'is undo or redo or comment'
		condition: [ :e | e content isKindOf: EpLogBrowserOperation ]