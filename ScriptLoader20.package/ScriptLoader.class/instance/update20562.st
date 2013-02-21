pharo - updates
update20562
	"self new update20562"
	| processes |
processes := Process allInstances select: [ :p |  | ctx |
	ctx := p suspendedContext.
	
	ctx notNil and: [ ctx method  == (Delay>>#wait)
		and: [ ctx sender sender sender method selector == #secondsWhenClockTicks  ]
	 ]].

processes do: #terminate.
	self withUpdateLog: 'Issue 7566:	Source code not saved
	http://code.google.com/p/pharo/issues/detail?id=7566
	
Issue 6164:	Starting the image twice gives CannotDeleteFileException on Windows
	http://code.google.com/p/pharo/issues/detail?id=6164
	
Issue 5638:	Line wrap is breaking lines within words instead of between words in text views
	http://code.google.com/p/pharo/issues/detail?id=5638'.
	self loadTogether: self script537 merge: false.
	self flushCaches.
