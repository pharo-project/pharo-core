scanning
readsField: varIndex 
	"Answer whether the receiver loads the instance variable indexed by the 
	 argument."
	"eem 5/24/2008 Rewritten to no longer assume the compiler uses the
	 most compact encoding available (for EncoderForLongFormV3 support)."
	| varIndexCode scanner |
	varIndexCode := varIndex - 1.
	self isReturnField ifTrue: [^self returnField = varIndexCode].
	^(scanner := InstructionStream on: self) scanFor:
		[:b|
		b < 16
			ifTrue: [b = varIndexCode]
			ifFalse:
				[b = 128
					ifTrue: [scanner followingByte = varIndexCode and: [varIndexCode <= 63]]
					ifFalse:
						[b = 132
						 and: [(scanner followingByte between: 64 and: 95)
						 and: [scanner thirdByte = varIndexCode]]]]]