showing
visitNextEntry: entry
	entry isFile 
		ifTrue: [ ^ visitor visitFile: entry ].
	
	visitor visitDirectory: entry.
	self pushAll: entry reference entries.