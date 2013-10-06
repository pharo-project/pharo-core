check: aString
	| input output errors |
	input := aString readStream.
	output := WriteStream on: (String new: 128).
	errors := OrderedCollection new.
	[ input atEnd ] whileFalse: [
		| start stop |
		start := input position + 1.
		[ input atEnd not and: [ input peek isLetter or: [ input peek = $' ] ] ]
			whileTrue: [ output nextPut: input next ].
		stop := input position.
		[ input atEnd not and: [ input peek isLetter not ] ]
			whileTrue: [ input next ].
		(start < stop and: [ (self validate: output contents) not ])
			ifTrue: [ errors addLast: (start to: stop) ].
		output reset ].
	^ errors