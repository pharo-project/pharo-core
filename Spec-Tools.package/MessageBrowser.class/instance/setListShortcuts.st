initialization
setListShortcuts

	listModel shortcuts: [:event :source || message |
		message := self selectedMessage.
		self listShortcutsFor: event form: source message: message ]