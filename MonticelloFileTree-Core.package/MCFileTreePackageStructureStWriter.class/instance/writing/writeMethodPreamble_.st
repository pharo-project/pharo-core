writeMethodPreamble: definition
	self chunkContents: [:str |
		stream bang.
		str nextPutAll: definition fullClassName;
			nextPutAll: ' methodsFor: ';
			nextPutAll: definition category asString printString
		]
