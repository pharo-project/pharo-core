runClasses: aCollectionOfClasses
	aCollectionOfClasses 
		do: [ :class | 
			class gtExamples
				do: [ :example | self runExample: example ]
				displayingProgress: class name.
			(FileSystem workingDirectory / 'gtExamplesAllTestedClasses.txt') writeStream setToEnd; cr; nextPutAll: class name; flush; close ]
		displayingProgress: 'Running examples of ', aCollectionOfClasses size asString, ' classes ...'.