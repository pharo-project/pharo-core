setHistory: anIndex

	| entry |
	
	entry := self getHistoryList at: anIndex ifAbsent: [ nil ].
	entry ifNil: [ ^ self ].
	self model adopt: entry.
	
	self changed: #currentHistoryIndex.