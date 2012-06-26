instance creation
rows: rows columns: columns element: element
	^self rows: rows columns: columns
		contents: ((Array new: rows*columns) atAllPut: element; yourself)