dumpBytes
	^ String streamContents: [:str |
		self bytes do: [:b | str nextPutAll: (b printStringBase: 16); space ]
		]
