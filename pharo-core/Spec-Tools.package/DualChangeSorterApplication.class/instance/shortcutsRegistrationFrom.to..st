initialization
shortcutsRegistrationFrom: src to: dest
	
	src changesShortcuts: [:event :source | self changeSet: src to: dest shortcuts: event from: source ].