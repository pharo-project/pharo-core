testAll
	| stream |
	stream := FileStream fileNamed: 'classes.creationdata' .
	self testClasses
		do: [ :each | 
			Transcript show: 'Testing: '; show: each name; cr.
			self test: each on: stream]
		separatedBy: [ stream cr].
	stream close.
	Transcript show: 'done' ; cr