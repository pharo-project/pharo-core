openSelectedSessions

	sessionsTreeModel selectedItems do: [ :item |
		(self logFor: item content asFileReference) browse ]