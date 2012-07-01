*FuelTests
duringTestCompileSilently: code

	^ Author 
		useAuthor: 'TestsAuthor'
		during: [ self compileSilently: code classified: '' ]