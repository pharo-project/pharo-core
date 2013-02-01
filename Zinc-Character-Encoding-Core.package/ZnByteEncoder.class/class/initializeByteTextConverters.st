private
initializeByteTextConverters
	ByteTextConverters := Dictionary new.
	self mappingToIdentifiers
		keysAndValuesDo: [ :mapping :identifiers | 
			| tables |
			tables := self tablesFromSpec: (self perform: mapping).
			identifiers do: [ :each | ByteTextConverters at: each put: tables ] ]