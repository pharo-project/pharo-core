source code management
putSource: sourceStr fromParseNode: methodNode class: class category: catName
	withStamp: changeStamp inFile: fileIndex priorMethod: priorMethod

	^ self putSource: sourceStr fromParseNode: methodNode inFile: fileIndex withPreamble:
			[:file |
			class printCategoryChunk: catName on: file
				withStamp: changeStamp priorMethod: priorMethod.
			file cr]