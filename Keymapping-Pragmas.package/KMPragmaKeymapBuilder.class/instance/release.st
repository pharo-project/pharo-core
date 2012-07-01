initialize-release
release
	self pragmaCollector unsubscribe: self.
	self pragmaCollector announcer initialize. "Hack because the announcer is not garbage collected."
	pragmaCollector := nil.
	model := nil.
	super release
	