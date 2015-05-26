goferVersionFrom: aVersionReference
	^ self dictionary detect: [ :version | version info name = aVersionReference name ]