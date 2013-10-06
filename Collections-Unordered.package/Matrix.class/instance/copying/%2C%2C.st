,, aMatrix
	"Answer a new matrix having the same number of columns as the receiver and aMatrix,
	 its rows being the rows of the receiver followed by the rows of aMatrix."

	[ncols = aMatrix columnCount] assert.
	^self class rows: nrows + aMatrix rowCount columns: ncols
		contents: contents , aMatrix privateContents
