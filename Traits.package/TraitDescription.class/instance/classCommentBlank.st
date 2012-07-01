accessing comment
classCommentBlank

	| existingComment stream |
	existingComment := self instanceSide organization classComment.
	existingComment isEmpty
		ifFalse: [^existingComment].

	stream := (String new: 100) writeStream.
	stream
		nextPutAll: 'A';
		nextPutAll: (self name first isVowel ifTrue: ['n '] ifFalse: [' ']);
		nextPutAll: self name;
		nextPutAll: ' is xxxxxxxxx.'.
	stream cr.
	^stream contents