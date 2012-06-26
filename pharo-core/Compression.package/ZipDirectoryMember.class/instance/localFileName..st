accessing
localFileName: aString

	| file |
	file := aString asFileReference.	
	super localFileName: (file name copyWith: $/).
	file exists ifFalse: [ ^ self ].
	self modifiedAt: file entry modificationTime.