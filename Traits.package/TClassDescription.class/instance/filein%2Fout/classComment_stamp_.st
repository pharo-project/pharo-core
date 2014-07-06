classComment: aString stamp: aStamp
	"Store the comment, aString or Text or RemoteString, associated with the class we are organizing.  Empty string gets stored only if had a non-empty one before."

	| pointer header file oldCommentRemoteString oldComment oldStamp |
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
	
	(file := SourceFiles at: 2) ifNotNil: [
		file setToEnd; cr; nextPut: $!.	"directly"
		"Should be saying (file command: 'H3') for HTML, but ignoring it here"
		header := String streamContents: [:strm | strm nextPutAll: self name;
			nextPutAll: ' commentStamp: '.
			aStamp storeOn: strm.
			strm nextPutAll: ' prior: '; nextPutAll: pointer printString].
		file nextChunkPut: header].
	
	self organization 
		classComment: (RemoteString newString: aString onFileNumber: 2) 
		stamp: aStamp.
	
	SystemAnnouncer uniqueInstance 
		class: self 
		oldComment: oldComment 
		newComment: aString 
		oldStamp: oldStamp 
		newStamp: aStamp