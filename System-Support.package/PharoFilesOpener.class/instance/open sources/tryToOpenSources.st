tryToOpenSources
	| sources |
	sources := self openOrDownloadSources.
	^ (sources isNil or: [ sources atEnd ])
		ifTrue: [ 
			self informCannotLocateSources.
			nil ]
		ifFalse: [ sources ]