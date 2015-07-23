selected: index
	(index == 0 or:
	[ pluginDelegate isNil ]) ifTrue: [ ^ self ].
	
	
	pluginDelegate criticSelected: (critics at: index)