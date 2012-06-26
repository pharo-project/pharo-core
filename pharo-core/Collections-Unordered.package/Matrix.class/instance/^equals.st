comparing
= aMatrix
	^aMatrix class == self class and: [
	 aMatrix rowCount = nrows and: [
	 aMatrix columnCount = ncols and: [
	 aMatrix privateContents = contents]]]