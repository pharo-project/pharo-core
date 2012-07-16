initialize-release
newFaceFromFile: fileName index: anInteger
	[self primNewFaceFromFile: fileName fullName index: anInteger]
		on: FT2Error 
		do:[:e | self halt. ^self "need to do something here?"].
	self class register: self.