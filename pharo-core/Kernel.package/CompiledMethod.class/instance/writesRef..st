scanning
writesRef: literalAssociation 
	"Answer whether the receiver stores into the argument."
	"eem 5/24/2008 Rewritten to no longer assume the compler uses the
	 most compact encoding available (for EncoderForLongFormV3 support)."
	| litIndex scanner |
	(litIndex := self indexOfLiteral: literalAssociation) = 0 ifTrue:
		[^false].
	litIndex := litIndex - 1.
	^(scanner := InstructionStream on: self) scanFor:
		[:b|
		(b = 129 or: [b = 130])
			ifTrue: [scanner followingByte - 192 = litIndex]
			ifFalse:
				[b = 132
				 and: [scanner followingByte >= 224
				 and: [scanner thirdByte = litIndex]]]]