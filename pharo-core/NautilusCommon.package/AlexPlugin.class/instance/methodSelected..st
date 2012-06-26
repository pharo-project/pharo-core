updating
methodSelected: anAnnouncement
	
	anAnnouncement method
		ifNotNil: [:method |
			( method methodClass inheritsFrom: TestCase )
			 	ifTrue: [ text := (method methodClass lookupSelector: #setUp) sourceCode ]]
		ifNil: [ text := ''] .
	self changed: #getText.
	self updateContainer