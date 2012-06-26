name utilities
fileName: fileName extension: fileExtension
	| extension |
	extension := FileDirectory dot , fileExtension.
	^(fileName endsWith: extension)
		ifTrue: [fileName]
		ifFalse: [fileName , extension].