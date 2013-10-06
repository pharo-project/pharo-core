copyPreamble: preamble from: aStream at: pos 
	"Look for a changeStamp for this method by peeking backward.
	Write a method preamble, with that stamp if found."
	| terminator last50 stamp i |
	terminator := $!.

	"Look back to find stamp in old preamble, such as...
	Polygon methodsFor: 'private' stamp: 'di 6/25/97 21:42' prior: 34957598! "
	aStream position: pos.
	aStream backChunk.	"to beginning of method"
	last50 := aStream backChunk.	"to get preamble"
	aStream position: pos.
	stamp := String new.
	(i := last50 
		findLastOccurrenceOfString: 'stamp:'
		startingAt: 1) > 0 ifTrue: 
		[ stamp := (last50 
			copyFrom: i + 8
			to: last50 size) copyUpTo: $' ].

	"Write the new preamble, with old stamp if any."
	self
		cr;
		nextPut: terminator.
	self nextChunkPut: (String streamContents: 
			[ :strm | 
			strm nextPutAll: preamble.
			stamp size > 0 ifTrue: 
				[ strm
					nextPutAll: ' stamp: ';
					print: stamp ] ]).
	self cr