process: aString
	"I do not accept empty queries or the same queries as before.
	If nil is passed, than an empty string will be processed. This approach is used to
	destinguish when user deletes last character in the search and when search field became
	empty after spawning new step"
	
	"no need to search for the same query"
	(self context matches: aString) ifTrue: [ ^ self ].
	
	self context: (self newContextForQuery: aString).
	
	" updating timestamp in a stream, to prevent candidates from old process being shown "
	self stream updateTimestamp.
	
	self asyncTask
		execute: [ :aContext |
				self notifyContextChanged: aContext.
				self stream removeAllCandidates.
				[ self relevantProcessorsProcess: aContext ]
					on: Error
					do: [ :e | ('[Spotter] Exception in process: ', e asString) logCr ] ]
		withArguments: { self context }
		callback: [  ]
		"added small delay before actual searching. It makes spotter faster :)"
		delay: 200