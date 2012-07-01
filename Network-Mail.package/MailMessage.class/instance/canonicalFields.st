fields
canonicalFields
	"Break long header fields and escape those containing high-ascii characters according to RFC2047"

	self rewriteFields:
		[ :fName :fValue | 
			(fName size + fValue size < 72 and: [fValue allSatisfy: [:c | c asciiValue <= 128]])
				ifFalse: [RFC2047MimeConverter mimeEncode: fName, ': ', fValue]]
		append: [].

