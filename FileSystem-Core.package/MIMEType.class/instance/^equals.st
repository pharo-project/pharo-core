comparing
= anotherObject
	anotherObject class == self class
		ifFalse: [^false].
	^self main = anotherObject main
		and: [self sub = anotherObject sub]