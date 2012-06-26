message sends
allSendersOf: selector 
	|  sortedSenders special byte |
	sortedSenders := SortedCollection new.
	special := Smalltalk 
				hasSpecialSelector: selector
				ifTrueSetByte: [ :b | byte := b ].
	self allBehaviorsDo: [ :behavior | 
		(behavior
			thoroughWhichSelectorsReferTo: selector
			special: special
			byte: byte) do: [ :sel| sortedSenders add: (self createMethodNamed: sel realParent: behavior) ] ].
	^ sortedSenders