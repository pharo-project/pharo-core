i/o
loadAllFileNames
	| client |
	self displayProgress: 'Loading all file names from ', self description during: [
		(client := self httpClient)
			ifFail: [ :exception | self error: 'Could not access ', location, ': ', exception printString ];
			url: self locationWithTrailingSlash;
			queryAt: 'C' put: 'M;O=D';	"legacy that some servers maybe expect"
			get.
		self assertNonBinaryResponse: client response ].
	^ self parseFileNamesFromStream: client contents readStream