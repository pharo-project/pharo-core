enumerating
gather: aBlock
	^ Array streamContents:
		[:stream |
		self do: [:ea | stream nextPutAll: (aBlock value: ea)]]