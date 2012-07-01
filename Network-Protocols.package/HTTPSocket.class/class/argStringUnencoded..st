utilities
argStringUnencoded: args
	"Return the args in a long string, as encoded in a url"

	| argsString first |
	args isString ifTrue: ["sent in as a string, not a dictionary"
		^ (args first = $? ifTrue: [''] ifFalse: ['?']), args].
	argsString := String new writeStream.
	argsString nextPut: $?.
	first := true.
	args associationsDo: [ :assoc |
		assoc value do: [ :value |
			first ifTrue: [ first := false ] ifFalse: [ argsString nextPut: $& ].
			argsString nextPutAll: assoc key.
			argsString nextPut: $=.
			argsString nextPutAll: value. ] ].
	^ argsString contents
