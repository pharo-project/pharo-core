entryItems

	^ log entryReferences collect: [:each |
		self itemForEntryReference: each ]