instance creation
new: dim
	"Answer a dim*dim matrix.  Is this an abuse of #new:?  The argument is NOT a size."
	^self rows: dim columns: dim