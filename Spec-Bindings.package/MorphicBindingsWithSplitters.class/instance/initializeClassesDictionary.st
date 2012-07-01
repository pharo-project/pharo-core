initialization
initializeClassesDictionary

	^ IdentityDictionary new
		at: #Panel put: #PanelMorphWithSplitters;
		yourself