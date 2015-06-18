putSource: sourceStr class: class category: catName
	withStamp: changeStamp inFile: fileIndex priorMethod: priorMethod
	"Deprecated."
	
	^ self putSource: sourceStr inFile: fileIndex withPreamble:
			[:file |
			class printCategoryChunk: catName on: file
				withStamp: changeStamp priorMethod: priorMethod.
			file cr]