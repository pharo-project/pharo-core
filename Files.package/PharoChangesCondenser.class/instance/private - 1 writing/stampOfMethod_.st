stampOfMethod: aMethod
	"Optimized version of: aMethod stamp
	Reuse the same stream instead of reopening a new stream on each read"
	^ aMethod timeStampFromFile: (self sourceStreamOfMethod: aMethod).