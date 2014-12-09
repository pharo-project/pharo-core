linePosition: pos 
	"Compute new position, located at new position in the same line as receiver.
	If given position larger than line length, answer the position at the end of line.
	The line position is a number of moves right from the beginning of line.
	"
	| sz linespan |
	
	sz := pos.
	(span isLineSeparator and: [ spanPosition = 1 ]) 
		ifTrue: [ linespan := span next ]
		ifFalse: [ linespan := span lineStartSpan ].

	[ sz  > linespan size ] whileTrue: [
		sz := sz - linespan size.
		linespan := linespan next.
		
		( linespan isLineSeparator or: [linespan isAtEnd ] ) ifTrue: [
			"reached end of line, set position to last valid position in current line"
			^ TxTextPosition span: linespan prev spanPosition: linespan size.
			]
	]. 
	^ TxTextPosition span: linespan spanPosition: sz
