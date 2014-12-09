testObjects
	| stream |
	self testObjectClasses do: [ :each |
		Transcript show: 'Testing: ' , each name asString ; cr.
		stream := FileStream fileNamed: each name , '.objectdata' .
		self perform: #testDictionary:of:on:  withArguments: (Array with: Dictionary with: each with: stream).
		stream close ].
	Transcript show: 'done' ; cr.