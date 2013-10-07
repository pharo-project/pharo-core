allSendersOf: selector inClassCategory: category 
	| classes senders special byte |
	classes := self environment organization classesInCategory: category.
	senders := OrderedCollection new.
	classes ifEmpty: [ ^ senders ].
	special := Smalltalk
				hasSpecialSelector: selector
				ifTrueSetByte: [ :b | byte := b ].
	classes do: 
		[ :class | 
		self 
			addSelectorsReferingTo: selector
			in: class
			to: senders
			special: special
			byte: byte ].
	^ senders