querying
lookup: aString ifAbsent: aBlock
	^ (self bindingOf: aString) ifNil: [ owner lookup: aString ifAbsent: aBlock ]