localProcessReadOnlyCopy
	"Answer a read only copy of self which is local to this process. Optimization: traditioanlly the file was opened and closed for each small query."

	^ ProcessAndSessionLocalSourcesFileArray value ifNil: [ 
		| newCopy |
		newCopy := self readOnlyCopy.
		ProcessAndSessionLocalSourcesFileArray value: newCopy.
		newCopy ]
