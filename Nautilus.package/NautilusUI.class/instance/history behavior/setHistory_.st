setHistory: anIndex
	| entry |
	
	anIndex == self currentHistoryIndex ifTrue: [ ^ self ].
	entry := self getHistoryList at: anIndex ifAbsent: [ nil ].
	entry ifNil: [ ^ self ].
	self model adopt: entry.
	
	self changed: #currentHistoryIndex.