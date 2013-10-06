fileOutPostscriptOn: stream
	"If the receiver has a postscript, put it out onto the stream.  "

	| aString |
	aString := self postscriptString.
	(aString notNil and: [ aString size > 0 ])
		ifTrue: [ 
			stream nextChunkPut: aString.	"surroundedBySingleQuotes"
			stream
				cr;
				cr ]