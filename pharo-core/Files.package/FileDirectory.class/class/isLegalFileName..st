name utilities
isLegalFileName: fullName
	"Return true if the given string is a legal file name."

	^ DefaultDirectory isLegalFileName: (self localNameFor: fullName)
