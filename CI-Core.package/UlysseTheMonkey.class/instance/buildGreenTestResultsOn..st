printing
buildGreenTestResultsOn: stream
	|packages|
	
	"count the number of tests per package"
	packages := Dictionary new.
	testResult passed do: [ :testCase| | package |
		package := testCase class category.
		packages at: package put: (packages at: package ifAbsent: [ 0 ]) + 1 ].
	
	packages keys asArray sort do: [ :package|
		stream tab; nextPutAll: package; nextPutAll: ' ('; print: (packages at: package); nextPutAll: ')'; lf].
	
	stream lf.