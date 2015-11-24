execute
	context ifNil: [ ^self ].
	context hasUnacceptedEdits ifTrue: [ ^context sourceTextArea acceptEdits].
	
	context selectedNode hasWatchpoint ifTrue: [ Watchpoint deleteHistoryFrom: context selectedNode ].