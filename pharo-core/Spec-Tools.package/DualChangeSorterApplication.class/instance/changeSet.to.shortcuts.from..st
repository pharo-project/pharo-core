shortcuts
changeSet: src to: dest shortcuts: event from: aMorph

	event keyString = '<Cmd-c>' 	ifTrue: [ self copyAllFrom: src to: dest ].
	event keyString = '<Cmd-->' 	ifTrue: [ self subtractFrom: src to: dest ].
	
	^ src changeSetShortcuts: event from: aMorph.