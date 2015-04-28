applyAttribute: anAttribute from: startPosition to: endPosition
	
	| splitStart splitEnd secondSpan |
	
	(style includes: anAttribute) ifTrue: [ ^ self ].

	startPosition span == self 
		ifTrue: [ splitStart := startPosition spanPosition ]
		ifFalse: [ splitStart := 0 ].
	
	endPosition span == self 
		ifTrue: [ splitEnd := endPosition spanPosition ]
		ifFalse: [ splitEnd := self size ].
		
	splitStart > 0 
		ifTrue: [ secondSpan := self splitAt: splitStart ]
		ifFalse: [ secondSpan := self ].
	
	splitEnd - splitStart < secondSpan size ifTrue: [
		secondSpan splitAt: (splitEnd - splitStart).
		"update the position"
		endPosition position: secondSpan endPosition.
	].
	
	secondSpan applyAttribute: anAttribute.
	