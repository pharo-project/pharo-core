process: aString
	"I do not accept empty queries or the same queries as before.
	If nil is passed, than an empty string will be processed. This approach is used to
	destinguish when user deletes last character in the search and when search field became
	empty after spawning new step"
	
	"no need to search for the same query"
	(self query isNotEmpty and: [ aString = self query ]) ifTrue: [ ^ self ].
	
	self query: (aString ifNil: [ '' ]).
	"updating timestamp in a stream, to prevent candidates from old process being shown"
	self stream updateTimestamp.
	
	self asyncTask
		execute: [ :input | 
				self stream removeAllCandidates. 
				self relevantProcessorsProcess: input ]
		withArguments: { self query }
		callback: [  ].