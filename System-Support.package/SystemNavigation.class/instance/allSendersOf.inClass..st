message sends
allSendersOf: selector inClass: aClass 
	| sortedSenders special byte |
	sortedSenders := SortedCollection new.
	special := Smalltalk hasSpecialSelector: selector ifTrueSetByte: [:b | byte := b ].
	self 
		addSelectorsReferingTo: selector
		in: aClass
		to: sortedSenders
		special: special
		byte: byte.
	^sortedSenders