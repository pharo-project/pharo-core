initializeWithReport: aDependencyReport fileName: aString
	| fileRef |
	fileRef := aString asFileReference.
	self initializeWithReport: aDependencyReport stream: fileRef writeStream.
	graphFileReference := fileRef parent / (fileRef basenameWithoutExtension , '-graph.html').
	graphDataFileReference := (fileRef parent / (fileRef basenameWithoutExtension , '-graph-data.csv')).