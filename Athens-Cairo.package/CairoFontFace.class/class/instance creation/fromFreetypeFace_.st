fromFreetypeFace: aFace
	| handle cairoFace |
	
	handle := aFace handle nbUlongAt: 1.
	cairoFace := self primFtFace: handle loadFlags: (LoadNoHinting). 
	
	^ cairoFace initializeWithFreetypeFace: aFace