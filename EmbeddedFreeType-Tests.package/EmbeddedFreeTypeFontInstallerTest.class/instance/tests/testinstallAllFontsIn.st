testinstallAllFontsIn

	| provider fileInfos families |
	provider := self currentProviderOrError 
		updateEmbeddedFreeTypeFonts;
		updateAvailableFontFamilies;
		yourself.
	fileInfos := provider fileInfosByFamilyAndGroup.
	self assert: fileInfos keys size > 1.
	self assert: (fileInfos includesKey: 'Open Sans').
	self assert: (fileInfos includesKey: 'Source Code Pro').
	families := provider families.
	self assert: (families includesKey: 'Open Sans').
	self assert: (families includesKey: 'Source Code Pro').
