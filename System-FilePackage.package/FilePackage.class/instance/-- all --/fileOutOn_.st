fileOutOn: aStream
	| doitsMark |
	doitsMark := 1.
	doIts isEmpty ifFalse:[doitsMark := self askForDoits].
	doitsMark = 0 ifTrue: [^nil].
	doitsMark = 2 ifTrue:[self fileOutDoits: aStream].
	classOrder do:[:cls|
		cls fileOutDefinitionOn: aStream.
	].
	classes do:[:cls|
		cls fileOutMethodsOn: aStream.
		cls hasMetaclass ifTrue:[cls metaClass fileOutMethodsOn: aStream].
	].
	doitsMark = 3 ifTrue:[self fileOutDoits: aStream].