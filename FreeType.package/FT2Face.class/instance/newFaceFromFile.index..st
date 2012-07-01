initialize-release
newFaceFromFile: fileName index: anInteger
	[self primNewFaceFromFile: fileName index: anInteger]
		on: FT2Error 
		do:[:e | ^self "need to do something here?"].
	self class register: self.