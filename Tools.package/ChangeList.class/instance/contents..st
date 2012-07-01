viewing access
contents: aString
	listIndex = 0 ifTrue: [self changed: #flash. ^ false].
	lostMethodPointer ifNotNil: [^ self restoreDeletedMethod].
	self okToChange "means not dirty" ifFalse: ["is dirty"
		self inform: 'This is a view of a method on a file.\Please cancel your changes.  You may\accept, but only when the method is untouched.' withCRs.  ^ false].
		"Can't accept changes here.  Method text must be unchanged!"
	(changeList at: listIndex) fileIn.
	^ true