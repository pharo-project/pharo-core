filein/fileout
fileInMessage
	
	self selectedMessageName ifNil: [^self].
	Cursor read showWhile: [
		self selectedClassOrMetaClass fileInMethod: self selectedMessageName.
	].