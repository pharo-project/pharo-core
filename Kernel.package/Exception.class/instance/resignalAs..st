handling
resignalAs: replacementException
	"Signal an alternative exception in place of the receiver."

	self resumeUnchecked: replacementException signal