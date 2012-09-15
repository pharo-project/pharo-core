printing
buildTestsReportOn: stream
	
	(testErrors isEmptyOrNil and: [ testFailures isEmptyOrNil])
		ifTrue: [ ^ self ].
	
	stream nextPutAll: 'Test Results:'; lf.
	stream nextPutAll: '-------------'; lf.
			
	stream nextPutAll: 'Passed: '; print: testResult passed size; lf.
	self buildGreenTestResultsOn: stream.
	
	testErrors ifNotEmpty: [:collection |
		stream nextPutAll: 'Errors: '; print: collection size; lf.
		collection do: [:e | stream tab print: e; lf ]].
	
	stream lf.
		
	testFailures ifNotEmpty: [:collection |
		stream nextPutAll: 'Failures: '; print: collection size; lf.
		collection do: [:e | stream tab print: e; lf ]]