slotDefinitionString
	"Answer a string that contains an executable description of my Slots"

	^self slots ifNotEmpty: [self slots asString] ifEmpty: ['{}']