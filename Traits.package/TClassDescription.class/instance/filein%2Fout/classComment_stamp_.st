classComment: aString stamp: aStamp
	"Store the comment, aString or Text or RemoteString, associated with the class we are organizing.  Empty string gets stored only if had a non-empty one before."

	| pointer header oldCommentRemoteString oldComment oldStamp preamble |
	oldComment := self organization classComment.
	oldStamp := self organization commentStamp.

	(aString isKindOf: RemoteString) ifTrue: [
		SystemAnnouncer uniqueInstance 
			class: self 
			oldComment: oldComment 
			newComment: aString string 
			oldStamp: oldStamp 
			newStamp: aStamp.
		^ self organization classComment: aString stamp: aStamp].

	oldCommentRemoteString := self organization commentRemoteString.
	(aString size = 0) & (oldCommentRemoteString isNil) ifTrue: [^ self organization classComment: nil].
		"never had a class comment, no need to write empty string out"

	pointer := oldCommentRemoteString 
			ifNil: [0] 
			ifNotNil: [oldCommentRemoteString sourcePointer].
	
	preamble := String streamContents: [ :file |
		file cr; nextPut: $!.
		header := String streamContents: [:strm | 
			strm 
				nextPutAll: self name;
				nextPutAll: ' commentStamp: '.
			aStamp storeOn: strm.
			strm nextPutAll: ' prior: '; nextPutAll: pointer printString ].
		file nextChunkPut: header; cr ].

	SourceFiles
		writeSource: aString
		preamble: preamble
		onSuccess: [ :newSourcePointer | 
			| position |
			position := SourceFiles filePositionFromSourcePointer: newSourcePointer.
			self organization 
				classComment: (RemoteString newFileNumber: 2 position: position) 
				stamp: aStamp.
			]
		onFail: [ "ignore" ].
	
	SystemAnnouncer uniqueInstance 
		class: self 
		oldComment: oldComment 
		newComment: aString 
		oldStamp: oldStamp 
		newStamp: aStamp