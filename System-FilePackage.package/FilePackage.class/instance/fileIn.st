filein/fileout
fileIn
	| doitsMark |
	doitsMark := 1.
	doIts isEmpty ifFalse:[doitsMark := self askForDoits].
	doitsMark = 0 ifTrue: [^nil].
	doitsMark = 2 ifTrue:[self fileInDoits].
	classOrder do:[:cls|
		cls fileInDefinition.
	].
	classes do:[:cls|
		Transcript cr; show:'Filing in ', cls name.
		cls fileInMethods.
		cls hasMetaclass ifTrue:[cls metaClass fileInMethods].
	].
	doitsMark = 3 ifTrue:[self fileInDoits].