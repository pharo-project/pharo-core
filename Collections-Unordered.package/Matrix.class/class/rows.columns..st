instance creation
rows: rows columns: columns
	^self rows: rows columns: columns contents: (Array new: rows*columns)