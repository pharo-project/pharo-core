accessing
completionAt: aNumber
	| entry |
	"when an entry is selected, update its date (for inlined messages which do not appear in the method's body"
	entry := (self at: aNumber) completion.
	self addEntry: entry.
	^ entry separateKeywords, ' '.