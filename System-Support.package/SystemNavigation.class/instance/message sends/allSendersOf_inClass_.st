allSendersOf: selector inClass: aClass 
	| senders special byte |
	senders := WeakOrderedCollection Collection new.
	special := Smalltalk hasSpecialSelector: selector ifTrueSetByte: [:b | byte := b ].
	self 
		addSelectorsReferingTo: selector
		in: aClass
		to: senders
		special: special
		byte: byte.
	^senders