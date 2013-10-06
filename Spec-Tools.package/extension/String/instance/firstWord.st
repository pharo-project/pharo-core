firstWord
	| start end |
	start := self findFirst: [ :chr| chr isSeparator not ].
	end := self findFirst: [ :chr| chr isSeparator ].
	end isZero
		ifTrue: [^ self ].
	
	^ self copyFrom: start to: end