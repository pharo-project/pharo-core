as yet unclassified
lineToX:  nXEnd y: nYEnd
		<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
		^self nbCall: #(BOOL LineTo(HDC self, int nXEnd, int nYEnd)) 
			module: #gdi32
