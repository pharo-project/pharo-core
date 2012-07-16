validation
create
	"create me in the FT2Plugin. This gets my handle, and loads the fields"
	
	fileContentsExternalMemory isNil
		ifTrue: [		
			self
				newFaceFromFile: filename asFileReference
				index: index ]
		ifFalse: [
			self 
				newFaceFromExternalMemory: fileContentsExternalMemory 
				index: index ].
	self loadFields
