writesField: varIndex
	"Answer whether the receiver stores into the instance variable indexed by the argument."

	| varIndexCode scanner |
	self isQuick ifTrue: [^false].
	varIndexCode := varIndex - 1.
	^(scanner := InstructionStream on: self) scanFor:
		[:b|
		b >= 96
		and: [b <= 103
				ifTrue: [b - 96 = varIndexCode]
				ifFalse:
					[(b = 129 or: [b = 130])
						ifTrue: [scanner followingByte = varIndexCode and: [varIndexCode <= 63]]
						ifFalse:
							[b = 132
							 and: [(scanner followingByte between: 160 and: 223)
							 and: [scanner thirdByte = varIndexCode]]]]]]