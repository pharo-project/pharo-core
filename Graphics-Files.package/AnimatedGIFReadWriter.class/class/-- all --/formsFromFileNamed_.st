formsFromFileNamed: fileName 
	| stream |
	stream := FileStream readOnlyFileNamed: fileName.
	^ self formsFromStream: stream