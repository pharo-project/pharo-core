accessing
split: aString
	| result lastPosition |

	result := OrderedCollection new.
	stream := aString readStream.
	lastPosition := stream position.
	[ self searchStream: stream ] whileTrue:
		[ result add: (aString copyFrom: lastPosition+1 to: (self subBeginning: 1) first).
		[lastPosition < stream position] assertWithDescription: 'Regex cannot match null string'.
		lastPosition := stream position ].
	result add: (aString copyFrom: lastPosition+1 to: aString size).
	^ result