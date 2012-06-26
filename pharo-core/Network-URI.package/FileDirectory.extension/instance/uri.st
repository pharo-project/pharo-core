*network-URI
uri
	"Convert my path into a file:// type url. For odd characters use %20 notation."

	| list |
	list := self pathParts.
	^(String streamContents: [:strm |
		strm nextPutAll: 'file:'.
		list do: [:each | strm nextPut: $/; nextPutAll: each encodeForHTTP].
		strm nextPut: $/]) asURI