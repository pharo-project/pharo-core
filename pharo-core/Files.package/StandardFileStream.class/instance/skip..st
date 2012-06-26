read, write, position
skip: n
	"Set the character position to n characters from the current position.
	Error if not enough characters left in the file.  1/31/96 sw"

	collection ifNotNil: [
		position < readLimit ifTrue: [
			| newPosition |
			((newPosition := position + n) >= 0 and: [ newPosition < readLimit ])
				ifTrue: [ 
					position := newPosition.
					^self ] ] ].
	self position: self position + n