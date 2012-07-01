installing
installSourceFile: aReference
	"Install the previously loaded source file"

	| timeToMaterialize package timeToLoad bytes |
	aReference readStreamDo: [ :stream |
		FileStream stdout nextPutAll: 'Materializing package from file: ', aReference fullName; lf.
		bytes := (FileStream readOnlyFileNamed: aReference fullName) binary size asBytesDescription.
		timeToMaterialize := [package := FLPackageLoader new materializeFrom: (FileStream readOnlyFileNamed: aReference fullName) binary] timeToRun.
		FileStream stdout nextPutAll: 'Time to materialize: ', timeToMaterialize asString, ' miliseconds and occupied: ', bytes; lf.
		].
	FileStream stdout nextPutAll: 'Loading and initializing package from file: ', aReference fullName; lf.
	timeToLoad := [package load] timeToRun.
	FileStream stdout nextPutAll: 'Time to load: ', timeToLoad asString, 'miliseconds.'; lf.
	 
	