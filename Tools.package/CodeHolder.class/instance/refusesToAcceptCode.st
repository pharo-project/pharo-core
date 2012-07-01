misc
refusesToAcceptCode
	"Answer whether receiver, given its current contentsSymbol, could accept code happily if asked to"

	^ (#(byteCodes documentation) includes: self contentsSymbol)