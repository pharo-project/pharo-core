buildStreamFor: aCollection
	| stream |
	
	stream := WriteStream on: ''.

	stream
		nextPutAll: 'StartupPreferencesLoader default executeAtomicItems: {';
		nextPutAll: String crlf.
	aCollection do: [:item |
		stream 
			nextPut: Character tab;
			nextPutAll: item storeString;
			nextPut: $.;
			nextPutAll: String crlf ].
	stream
		nextPut: $};
		nextPut: $.;
		nextPutAll: String crlf;
		nextPutAll: String crlf.
	^ stream contents