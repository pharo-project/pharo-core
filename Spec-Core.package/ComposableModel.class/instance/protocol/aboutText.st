aboutText

	^ aboutText value ifNil: [ aboutText value: self class comment ]