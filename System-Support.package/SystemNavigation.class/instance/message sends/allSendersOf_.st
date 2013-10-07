allSendersOf: selector 
	|  senders special byte |
	senders := OrderedCollection new.
	special := Smalltalk 
				hasSpecialSelector: selector
				ifTrueSetByte: [ :b | byte := b ].
	self allBehaviorsDo: [ :behavior | 
		(behavior
			thoroughWhichSelectorsReferTo: selector
			special: special
			byte: byte) do: [ :sel| senders add: (self createMethodNamed: sel realParent: behavior) ] ].
	^ senders