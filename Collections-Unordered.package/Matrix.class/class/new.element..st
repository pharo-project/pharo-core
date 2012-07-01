instance creation
new: dim element: element
	"Answer a dim*dim matrix with all elements set to element.
	 Is this an abuse of #new:?  The argument is NOT a size."

	^self rows: dim columns: dim element: element