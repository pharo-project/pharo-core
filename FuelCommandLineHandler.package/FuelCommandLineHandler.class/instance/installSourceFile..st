installing
installSourceFile: aReference
	"Install the previously loaded source file"

	| timeToMaterialize package timeToLoad bytes |
	aReference readStreamDo: [ :stream |
		FileStream stdout nextPutAll: 'Materializing package from file: ', aReference fullName; lf.
		timeToMaterialize := [package := FLPackageLoader new materializeFrom: stream] timeToRun.
		FileStream stdout nextPutAll: 'Time to materialize: ', timeToMaterialize asString, ' miliseconds and occupied: ', stream size asBytesDescription; lf.
		].
	FileStream stdout nextPutAll: 'Loading and initializing package from file: ', aReference fullName; lf.
	timeToLoad := [package load] timeToRun.
	FileStream stdout nextPutAll: 'Time to load: ', timeToLoad asString, 'miliseconds.'; lf.
	 
	