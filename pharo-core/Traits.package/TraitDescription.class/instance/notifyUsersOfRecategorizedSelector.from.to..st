users notification
notifyUsersOfRecategorizedSelector: element from: oldCategory to: newCategory
	self users do: [:each |
		each noteRecategorizedSelector: element from: oldCategory to: newCategory]