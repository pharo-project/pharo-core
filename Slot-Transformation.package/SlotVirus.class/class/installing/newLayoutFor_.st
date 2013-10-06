newLayoutFor: aClass

	|aLayout|
	aLayout := self basicLayoutFor: aClass.
		
	"fill in the instvars without triggering any slots"
	^ aLayout
		instVarNamed: #host put: aClass;
		instVarNamed: #compactClassIndex put: aClass indexIfCompact;
		yourself