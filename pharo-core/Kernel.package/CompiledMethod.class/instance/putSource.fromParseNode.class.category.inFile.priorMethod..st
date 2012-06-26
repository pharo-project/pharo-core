source code management
putSource: sourceStr fromParseNode: methodNode class: class category: catName
	inFile: fileIndex priorMethod: priorMethod

	^ self putSource: sourceStr fromParseNode: methodNode inFile: fileIndex withPreamble:
			[:file | class printCategoryChunk: catName on: file priorMethod: priorMethod.
			file cr]