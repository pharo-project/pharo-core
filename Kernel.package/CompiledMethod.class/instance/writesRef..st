scanning
writesRef: literalAssociation 
	"Answer whether the receiver stores into the argument."
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