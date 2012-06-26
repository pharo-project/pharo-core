stream creation
new: newSize streamContents: blockWithArg

	| stream |
	stream := WriteStream on: (self new: newSize).
	blockWithArg value: stream.
	stream position = newSize
		ifTrue: [ ^stream originalContents ]
		ifFalse: [ ^stream contents ]