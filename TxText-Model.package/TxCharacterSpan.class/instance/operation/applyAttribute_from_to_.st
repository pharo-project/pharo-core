applyAttribute: anAttribute from: startPosition to: endPosition
	
	"Apply attribute to receiver.
	
	If start position not points to receiver, it means that span head should be covered by attribute,
	if endPosition not points to receiver , it means that span tail should be covered by attribute.
	
	Else, they define a split point.

	
	4 cases: 
		- span already has given attribute (so do nothing )
		- start/end covers entire span (just add attribute)
		- split on 2 spans if start or end is at end of span 
		- split on 3 spans both start and end in the middle or span
	"

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
	