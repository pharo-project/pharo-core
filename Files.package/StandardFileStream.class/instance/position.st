read, write, position
position
	"Return the receiver's current file position.  2/12/96 sw"

	collection ifNotNil: [
		position < readLimit ifTrue: [
			^(self primGetPosition: fileID) - readLimit + position ] ].
	^self primGetPosition: fileID