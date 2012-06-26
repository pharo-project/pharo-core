fileIn/Out
selectorsToFileOutCategory: aSymbol
	^ ((aSymbol asString = ClassOrganizer allCategory)
				ifTrue: [ self organization allMethodSelectors ]
				ifFalse: [ self organization listAtCategoryNamed: aSymbol ]) select: [:sel |
					self includesLocalSelector: sel ]