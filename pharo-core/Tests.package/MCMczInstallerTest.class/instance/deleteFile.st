as yet unclassified
deleteFile
	(FileDirectory default fileExists: self fileName)
		ifTrue: [FileDirectory default deleteFileNamed: self fileName]