platform specific
isDrive: fullName
	"Answer whether the given full name describes a 'drive', e.g., one of the root directories of a Win32 file system. We allow two forms here - the classic one where a drive is specified by a letter followed by a colon, e.g., 'C:', 'D:' etc. and the network share form starting with double-backslashes e.g., '\\server'."
	^ (fullName size = 2 and: [fullName first isLetter and: [fullName last = $:]])
		or: [(fullName beginsWith: '\\') and: [(fullName occurrencesOf: $\) = 2]]