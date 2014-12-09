testClasses
	| stream |
	self testDictionaryClasses do: [ :each |
		Transcript show: 'Testing: ' , each name asString ; cr.
		stream := FileStream fileNamed: each name , '.classdata' .
		self perform: #testDictionary:of:on:  withArguments: (Array with: each with: Object with: stream).
		stream close ].
	Transcript show: 'done' ; cr.