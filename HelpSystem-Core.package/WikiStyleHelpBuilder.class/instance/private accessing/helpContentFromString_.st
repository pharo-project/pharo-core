helpContentFromString: aString 
	| start stop |
	start := aString findString: self helpStartMarker.
	start = 0 
		ifTrue: [start := 1]
		ifFalse: [start := start + self helpStartMarker size].
	stop := aString findString: self helpStopMarker startingAt: start.
	stop = 0 
		ifTrue: [stop := aString size]
		ifFalse: [stop := stop - 1].
	^  (aString copyFrom: start to: stop) trimBoth.
