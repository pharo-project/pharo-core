*FuelTests
duringTestCompileSilently: code classified: aCategory

	^ Author 
		useAuthor: 'TestsAuthor'
		during: [ self compileSilently: code classified: aCategory ]