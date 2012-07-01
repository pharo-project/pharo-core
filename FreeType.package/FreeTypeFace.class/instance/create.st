validation
create
	"create me in the FT2Plugin. This gets my handle, and loads the fields"
	
	fileContentsExternalMemory isNil
		ifTrue:[		
			self
				newFaceFromFile: (self class fontPathFor: filename)
				index: index]
		ifFalse:[
			self newFaceFromExternalMemory: fileContentsExternalMemory index: index].
	self loadFields
