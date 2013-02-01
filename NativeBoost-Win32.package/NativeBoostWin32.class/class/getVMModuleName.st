accessing
getVMModuleName

	| len str |	
	str := ByteString new: 1000.
	len := self primGetModuleFileName: str with: 1000.	
	^ str first: len.